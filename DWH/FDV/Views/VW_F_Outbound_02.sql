









CREATE VIEW [FDV].[VW_F_Outbound_02]
AS
--	1 Orders Shipped
SELECT			
	CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)		AS DateKey
	, ISNULL(CASE WHEN OD.DSG_SHIP_VIA = 'FD01' AND OD.ORDER_TYPE <> 'DS' THEN 'FD01' ELSE OD.ORDER_TYPE END,'-1') AS Order_Type_Code
	, ISNULL(FA.FACILITY_ALIAS_ID,'-1')				AS Facility_ID
	, ISNULL(OD.D_COUNTRY_CODE,'-1')				AS Country_Code
	, ISNULL(OD.DSG_SHIP_VIA,'-1')					AS Transporter_Ship_Via_Code
	, ISNULL(CO.Order_Shipment_ID,'-1')				AS Shipment_ID
	, ISNULL(OD.TC_ORDER_ID,'-1')					AS Order_ID
	, '-1'											AS OLPN_ID
	, '-1'											AS SKU_Code1
	, '-1'											AS SKU_Code2
	, '-1'											AS Lot_Code
	, ISNULL(OD.DWH_CUSTOMER_ID,'-1')				AS Customer_ID
	, '-1'											AS FAM_Prod_ID
	, '-1'											AS Container_ID
	, '-1'											AS OF_Complaints_ID
	, 1												AS Number_Of_Orders_Shipped
	, CO.Order_IFS_Order_Lines						AS Number_Of_IFS_Order_Lines_Shipped
	, CO.Order_Manh_Order_Lines						AS Number_Of_WMS_Order_Lines_Shipped
	, 0											 	AS Number_Of_Parcels_Shipped
	, 0											    AS Number_Of_Units_Shipped
    , 0											    AS Number_Of_Units_Cancelled
	, 0												AS Quantity_Of_Units_Cancelled
	, 0											    AS Number_Of_Orders_Incomplete
	, 0     							            AS Number_Of_Unavailable_Units_Cancelled
	, 0												AS Number_Of_Orders_Not_Shipped_on_time
	, 0												AS Number_Of_Picklines
	, 0												AS Number_Of_Complaints
		
FROM			MANH.ORDERS AS OD
INNER JOIN		EXTRA.ORDERS_INFO CO
ON				CO.TC_Order_ID = OD.TC_ORDER_ID
AND				CO.ActInd = 'Y'
LEFT JOIN		MANH.FACILITY_ALIAS	AS FA 
ON				FA.FACILITY_ALIAS_ID = OD.BILL_FACILITY_ALIAS_ID 
AND				FA.ActInd = 'Y'
WHERE			OD.DO_STATUS = '190'
AND				OD.ActInd = 'Y'
AND				OD.ACTUAL_SHIPPED_DTTM >= '20180101'  --DATEADD(YEAR,-2,GETDATE())--'20190801' 



UNION ALL

--	2 Parcels Shipped
SELECT			  
	CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)	AS DateKey
	, ISNULL(CASE WHEN OD.DSG_SHIP_VIA = 'FD01' AND OD.ORDER_TYPE <> 'DS' THEN 'FD01' ELSE OD.ORDER_TYPE END,'-1')					AS Order_Type_Code
	, ISNULL(FA.FACILITY_ALIAS_ID,'-1')				AS Facility_ID
	, ISNULL(OD.D_COUNTRY_CODE,'-1')				AS Country_Code
	, ISNULL(OD.DSG_SHIP_VIA,'-1')					AS Transporter_Ship_Via_Code
	, ISNULL(LP.TC_SHIPMENT_ID,'-1')				AS Shipment_ID
	, ISNULL(LP.TC_ORDER_ID,'-1')					AS Order_ID
	, ISNULL(LP.TC_LPN_ID,'-1')						AS OLPN_ID
	, '-1'											AS SKU_Code1
	, '-1'											AS SKU_Code2
	, '-1'											AS Lot_Code
	, ISNULL(OD.DWH_CUSTOMER_ID,'-1')				AS Customer_ID
	, '-1'											AS FAM_Prod_ID
	, ISNULL(T.CNTR_TYPE_ID, '-1')					AS Container_ID
	, '-1'											AS OF_Complaints_ID
	, 0												AS Number_Of_Orders_Shipped
	, 0												AS Number_Of_IFS_Order_Lines_Shipped
	, 0												AS Number_Of_WMS_Order_Lines_Shipped
	, 1											 	AS Number_Of_Parcels_Shipped
	, 0											    AS Number_Of_Units_Shipped
    , 0											    AS Number_Of_Units_Cancelled
	, 0												AS Quantity_Of_Units_Cancelled
	, 0											    AS Number_Of_Orders_Incomplete
	, 0     							            AS Number_Of_Unavailable_Units_Cancelled
	, 0												AS Number_Of_Orders_Not_Shipped_on_time
	, 0												AS Number_Of_Picklines
	, 0												AS Number_Of_Complaints
	
	
