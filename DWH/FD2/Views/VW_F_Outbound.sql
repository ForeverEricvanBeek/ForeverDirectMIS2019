




CREATE VIEW [FD2].[VW_F_Outbound]
AS
--	1 Orders Shipped
SELECT			
	CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)		AS DateKey
	, ISNULL(CASE WHEN OD.DSG_SHIP_VIA = 'FD01' AND OD.ORDER_TYPE <> 'DS' THEN 'FD01' ELSE OD.ORDER_TYPE END,'-1') AS Order_Type
	, ISNULL(FA.FACILITY_ALIAS_ID,'-1')				AS Facility_ID
	, ISNULL(OD.D_COUNTRY_CODE,'-1')				AS Country_Code
	, ISNULL(OD.DSG_SHIP_VIA,'-1')					AS Transporter_Ship_Via_Code
	, ISNULL(CO.Order_Shipment_ID,'-1')				AS Shipment_ID
	, ISNULL(OD.TC_ORDER_ID,'-1')					AS Order_ID
	, '-1'											AS OLPN_ID
	, '-1'											AS SKU_Code
	, '-1'											AS Lot_Code
	, ISNULL(OD.DWH_CUSTOMER_ID,'-1')				AS Customer_ID
	, '-1'											AS FAM_Prod_ID
	, '-1'											AS Container_ID
	, 1												AS Number_Of_Orders_Shipped
	, CO.Order_IFS_Order_Lines						AS Number_Of_IFS_Order_Lines_Shipped
	, CO.Order_Manh_Order_Lines						AS Number_Of_WMS_Order_Lines_Shipped
	, 0												AS Number_Of_Parcels_Shipped
	, 0												AS Number_Of_Units_Shipped
	, 0												AS Number_Of_Units_Cancelled
	, 0												AS Number_Of_IFS_Order_Lines_Cancelled
	, 0												AS Number_Of_Orders_Not_Shipped_on_time
	, 0												AS Number_Of_Picklines
		
FROM			MANH.ORDERS AS OD
INNER JOIN		EXTRA.ORDERS_INFO CO
ON				CO.TC_Order_ID = OD.TC_ORDER_ID
AND				CO.ActInd = 'Y'
LEFT JOIN		MANH.FACILITY_ALIAS	AS FA 
ON				FA.FACILITY_ALIAS_ID = OD.BILL_FACILITY_ALIAS_ID 
AND				FA.ActInd = 'Y'
WHERE			OD.DO_STATUS = '190'
AND				OD.ActInd = 'Y'
AND				OD.ACTUAL_SHIPPED_DTTM >= '2019-09-01' --DATEADD(YEAR,-2,GETDATE())--'20190801' 



UNION ALL

--	2 Parcels Shipped
SELECT			  
	CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)	AS DateKey
	, ISNULL(CASE WHEN OD.DSG_SHIP_VIA = 'FD01' AND OD.ORDER_TYPE <> 'DS' THEN 'FD01' ELSE OD.ORDER_TYPE END,'-1')					AS Order_Type
	, ISNULL(FA.FACILITY_ALIAS_ID,'-1')				AS Facility_ID
	, ISNULL(OD.D_COUNTRY_CODE,'-1')				AS Country_Code
	, ISNULL(OD.DSG_SHIP_VIA,'-1')					AS Transporter_Ship_Via_Code
	, ISNULL(LP.TC_SHIPMENT_ID,'-1')				AS Shipment_ID
	, ISNULL(LP.TC_ORDER_ID,'-1')					AS Order_ID
	, ISNULL(LP.TC_LPN_ID,'-1')						AS OLPN_ID
	, '-1'											AS SKU_Code
	, '-1'											AS Lot_Code
	, ISNULL(OD.DWH_CUSTOMER_ID,'-1')				AS Customer_ID
	, '-1'											AS FAM_Prod_ID
	, ISNULL(T.CNTR_TYPE_ID, '-1')					AS Container_ID
	, 0												AS Number_Of_Orders_Shipped
	, 0												AS Number_Of_IFS_Order_Lines_Shipped
	, 0												AS Number_Of_WMS_Order_Lines_Shipped
	, 1												AS Number_Of_Parcels_Shipped
	, 0												AS Number_Of_Units_Shipped
	, 0												AS Number_Of_Units_Cancelled
	, 0												AS Number_Of_IFS_Order_Lines_Cancelled
	, 0												AS Number_Of_Orders_Not_Shipped_on_time
	, 0												AS Number_Of_Picklines
	
	
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
AND				OD.ACTUAL_SHIPPED_DTTM >='2019-09-01' --DATEADD(YEAR,-2,GETDATE())--'20190801' 

UNION ALL