FROM			MANH.LPN_OUTBOUND AS LP
INNER JOIN		MANH.ORDERS	AS OD 
ON				OD.ORDER_ID = LP.ORDER_ID 
AND				OD.ActInd = 'Y' 
LEFT JOIN		MANH.FACILITY_ALIAS AS FA 
ON				FA.FACILITY_ALIAS_ID = OD.BILL_FACILITY_ALIAS_ID 
AND				FA.ActInd = 'Y'
LEFT JOIN		[MANH].[CNTR_TYPE] T
ON				T.CNTR_TYPE = LP.CONTAINER_TYPE AND CNTR_SIZE = LP.CONTAINER_SIZE
AND				T.ActInd = 'Y' 		
WHERE			OD.DO_STATUS = '190' 
AND				LP.ActInd = 'Y'
AND				OD.ACTUAL_SHIPPED_DTTM >= '20180101' -- DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) - 2, 0)


UNION ALL

-- 3 Units Shipped
SELECT			
	CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)		AS DateKey
	, ISNULL(CASE WHEN OD.DSG_SHIP_VIA = 'FD01' AND OD.ORDER_TYPE <> 'DS' THEN 'FD01' ELSE OD.ORDER_TYPE END,'-1')					AS Order_Type_Code
	, ISNULL(FA.FACILITY_ALIAS_ID,'-1')				AS Facility_ID
	, ISNULL(OD.D_COUNTRY_CODE,'-1')				AS Country_Code
	, ISNULL(OD.DSG_SHIP_VIA,'-1')					AS Transporter_Ship_Via_Code
	, ISNULL(LP.TC_SHIPMENT_ID,'-1')				AS Shipment_ID
	, ISNULL(LP.TC_ORDER_ID,'-1')					AS Order_ID
	, ISNULL(LP.TC_LPN_ID,'-1')						AS OLPN_ID
	, ISNULL(CONCAT(INVP.CONTRACT,LD.ITEM_ID),'-1')	AS SKU_Code1
	, ISNULL(CONCAT(INVP.CONTRACT,LD.ITEM_ID),'-1')	AS SKU_Code2
	, ISNULL(LD.BATCH_NBR,'-1')						AS Lot_Code
	, ISNULL(OD.DWH_CUSTOMER_ID,'-1')				AS Customer_ID
	, ISNULL(INVP.PART_PRODUCT_FAMILY,'-1')			AS FAM_Prod_ID
	, ISNULL(T.CNTR_TYPE_ID, '-1')					AS Container_ID
		,'-1'									AS OF_Complaints_ID
	, 0												AS Number_Of_Orders_Shipped
	, 0												AS Number_Of_IFS_Order_Lines_Shipped
	, 0												AS Number_Of_WMS_Order_Lines_Shipped
	, 0											 	AS Number_Of_Parcels_Shipped
	, LD.SIZE_VALUE								    AS Number_Of_Units_Shipped
    , 0											    AS Number_Of_Units_Cancelled
	, 0												AS Quantity_Of_Units_Cancelled
	, 0											    AS Number_Of_Orders_Incomplete
	, 0     							            AS Number_Of_Unavailable_Units_Cancelled
	, 0												AS Number_Of_Orders_Not_Shipped_on_time
	, 0												AS Number_Of_Picklines
	, 0												AS Number_Of_Complaints


	
	
FROM			MANH.LPN_DETAIL	AS LD
INNER JOIN		MANH.LPN_OUTBOUND AS LP 
ON				LP.LPN_ID = LD.LPN_ID
AND				LP.LPN_FACILITY_STATUS <> 99
AND				LP.ActInd = 'Y'
INNER JOIN		MANH.ORDERS AS OD 
ON				OD.ORDER_ID = LP.ORDER_ID 
LEFT JOIN		[MANH].[CNTR_TYPE] T
ON				T.CNTR_TYPE = LP.CONTAINER_TYPE AND CNTR_SIZE = LP.CONTAINER_SIZE
AND				T.ActInd = 'Y' 		
AND				OD.ActInd = 'Y'
INNER JOIN		MANH.ITEM_CBO IC
ON				IC.ITEM_ID = LD.ITEM_ID
AND				IC.ActInd = 'Y'
INNER JOIN		(SELECT
					OL.ORDER_ID
					, OL.ITEM_NAME
					, MAX(OL.CUSTOMER_ITEM) AS CUSTOMER_ITEM
				 FROM		MANH.ORDER_LINE_ITEM OL
				 WHERE 		OL.ActInd = 'Y' 
				 AND		OL.IS_CANCELLED = 0
				 GROUP BY
					  OL.ORDER_ID
					, OL.ITEM_NAME
) OL ON			OL.ORDER_ID = OD.ORDER_ID

AND				OL.ITEM_NAME = IC.ITEM_NAME 
INNER JOIN		IFS.INVENTORY_PART INVP
ON				INVP.PART_NO=IC.ITEM_NAME
AND				INVP.ActInd='Y'
AND				INVP.CONTRACT='FD01'
AND				INVP.ActInd='Y'
LEFT JOIN		MANH.FACILITY_ALIAS	AS FA 
ON				FA.FACILITY_ALIAS_ID = OD.BILL_FACILITY_ALIAS_ID 
AND				FA.ActInd = 'Y'
WHERE			OD.DO_STATUS = '190' 
AND				LD.ActInd = 'Y'
AND				OD.ACTUAL_SHIPPED_DTTM >= '20180101'  --DATEADD(YEAR,-2,GETDATE())-- '20190801' 


UNION ALL
--	4 Units Cancelled in IFS + Quantity

SELECT			
	CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)		AS DateKey
	, ISNULL(CASE WHEN OD.DSG_SHIP_VIA = 'FD01' AND OD.ORDER_TYPE <> 'DS' THEN 'FD01' ELSE OD.ORDER_TYPE END,'-1')	AS Order_Type_Code
	, ISNULL(FA.FACILITY_ALIAS_ID,'-1')				AS Facility_ID
	, ISNULL(OD.D_COUNTRY_CODE,'-1')				AS Country_Code
	, '-1'											AS Transporter_Ship_Via_Code
	, '-1'											AS Shipment_ID
	, ISNULL(OD.TC_ORDER_ID,'-1')					AS Order_ID
	, '-1'											AS OLPN_ID
	,  ISNULL(concat(INVP.CONTRACT,CB.ITEM_ID),'-1')AS SKU_Code1
	,  ISNULL(concat(INVP.CONTRACT,CB.ITEM_ID),'-1')AS SKU_Code2
	, '-1'											AS Lot_Code
	, ISNULL(OD.DWH_CUSTOMER_ID,'-1')				AS Customer_ID
	, ISNULL(INVP.PART_PRODUCT_FAMILY,'-1')			AS FAM_Prod_ID
	,'-1'											AS Container_ID
	,'-1'											AS OF_Complaints_ID
	, 0												AS Number_Of_Orders_Shipped
	, 0												AS Number_Of_IFS_Order_Lines_Shipped
	, 0												AS Number_Of_WMS_Order_Lines_Shipped
	, 0												AS Number_Of_Parcels_Shipped
	, 0												AS Number_Of_Units_Shipped
    , 1											    AS Number_Of_Units_Cancelled
	, OL.BUY_QTY_DUE								AS Quantity_Of_Units_Cancelled
	, 0											    AS Number_Of_Orders_Incomplete
	, 0     							            AS Number_Of_Unavailable_Units_Cancelled
	, 0												AS Number_Of_Orders_Not_Shipped_on_time
	, 0												AS Number_Of_Picklines
	, 0												AS Number_Of_Complaints
	
	