-- 3 Units Shipped
SELECT			
	CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)		AS DateKey
	, ISNULL(CASE WHEN OD.DSG_SHIP_VIA = 'FD01' AND OD.ORDER_TYPE <> 'DS' THEN 'FD01' ELSE OD.ORDER_TYPE END,'-1')					AS Order_Type
	, ISNULL(FA.FACILITY_ALIAS_ID,'-1')				AS Facility_ID
	, ISNULL(OD.D_COUNTRY_CODE,'-1')				AS Country_Code
	, ISNULL(OD.DSG_SHIP_VIA,'-1')					AS Transporter_Ship_Via_Code
	, ISNULL(LP.TC_SHIPMENT_ID,'-1')				AS Shipment_ID
	, ISNULL(LP.TC_ORDER_ID,'-1')					AS Order_ID
	, ISNULL(LP.TC_LPN_ID,'-1')						AS OLPN_ID
	, ISNULL(CONCAT(INVP.CONTRACT,LD.ITEM_ID),'-1')	AS SKU_Code
	, ISNULL(LD.BATCH_NBR,'-1')						AS Lot_Code
	, ISNULL(OD.DWH_CUSTOMER_ID,'-1')				AS Customer_ID
	, ISNULL(INVP.PART_PRODUCT_FAMILY,'-1')			AS FAM_Prod_ID
	, ISNULL(T.CNTR_TYPE_ID, '-1')					AS Container_ID
	, 0												AS Number_Of_Orders_Shipped
	, 0												AS Number_Of_IFS_Order_Lines_Shipped
	, 0												AS Number_Of_WMS_Order_Lines_Shipped
	, 0												AS Number_Of_Parcels_Shipped
	, LD.SIZE_VALUE									AS Number_Of_Units_Shipped
	, 0												AS Number_Of_Units_Cancelled
	, 0												AS Number_Of_IFS_Order_Lines_Cancelled
	, 0												AS Number_Of_Orders_Not_Shipped_on_time
	, 0												AS Number_Of_Picklines
	
	
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
AND				OD.ACTUAL_SHIPPED_DTTM >= '2019-09-01' --DATEADD(YEAR,-2,GETDATE())--'20190801' 


UNION ALL
-- 4 Units Cancelled en Order Lines Cancelled
SELECT			
	CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)		AS DateKey
	, ISNULL(CASE WHEN OD.DSG_SHIP_VIA = 'FD01' AND OD.ORDER_TYPE <> 'DS' THEN 'FD01' ELSE OD.ORDER_TYPE END,'-1')	AS Order_Type
	, ISNULL(FA.FACILITY_ALIAS_ID,'-1')				AS Facility_ID
	, ISNULL(OD.D_COUNTRY_CODE,'-1')				AS Country_Code
	, ISNULL(OD.DSG_SHIP_VIA,'-1')					AS Transporter_Ship_Via_Code
	, ISNULL(LP.TC_SHIPMENT_ID,'-1')				AS Shipment_ID
	, ISNULL(LP.TC_ORDER_ID,'-1')					AS Order_ID
	, ISNULL(LP.TC_LPN_ID,'-1')						AS OLPN_ID
	, ISNULL(CONCAT(INVP.CONTRACT,LD.ITEM_ID),'-1')	AS SKU_Code
	, ISNULL(LD.BATCH_NBR,'-1')						AS Lot_Code
	, ISNULL(OD.DWH_CUSTOMER_ID,'-1')				AS Customer_ID
	, ISNULL(INVP.PART_PRODUCT_FAMILY,'-1')			AS FAM_Prod_ID
	, ISNULL(T.CNTR_TYPE_ID, '-1')					AS Container_ID
	, 0												AS Number_Of_Orders_Shipped
	, 0												AS Number_Of_IFS_Order_Lines_Shipped
	, 0												AS Number_Of_WMS_Order_Lines_Shipped
	, 0												AS Number_Of_Parcels_Shipped
	, 0												AS Number_Of_Units_Shipped
	, LD.SIZE_VALUE									AS Number_Of_Units_Cancelled
	, 1												AS Number_Of_IFS_Order_Lines_Cancelled
	, 0												AS Number_Of_Orders_Not_Shipped_on_time
	, 0												AS Number_Of_Picklines
	
	