FROM		    MANH.ORDERS AS OD
 
INNER JOIN		[$(ForeverData02)].DM.D_Order AS VWO
ON				OD.TC_ORDER_ID	= VWO.Order_ID
AND				VWO.Order_Type='OF'
INNER JOIN		(SELECT [ORDER_NO]
				,[CATALOG_NO] ITEM_NAME
				,BUY_QTY_DUE
		        FROM [IFS].[CUSTOMER_ORDER_LINE]
				where 1=1
				and PLANNED_SHIP_DATE > '20180101'
				and STATE='Cancelled'
				and ActInd='Y'
				and ORDER_NO like 'F%'
				
) OL 
ON			   OL.ORDER_NO = VWO.Order_IFS_Order_ID
INNER JOIN      MANH.ITEM_CBO CB
ON				OL.ITEM_NAME=CB.ITEM_NAME
AND				CB.ActInd='Y'
 
INNER JOIN		IFS.INVENTORY_PART INVP
ON				INVP.PART_NO=OL.ITEM_NAME
AND				INVP.CONTRACT='FD01'
AND				INVP.ActInd='Y'
LEFT JOIN		MANH.FACILITY_ALIAS	AS FA 
ON				FA.FACILITY_ALIAS_ID = OD.BILL_FACILITY_ALIAS_ID 
AND				FA.ActInd = 'Y'
WHERE  1=1			
AND				OD.ActInd = 'Y'
AND				OD.ACTUAL_SHIPPED_DTTM >= '20180101' --DATEADD(YEAR,-2,GETDATE())


UNION ALL

-- 5 Orders Incomplete
SELECT			
	CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)		AS DateKey
	, ISNULL(CASE WHEN OD.DSG_SHIP_VIA = 'FD01' AND OD.ORDER_TYPE <> 'DS' THEN 'FD01' ELSE OD.ORDER_TYPE END,'-1')	AS Order_Type_Code
	, ISNULL(FA.FACILITY_ALIAS_ID,'-1')				AS Facility_ID
	, ISNULL(OD.D_COUNTRY_CODE,'-1')				AS Country_Code
	, ISNULL(OD.DSG_SHIP_VIA,'-1')					AS Transporter_Ship_Via_Code
	, ISNULL(CO.Order_Shipment_ID,'-1')				AS Shipment_ID
	, ISNULL(OD.TC_ORDER_ID,'-1')					AS Order_ID
	, '-1'											AS OLPN_ID
	, '-1'											AS SKU_Code1
	, '-1'											AS SKU_Code2
	, '-1'											AS Lot_Code
	, ISNULL(OD.DWH_CUSTOMER_ID,'-1')				AS Customer_ID
	,'-1'											AS FAM_Prod_ID
	,'-1'											AS Container_ID
	, '-1'											AS OF_Complaints_ID
	, 0												AS Number_Of_Orders_Shipped
	, 0												AS Number_Of_IFS_Order_Lines_Shipped
	, 0												AS Number_Of_WMS_Order_Lines_Shipped
	, 0												AS Number_Of_Parcels_Shipped
	, 0												AS Number_Of_Units_Shipped
	, 0											    AS Number_Of_Units_Cancelled
	, 0												AS Quantity_Of_Units_Cancelled
	, COUNT(distinct(OD.TC_ORDER_ID))			    AS Number_Of_Orders_Incomplete
	, 0     							            AS Number_OF_Units_cancelled_first_time
	, 0												AS Number_Of_Orders_Not_Shipped_on_time
	, 0												AS Number_Of_Picklines
	, 0												AS Number_Of_Complaints
	
	

FROM		MANH.ORDERS AS OD
INNER JOIN		EXTRA.ORDERS_INFO CO
ON				CO.TC_Order_ID = OD.TC_ORDER_ID
AND				CO.ActInd = 'Y'
 
JOIN        MANH.ORDER_LINE_ITEM LI
on OD.ORDER_ID=LI.ORDER_ID
and LI.ActInd='Y'

INNER JOIN		(SELECT
					OL.ORDER_ID
					, OL.ITEM_NAME
					, MAX(OL.CUSTOMER_ITEM) AS CUSTOMER_ITEM
				 FROM		MANH.ORDER_LINE_ITEM OL
				 WHERE 		OL.ActInd = 'Y' 
				 AND		OL.IS_CANCELLED = 1
				 GROUP BY
					  OL.ORDER_ID
					, OL.ITEM_NAME
) OL ON			OL.ORDER_ID = OD.ORDER_ID
AND				OL.ITEM_NAME = LI.ITEM_NAME 

LEFT JOIN		MANH.FACILITY_ALIAS	AS FA 
ON				FA.FACILITY_ALIAS_ID = OD.BILL_FACILITY_ALIAS_ID 
AND				FA.ActInd = 'Y'
WHERE  1=1			

AND				OD.ActInd = 'Y'
AND				OD.ACTUAL_SHIPPED_DTTM > '20180101' --DATEADD(YEAR,-2,GETDATE())--'20190801' 


group by CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)	
      , ISNULL(CASE WHEN OD.DSG_SHIP_VIA = 'FD01' AND OD.ORDER_TYPE <> 'DS' THEN 'FD01' ELSE OD.ORDER_TYPE END,'-1')	
	  , ISNULL(FA.FACILITY_ALIAS_ID,'-1')				
	  , ISNULL(OD.D_COUNTRY_CODE,'-1')				
	  , ISNULL(OD.DSG_SHIP_VIA,'-1')
	  , ISNULL(CO.Order_Shipment_ID,'-1')					
	  , ISNULL(OD.TC_ORDER_ID,'-1')					
	  , ISNULL(OD.DWH_CUSTOMER_ID,'-1')				
	  		
UNION ALL

-- 6 Number Items cancelled  in Manhattan
SELECT			
	CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)		AS DateKey
	, ISNULL(CASE WHEN OD.DSG_SHIP_VIA = 'FD01' AND OD.ORDER_TYPE <> 'DS' THEN 'FD01' ELSE OD.ORDER_TYPE END,'-1')	AS Order_Type_Code
	, ISNULL(FA.FACILITY_ALIAS_ID,'-1')				AS Facility_ID
	, ISNULL(OD.D_COUNTRY_CODE,'-1')				AS Country_Code
	, ISNULL(OD.DSG_SHIP_VIA,'-1')					AS Transporter_Ship_Via_Code
	, ISNULL(CO.Order_Shipment_ID,'-1')				AS Shipment_ID
	, ISNULL(OD.TC_ORDER_ID,'-1')					AS Order_ID
	, '-1'											AS OLPN_ID
	, ISNULL(CONCAT(INVP.CONTRACT,CB.ITEM_ID),'-1')	AS SKU_Code1
	, ISNULL(CONCAT(INVP.CONTRACT,CB.ITEM_ID),'-1')	AS SKU_Code2
	, '-1'											AS Lot_Code
	, ISNULL(OD.DWH_CUSTOMER_ID,'-1')				AS Customer_ID
	, ISNULL(INVP.PART_PRODUCT_FAMILY,'-1')			AS FAM_Prod_ID
	,'-1'											AS Container_ID
		, '-1'										AS OF_Complaints_ID
	, 0												AS Number_Of_Orders_Shipped
	, 0												AS Number_Of_IFS_Order_Lines_Shipped
	, 0												AS Number_Of_WMS_Order_Lines_Shipped
	, 0												AS Number_Of_Parcels_Shipped
	, 0												AS Number_Of_Units_Shipped
	, 0											    AS Number_Of_Units_Cancelled
	, 0												AS Quantity_Of_Units_Cancelled
	, 0											    AS Number_Of_Orders_Incomplete
	, 1        							            AS Number_Of_Unavailable_Units_Cancelled
	, 0												AS Number_Of_Orders_Not_Shipped_on_time
	, 0												AS Number_Of_Picklines
	, 0												AS Number_Of_Complaints
	
	