FROM			MANH.LPN_DETAIL	AS LD
INNER JOIN		MANH.LPN_OUTBOUND AS LP 
ON				LP.LPN_ID = LD.LPN_ID
AND				LP.LPN_FACILITY_STATUS <> 99
AND				LP.ActInd = 'Y'
INNER JOIN		MANH.ORDERS AS OD 
ON				OD.ORDER_ID = LP.ORDER_ID 
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
				 AND		OL.IS_CANCELLED = 1
				 GROUP BY
					  OL.ORDER_ID
					, OL.ITEM_NAME
) OL ON			OL.ORDER_ID = OD.ORDER_ID
AND				OL.ITEM_NAME = IC.ITEM_NAME 
INNER JOIN		IFS.INVENTORY_PART INVP
ON				INVP.PART_NO=IC.ITEM_NAME
AND				INVP.CONTRACT='FD01'
AND				INVP.ActInd='Y'
LEFT JOIN		MANH.FACILITY_ALIAS	AS FA 
ON				FA.FACILITY_ALIAS_ID = OD.BILL_FACILITY_ALIAS_ID 
AND				FA.ActInd = 'Y'
LEFT JOIN		[MANH].[CNTR_TYPE] T
ON				T.CNTR_TYPE = LP.CONTAINER_TYPE AND CNTR_SIZE = LP.CONTAINER_SIZE
AND				T.ActInd = 'Y' 		
WHERE			OD.DO_STATUS = '190' 
AND				LD.ActInd = 'Y'
AND				OD.ACTUAL_SHIPPED_DTTM >= '2019-09-01' --DATEADD(YEAR,-2,GETDATE())--'20190801' 

UNION ALL
-- 5 Orders Not Shipped on time

SELECT			
	CONVERT(CHAR, VWO.Order_Planned_Ship_Date, 112)	AS DateKey
	, ISNULL(CASE WHEN OD.DSG_SHIP_VIA = 'FD01' AND OD.ORDER_TYPE <> 'DS' THEN 'FD01' ELSE OD.ORDER_TYPE END,'-1')					AS Order_Type
	, ISNULL(FA.FACILITY_ALIAS_ID,'-1')				AS Facility_ID
	, ISNULL(OD.D_COUNTRY_CODE,'-1')				AS Country_Code
	, ISNULL(OD.DSG_SHIP_VIA,'-1')					AS Transporter_Ship_Via_Code
	, ISNULL(CO.Order_Shipment_ID,'-1')				AS Shipment_ID
	, ISNULL(OD.TC_ORDER_ID,'-1')					AS Order_ID
	, '-1'											AS OLPN_ID
	, '-1'											AS SKU_Code
	, '-1'											AS Lot_Code
	, ISNULL(OD.DWH_CUSTOMER_ID,'-1')				AS Customer_ID
	, '-1'											AS FAM_Prod_ID
	, '-1'											AS Container_ID
	, 0												AS Number_Of_Orders_Shipped
	, 0												AS Number_Of_IFS_Order_Lines_Shipped
	, 0												AS Number_Of_WMS_Order_Lines_Shipped
	, 0												AS Number_Of_Parcels_Shipped
	, 0												AS Number_Of_Units_Shipped
	, 0												AS Number_Of_Units_Cancelled
	, 0												AS Number_Of_IFS_Order_Lines_Cancelled
	, 1												AS Number_Of_Orders_Not_Shipped_on_time
	, 0												AS Number_Of_Picklines
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
AND				OD.CREATED_DTTM >= '2019-09-01' --DATEADD(YEAR,-2,GETDATE())--'20190801' 

UNION ALL
-- 6 PickLines OF

SELECT			
	CONVERT(CHAR, PT.CREATE_DATE_TIME, 112)		    AS DateKey
	, ISNULL(CASE WHEN OD.Order_Ship_Via_Code = 'FD01' AND OD.Order_Type <> 'DS' THEN 'FD01' ELSE OD.Order_Type END,'-1')					AS Order_Type
	, ISNULL(OD.Order_Facility_Code,'-1')			AS Facility_ID
	, ISNULL(OD.Order_Country_Code,'-1')			AS Country_Code
	, ISNULL(OD.Order_Ship_Via_Code,'-1')			AS Transporter_Ship_Via_Code
	, ISNULL(OD.Order_Shipment_ID,'-1')			    AS Shipment_ID
	, ISNULL(OD.Order_ID,'-1')					    AS Order_ID
	, ISNULL(PT.CNTR_NBR,'-1')						AS OLPN_ID
	, ISNULL(CONCAT(INVP.CONTRACT,IC.ITEM_ID),'-1')	AS SKU_Code
	, '-1'											AS Lot_Code
	, ISNULL(OD.Order_Customer_ID,'-1')				AS Customer_ID
	, ISNULL(INVP.PART_PRODUCT_FAMILY,'-1')			AS FAM_Prod_ID
	, '-1'											AS Container_ID
	, 0												AS Number_of_Orders_Shipped
	, 0												AS Number_Of_IFS_Order_Lines_Shipped
	, 0												AS Number_Of_WMS_Order_Lines_Shipped
	, 0												AS Number_Of_Parcels_Shipped
	, 0												AS Number_Of_Units_Shipped
	, 0												AS Number_Of_Units_Cancelled
	, 0												AS Number_Of_IFS_Order_Lines_Cancelled
	, 0												AS Number_Of_Orders_Not_Shipped_on_time
	, 1												AS Number_Of_Picklines
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
WHERE		PT.CREATE_DATE_TIME>='2019-09-01' --DATEADD(YEAR,-2,GETDATE())--'20190801' 