FROM		MANH.ORDERS AS OD
INNER JOIN		EXTRA.ORDERS_INFO CO
ON				CO.TC_Order_ID = OD.TC_ORDER_ID
AND				CO.ActInd = 'Y'
 
JOIN        MANH.ORDER_LINE_ITEM LI
on OD.ORDER_ID=LI.ORDER_ID
and LI.ActInd='Y'

INNER JOIN		(SELECT
                    OL.ORDER_QTY
					,OL.ORDER_ID
					, OL.ITEM_NAME
					, MAX(OL.CUSTOMER_ITEM) AS CUSTOMER_ITEM
				 FROM		MANH.ORDER_LINE_ITEM OL
				 WHERE 		OL.ActInd = 'Y' 
				 AND		OL.IS_CANCELLED = 1
				 GROUP BY
					  OL.ORDER_ID
					, OL.ITEM_NAME
					, OL.ORDER_QTY
) OL ON			OL.ORDER_ID = OD.ORDER_ID
AND				OL.ITEM_NAME = LI.ITEM_NAME 
INNER JOIN      MANH.ITEM_CBO CB
ON				OL.ITEM_NAME=CB.ITEM_NAME
AND				CB.ActInd='Y'
INNER JOIN		IFS.INVENTORY_PART INVP
ON				INVP.PART_NO=LI.ITEM_NAME
AND				INVP.CONTRACT='FD01'
AND				INVP.ActInd='Y'



LEFT JOIN		MANH.FACILITY_ALIAS	AS FA 
ON				FA.FACILITY_ALIAS_ID = OD.BILL_FACILITY_ALIAS_ID 
AND				FA.ActInd = 'Y'
WHERE  1=1			

AND				OD.ActInd = 'Y'
AND				OD.ACTUAL_SHIPPED_DTTM > '20180101' --DATEADD(YEAR,-2,GETDATE())--'20190801' 




UNION ALL
-- 7 Orders Not Shipped on time

SELECT			
	CONVERT(CHAR, VWO.Order_Planned_Ship_Date, 112)	AS DateKey
	, ISNULL(CASE WHEN OD.DSG_SHIP_VIA = 'FD01' AND OD.ORDER_TYPE <> 'DS' THEN 'FD01' ELSE OD.ORDER_TYPE END,'-1')					AS Order_Type_Code
	, ISNULL(FA.FACILITY_ALIAS_ID,'-1')				AS Facility_ID
	, ISNULL(OD.D_COUNTRY_CODE,'-1')				AS Country_Code
	, ISNULL(OD.DSG_SHIP_VIA,'-1')					AS Transporter_Ship_Via_Code
	, ISNULL(CO.Order_Shipment_ID,'-1')				AS Shipment_ID
	, ISNULL(OD.TC_ORDER_ID,'-1')					AS Order_ID
	, '-1'											AS OLPN_ID
	, '-1'											AS SKU_Code1
	, '-1'											AS SKU_Code2
	, '-1'											AS Lot_Code
	, ISNULL(OD.DWH_CUSTOMER_ID,'-1')				AS Customer_ID
	, '-1'											AS FAM_Prod_ID
	, '-1'											AS Container_ID
	, '-1'										AS OF_Complaints_ID
	, 0												AS Number_Of_Orders_Shipped
	, 0												AS Number_Of_IFS_Order_Lines_Shipped
	, 0												AS Number_Of_WMS_Order_Lines_Shipped
	, 0												AS Number_Of_Parcels_Shipped
	, 0												AS Number_Of_Units_Shipped
	, 0											    AS Number_Of_Units_Cancelled
	, 0												AS Quantity_Of_Units_Cancelled
	, 0											    AS Number_Of_Orders_Incomplete
	, 0       							            AS Number_Of_Unavailable_Units_Cancelled
	, 1 											AS Number_Of_Orders_Not_Shipped_on_time
	, 0												AS Number_Of_Picklines
    , 0												AS Number_Of_Complaints
FROM			MANH.ORDERS AS OD 
INNER JOIN		EXTRA.ORDERS_INFO CO
ON				CO.TC_Order_ID = OD.TC_ORDER_ID
AND				CO.ActInd = 'Y'
INNER JOIN		[$(ForeverData02)].DM.D_Order AS VWO
ON				OD.TC_ORDER_ID	= VWO.Order_ID
AND				VWO.Order_Days_Too_Late > 0
AND				VWO.Order_Planned_Ship_Date IS NOT NULL
LEFT JOIN		MANH.FACILITY_ALIAS	AS FA 
ON				FA.FACILITY_ALIAS_ID = OD.BILL_FACILITY_ALIAS_ID 
AND				FA.ActInd = 'Y'
WHERE			OD.ActInd = 'Y'
AND				OD.CREATED_DTTM >= '20180101'  --DATEADD(YEAR,-2,GETDATE()) --'20190801' 


UNION ALL
-- 8 PickLines OF

SELECT			
	CONVERT(CHAR, PT.CREATE_DATE_TIME, 112)		    AS DateKey
	, ISNULL(CASE WHEN OD.Order_Ship_Via_Code = 'FD01' AND OD.Order_Type <> 'DS' THEN 'FD01' ELSE OD.Order_Type END,'-1')					AS Order_Type_Code
	, ISNULL(OD.Order_Facility_Code,'-1')			AS Facility_ID
	, ISNULL(OD.Order_Country_Code,'-1')			AS Country_Code
	, ISNULL(OD.Order_Ship_Via_Code,'-1')			AS Transporter_Ship_Via_Code
	, ISNULL(OD.Order_Shipment_ID,'-1')			    AS Shipment_ID
	, ISNULL(OD.Order_ID,'-1')					    AS Order_ID
	, ISNULL(PT.CNTR_NBR,'-1')						AS OLPN_ID
	, ISNULL(CONCAT(INVP.CONTRACT,IC.ITEM_ID),'-1')	AS SKU_Code1
	, ISNULL(CONCAT(INVP.CONTRACT,IC.ITEM_ID),'-1')	AS SKU_Code2
	, '-1'											AS Lot_Code
	, ISNULL(OD.Order_Customer_ID,'-1')				AS Customer_ID
	, ISNULL(INVP.PART_PRODUCT_FAMILY,'-1')			AS FAM_Prod_ID
	, '-1'											AS Container_ID
	, '-1'											AS OF_Complaints_ID
	, 0												AS Number_Of_Orders_Shipped
	, 0												AS Number_Of_IFS_Order_Lines_Shipped
	, 0												AS Number_Of_WMS_Order_Lines_Shipped
	, 0												AS Number_Of_Parcels_Shipped
	, 0												AS Number_Of_Units_Shipped
	, 0											    AS Number_Of_Units_Cancelled
	, 0												AS Quantity_Of_Units_Cancelled
	, 0											    AS Number_Of_Orders_Incomplete
	, 0       							            AS Number_Of_Unavailable_Units_Cancelled
	, 0											    AS Number_Of_Orders_Not_Shipped_on_time
	, 1												AS Number_Of_Picklines
	, 0												AS Number_Of_Complaints
	
FROM		[$(ForeverData02)].DM.D_Order AS OD
INNER JOIN	MANH.PROD_TRKG_TRAN AS PT
ON			PT.TC_ORDER_ID = OD.Order_ID
AND			PT.MENU_OPTN_NAME IN ('PackCD', 'RF QA incomplete','Pack Cubed Directed','RF Zone  Picking RTN')
AND         PT.MODULE_NAME = 'Packing'
LEFT JOIN	MANH.ITEM_CBO IC
ON			IC.ITEM_ID = PT.ITEM_ID
AND			IC.ActInd = 'Y'
LEFT JOIN   IFS.INVENTORY_PART INVP
ON			IC.ITEM_NAME=INVP.PART_NO
AND			INVP.CONTRACT='FD01'
AND			INVP.ActInd='Y'
WHERE		PT.CREATE_DATE_TIME>= '20180101'  --DATEADD(YEAR,-2,GETDATE())

UNION all
-- 9 Complaints

SELECT			 
	CONVERT(CHAR, QI.Complaint_Datum, 112)		AS DateKey
	, ISNULL(CASE WHEN OD.Order_Ship_Via_Code = 'FD01' AND OD.Order_Type <> 'DS' THEN 'FD01' ELSE OD.Order_Type END,'-1')					AS Order_Type_Code
	, ISNULL(OD.Order_Facility_Code,'-1')			AS Facility_ID
	, ISNULL(OD.Order_Country_Code,'-1')			AS Country_Code
	, ISNULL(OD.Order_Ship_Via_Code,'-1')			AS Transporter_Ship_Via_Code
	, ISNULL(LP.TC_SHIPMENT_ID,'-1')				AS Shipment_ID
	, ISNULL(QI.Complaint_Order,'-1')				AS Order_ID
	, ISNULL(QI.Complaint_Olpn,'-1')				AS OLPN_ID
	, ISNULL(I1.ITEM_ID,'-1')						AS SKU_Code1
	, ISNULL(I2.ITEM_ID,'-1')						AS SKU_Code2
	, ISNULL(QI.Complaint_ItemOrdered,'-1')	AS Lot_Code
	, ISNULL(OD.Order_Customer_ID,'-1')				AS Customer_ID	
	--, '-1'											AS OF_Issues_ID
	, '-1'											AS FAM_Prod_ID
	, '-1'											AS Container_ID
	, ISNULL(QI.Complaint_ID,'-1')				AS OF_Complaints_ID
	--, 'Complaints'								AS Outbound_Type
	, 0												AS Number_Of_Orders_Shipped
	, 0												AS Number_Of_IFS_Order_Lines_Shipped
	, 0												AS Number_Of_WMS_Order_Lines_Shipped
	, 0												AS Number_Of_Parcels_Shipped
	, 0												AS Number_Of_Units_Shipped
	, 0												AS Number_Of_Units_Cancelled
	, 0												AS Quantity_Of_Units_Cancelled
	, 0											    AS Number_Of_Orders_Incomplete
	, 0     							            AS Number_Of_Unavailable_Units_Cancelled
	, 0											    AS Number_Of_Orders_Not_Shipped_on_time
	, 0												AS Number_Of_Picklines
	, 1												AS Number_Of_Complaints
	


FROM		WEB.Complaint AS QI
LEFT JOIN	[$(ForeverData01)].DM.D_Order AS OD
ON			OD.Order_ID = Complaint_Order
			AND QI.ActInd = 'Y'
LEFT JOIN	MANH.LPN_OUTBOUND AS LP
ON			LP.TC_LPN_ID = QI.Complaint_Olpn
AND			LP.ActInd = 'Y'
LEFT JOIN	MANH.ITEM_CBO I1
ON			I1.ITEM_NAME = QI.Complaint_ItemOrderedReported
AND			I1.ActInd = 'Y'
LEFT JOIN	MANH.ITEM_CBO I2
ON			I2.ITEM_NAME = QI.Complaint_ItemReceivedReported
AND			I2.ActInd = 'Y'
WHERE		QI.Complaint_Datum>= '20180101'  --DATEADD(YEAR,-2,GETDATE())