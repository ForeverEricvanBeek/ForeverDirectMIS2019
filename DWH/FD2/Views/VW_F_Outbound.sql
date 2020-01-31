


CREATE VIEW [FD2].[VW_F_Outbound]
AS
--	1 Orders Shipped
SELECT			
	CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)		AS DateKey
	, ISNULL(CASE WHEN OD.DSG_SHIP_VIA = 'FD01' AND OD.ORDER_TYPE <> 'DS' THEN 'FD01' ELSE OD.ORDER_TYPE END,'-1') AS Order_Type_Code
	, ISNULL(OI.Order_Facility,'-1')				AS Facility_ID
	, ISNULL(OD.D_COUNTRY_CODE,'-1')				AS Country_Code
	, ISNULL(OD.DSG_SHIP_VIA,'-1')					AS Transporter_Ship_Via_Code
	, ISNULL(OI.Order_Shipment_ID,'-1')				AS Shipment_ID
	, ISNULL(OD.TC_ORDER_ID,'-1')					AS Order_ID
	, '-1'											AS OLPN_ID
	, '-1'											AS SKU_Code1
	, '-1'											AS SKU_Code2
	, ISNULL(OI.Order_Contract,'-1')				AS Contract_Contract -- Added contract
	, '-1'											AS Pickers_ID --Added Picker
	, '-1'											AS Lot_Code
	, ISNULL(OD.DWH_CUSTOMER_ID,'-1')				AS Customer_ID
	, '-1'											AS Product_Family_ID
	, '-1'											AS Container_ID
	, '-1'										    AS Complaint_ID
	, 1												AS #Orders_Shipped
	, OI.Order_IFS_Order_Lines						AS #IFS_Order_Lines_Shipped
	, OI.Order_Manh_Order_Lines						AS #WMS_Order_Lines_Shipped
	, 0											 	AS #Parcels_Shipped
	, 0											    AS #Units_Shipped
    , 0											    AS #Units_Cancelled
	, 0											    AS #Orders_Incomplete
	, 0     							            AS #Unavailable_Units_Cancelled
	, 0												AS #Orders_Not_Shipped_On_Time
	, 0												AS #Picklines
	, 0												AS #Complaints	
FROM			MANH.ORDERS OD
INNER JOIN		EXTRA.ORDER_INFO OI
ON				OI.TC_Order_ID = OD.TC_ORDER_ID
AND				OI.ActInd = 'Y'
LEFT JOIN		MANH.FACILITY_ALIAS	FA 
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
	, ISNULL(OI.Order_Facility,'-1')				AS Facility_ID
	, ISNULL(OD.D_COUNTRY_CODE,'-1')				AS Country_Code
	, ISNULL(OD.DSG_SHIP_VIA,'-1')					AS Transporter_Ship_Via_Code
	, ISNULL(LP.TC_SHIPMENT_ID,'-1')				AS Shipment_ID
	, ISNULL(LP.TC_ORDER_ID,'-1')					AS Order_ID
	, ISNULL(LP.TC_LPN_ID,'-1')						AS OLPN_ID
	, '-1'											AS SKU_Code1
	, '-1'											AS SKU_Code2
	, ISNULL(OI.Order_Contract,'-1')				AS Contract_Contract -- Added contract
	, '-1'											AS Pickers_ID --Added Picker
	, '-1'											AS Lot_Code
	, ISNULL(OD.DWH_CUSTOMER_ID,'-1')				AS Customer_ID
	, '-1'											AS Product_Family_ID
	, ISNULL(T.CNTR_TYPE_ID, '-1')					AS Container_ID
	, '-1'										    AS Complaint_ID
	, 0												AS #Orders_Shipped
	, 0												AS #IFS_Order_Lines_Shipped
	, 0												AS #WMS_Order_Lines_Shipped
	, 1											 	AS #Parcels_Shipped
	, 0											    AS #Units_Shipped
    , 0											    AS #Units_Cancelled
	, 0											    AS #Orders_Incomplete
	, 0     							            AS #Unavailable_Units_Cancelled
	, 0												AS #Orders_Not_Shipped_On_Time
	, 0												AS #Picklines
	, 0												AS #Complaints
FROM			MANH.LPN_OUTBOUND LP
INNER JOIN		MANH.ORDERS	OD 
ON				OD.ORDER_ID = LP.ORDER_ID 
AND				OD.ActInd = 'Y'
AND				OD.DO_STATUS = '190'
AND				OD.ACTUAL_SHIPPED_DTTM >= '20180101'
INNER JOIN		EXTRA.ORDER_INFO OI
ON				OI.TC_Order_ID = OD.TC_ORDER_ID
AND				OI.ActInd = 'Y'
LEFT JOIN		MANH.CNTR_TYPE T
ON				T.CNTR_TYPE = LP.CONTAINER_TYPE 
AND				T.CNTR_SIZE = LP.CONTAINER_SIZE
AND				T.ActInd = 'Y' 		
WHERE			LP.ActInd = 'Y'

UNION ALL

-- 3 Units Shipped
SELECT			
	CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)		AS DateKey
	, ISNULL(CASE WHEN OD.DSG_SHIP_VIA = 'FD01' AND OD.ORDER_TYPE <> 'DS' THEN 'FD01' ELSE OD.ORDER_TYPE END,'-1')					AS Order_Type_Code
	, ISNULL(OI.Order_Facility,'-1')				AS Facility_ID
	, ISNULL(OD.D_COUNTRY_CODE,'-1')				AS Country_Code
	, ISNULL(OD.DSG_SHIP_VIA,'-1')					AS Transporter_Ship_Via_Code
	, ISNULL(LP.TC_SHIPMENT_ID,'-1')				AS Shipment_ID
	, ISNULL(LP.TC_ORDER_ID,'-1')					AS Order_ID
	, ISNULL(LP.TC_LPN_ID,'-1')						AS OLPN_ID
	, ISNULL(CONCAT(OI.Order_Contract,LD.ITEM_ID),'-1')	AS SKU_Code1
	, ISNULL(CONCAT(OI.Order_Contract,LD.ITEM_ID),'-1')	AS SKU_Code2
	, ISNULL(OI.Order_Contract,'-1')				AS Contract_Contract
	, '-1'											AS Pickers_ID --Added Picker
	, ISNULL(LD.BATCH_NBR,'-1')						AS Lot_Code
	, ISNULL(OD.DWH_CUSTOMER_ID,'-1')				AS Customer_ID
	, ISNULL(IP.PART_PRODUCT_FAMILY,'-1')			AS Product_Family_ID
	, ISNULL(T.CNTR_TYPE_ID, '-1')					AS Container_ID
	, '-1'										    AS Complaint_ID
	, 0												AS #Orders_Shipped
	, 0												AS #IFS_Order_Lines_Shipped
	, 0												AS #WMS_Order_Lines_Shipped
	, 0											 	AS #Parcels_Shipped
	, LD.SIZE_VALUE								    AS #Units_Shipped
    , 0											    AS #Units_Cancelled
	, 0											    AS #Orders_Incomplete
	, 0     							            AS #Unavailable_Units_Cancelled
	, 0												AS #Orders_Not_Shipped_On_Time
	, 0												AS #Picklines
	, 0												AS #Complaints
FROM			MANH.LPN_DETAIL	LD
INNER JOIN		MANH.LPN_OUTBOUND LP 
ON				LP.LPN_ID = LD.LPN_ID
AND				LP.LPN_FACILITY_STATUS <> 99
AND				LP.ActInd = 'Y'
INNER JOIN		MANH.ORDERS OD 
ON				OD.ORDER_ID = LP.ORDER_ID 
AND				OD.ActInd = 'Y'
AND				OD.DO_STATUS = '190'
AND				OD.ACTUAL_SHIPPED_DTTM >= '20180101'
INNER JOIN		EXTRA.ORDER_INFO OI
ON				OI.TC_Order_ID = OD.TC_ORDER_ID
AND				OI.ActInd = 'Y'
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
INNER JOIN		IFS.INVENTORY_PART IP
ON				IP.PART_NO = IC.ITEM_NAME
AND				IP.ActInd='Y'
AND				IP.CONTRACT = OI.Order_Contract
LEFT JOIN		MANH.CNTR_TYPE T
ON				T.CNTR_TYPE = LP.CONTAINER_TYPE 
AND				T.CNTR_SIZE = LP.CONTAINER_SIZE
AND				T.ActInd = 'Y' 		
WHERE			LD.ActInd = 'Y'

UNION ALL

--	4 Units Cancelled in IFS + Quantity
SELECT			
    CONVERT(CHAR, VWO.Order_Shipped_Date, 112)		AS DateKey
	, ISNULL(VWO.Order_Type,'-1')					AS Order_Type_Code
	, ISNULL(VWO.Order_Facility_Code,'-1')			AS Facility_ID
	, ISNULL(VWO.Order_Country_Code,'-1')			AS Country_Code
	, '-1'											AS Transporter_Ship_Via_Code
	, '-1'											AS Shipment_ID
	, ISNULL(VWO.Order_ID,'-1')						AS Order_ID
	, '-1'											AS OLPN_ID
	, ISNULL(CL.SKU_Code,'-1')						AS SKU_Code1
	, ISNULL(CL.SKU_Code,'-1')						AS SKU_Code2
	, ISNULL(OI.Order_Contract,'-1')				AS Contract_Contract
	, '-1'											AS Pickers_ID --Added Picker
	, '-1'											AS Lot_Code
	, ISNULL(VWO.Order_Customer_ID,'-1')			AS Customer_ID
	, ISNULL(CL.Product_Family,'-1')			    AS Product_Family_ID
	,'-1'											AS Container_ID
	,'-1'										    AS Complaint_ID
	, 0												AS #Orders_Shipped
	, 0												AS #IFS_Order_Lines_Shipped
	, 0												AS #WMS_Order_Lines_Shipped
	, 0												AS #Parcels_Shipped
	, 0												AS #Units_Shipped
	, CL.Units_Cancelled							AS #Units_Cancelled
	, 0											    AS #Orders_Incomplete
	, 0     							            AS #Unavailable_Units_Cancelled
	, 0												AS #Orders_Not_Shipped_On_Time
	, 0												AS #Picklines
	, 0												AS #Complaints
FROM			[$(ForeverData02)].DM.D_Order VWO
INNER JOIN      EXTRA.CANCELLED_LINES CL
ON				VWO.Order_ID=CL.TC_order_ID
AND				CL.ActInd = 'Y'
AND				CL.Issue = 'ifsunit'
INNER JOIN		EXTRA.ORDER_INFO OI
ON				OI.TC_Order_ID = VWO.Order_ID
AND				OI.ActInd = 'Y'
WHERE			CONVERT(CHAR, VWO.Order_Shipped_Date, 112) > '20180101'


UNION ALL

-- 5 Orders Incomplete
SELECT			
    CONVERT(CHAR, VWO.Order_Shipped_Date, 112)		AS DateKey
	, ISNULL(VWO.Order_Type,'-1')					AS Order_Type_Code
	, ISNULL(VWO.Order_Facility_Code,'-1')			AS Facility_ID
	, ISNULL(VWO.Order_Country_Code,'-1')			AS Country_Code
	, ISNULL(VWO.Order_Ship_Via_Code,'-1')			AS Transporter_Ship_Via_Code
	, ISNULL(VWO.Order_Shipment_ID,'-1')			AS Shipment_ID
	, ISNULL(VWO.Order_ID,'-1')						AS Order_ID
	, '-1'											AS OLPN_ID
	, '-1'											AS SKU_Code1
	, '-1'											AS SKU_Code2
	, '-1'											AS Contract_Contract
	, '-1'											AS Pickers_ID --Added Picker
	, '-1'											AS Lot_Code
	, ISNULL(VWO.Order_Customer_ID,'-1')			AS Customer_ID
	,'-1'											AS Product_Family_ID
	,'-1'											AS Container_ID
	,'-1'										    AS Complaint_ID
	, 0												AS #Orders_Shipped
	, 0												AS #IFS_Order_Lines_Shipped
	, 0												AS #WMS_Order_Lines_Shipped
	, 0												AS #Parcels_Shipped
	, 0												AS #Units_Shipped
	, 0											    AS #Units_Cancelled
	, 1												AS #Orders_Incomplete
	, 0     							            AS #Units_Cancelled
	, 0												AS #Orders_Not_Shipped_On_Time
	, 0												AS #Picklines
	, 0												AS #Complaints
FROM			[$(ForeverData02)].DM.D_Order VWO
INNER JOIN		EXTRA.CANCELLED_LINES CL
ON				VWO.Order_ID = CL.TC_order_ID
AND				CL.ActInd = 'Y'
AND				CL.Issue = 'orderincomplete'				
WHERE			CONVERT(CHAR, VWO.Order_Shipped_Date, 112) > '20180101'
	  		
UNION ALL

-- 6 Number Items cancelled  in Manhattan
SELECT			
	CONVERT(CHAR, VWO.Order_Shipped_Date, 112)		AS DateKey
	, ISNULL(VWO.Order_Type,'-1')					AS Order_Type_Code
	, ISNULL(VWO.Order_Facility_Code,'-1')			AS Facility_ID
	, ISNULL(VWO.Order_Country_Code,'-1')			AS Country_Code
	, ISNULL(VWO.Order_Ship_Via_Code,'-1')			AS Transporter_Ship_Via_Code
	, ISNULL(VWO.Order_Shipment_ID,'-1')			AS Shipment_ID
	, ISNULL(VWO.Order_ID,'-1')						AS Order_ID
	, '-1'											AS OLPN_ID
	, ISNULL(CL.SKU_Code,'-1')						AS SKU_Code1
	, ISNULL(CL.SKU_Code,'-1')						AS SKU_Code2
	, ISNULL(OI.Order_Contract,'-1')				AS Contract_Contract
	, '-1'											AS Pickers_ID --Added Picker
	, '-1'											AS Lot_Code
	, ISNULL(VWO.Order_Customer_ID,'-1')			AS Customer_ID
	, ISNULL(CL.Product_Family,'-1')				AS Product_Family_ID
	,'-1'											AS Container_ID
	,'-1'										    AS Complaint_ID
	, 0												AS #Orders_Shipped
	, 0												AS #IFS_Order_Lines_Shipped
	, 0												AS #WMS_Order_Lines_Shipped
	, 0												AS #Parcels_Shipped
	, 0												AS #Units_Shipped
	, 0											    AS #Units_Cancelled
	, 0											    AS #Orders_Incomplete
	, 1        							            AS #Unavailable_Units_Cancelled
	, 0												AS #Orders_Not_Shipped_On_Time
	, 0												AS #Picklines
	, 0												AS #Complaints
FROM			[$(ForeverData02)].DM.D_Order VWO
INNER JOIN      EXTRA.CANCELLED_LINES CL
ON				VWO.Order_ID=CL.TC_order_ID
AND				CL.ActInd = 'Y'
AND				CL.Issue = 'unitcancelled'
INNER JOIN		EXTRA.ORDER_INFO OI
ON				OI.TC_Order_ID = VWO.Order_ID
AND				OI.ActInd = 'Y'
WHERE			CONVERT(CHAR, VWO.Order_Shipped_Date, 112) > '20180101'
UNION ALL

-- 7 Orders Not Shipped on time
SELECT			
	CONVERT(CHAR, VWO.Order_Shipped_Date, 112)		AS DateKey
	, ISNULL(VWO.Order_Type,'-1')					AS Order_Type_Code
	, ISNULL(VWO.Order_Facility_Code,'-1')			AS Facility_ID
	, ISNULL(VWO.Order_Country_Code,'-1')			AS Country_Code
	, ISNULL(VWO.Order_Ship_Via_Code,'-1')			AS Transporter_Ship_Via_Code
	, ISNULL(VWO.Order_Shipment_ID,'-1')			AS Shipment_ID
	, ISNULL(VWO.Order_ID,'-1')						AS Order_ID
	, '-1'											AS OLPN_ID
	, '-1'											AS SKU_Code1
	, '-1'											AS SKU_Code2
	, ISNULL(OI.Order_Contract,'-1')				AS Contract_Contract -- Added contract
	, '-1'											AS Pickers_ID --Added Picker
	, '-1'											AS Lot_Code
	, ISNULL(VWO.Order_Customer_ID,'-1')			AS Customer_ID
	, '-1'											AS Product_Family_ID
	, '-1'											AS Container_ID
	, '-1'										    AS Complaint_ID
	, 0												AS #Orders_Shipped
	, 0												AS #IFS_Order_Lines_Shipped
	, 0												AS #WMS_Order_Lines_Shipped
	, 0												AS #Parcels_Shipped
	, 0												AS #Units_Shipped
	, 0											    AS #Units_Cancelled
	, 0											    AS #Orders_Incomplete
	, 0       							            AS #Unavailable_Units_Cancelled
	, 1 											AS #Orders_Not_Shipped_On_Time
	, 0												AS #Picklines
	, 0												AS #Complaints

FROM			EXTRA.ORDER_INFO OI
INNER JOIN		[$(ForeverData02)].DM.D_Order VWO
ON				OI.TC_Order_ID = VWO.Order_ID
AND				VWO.Order_Days_Too_Late > 0
AND				VWO.Order_Planned_Ship_Date IS NOT NULL
WHERE           OI.ActInd = 'Y'
and				CONVERT(CHAR, VWO.Order_Shipped_Date, 112) > '20180101'

UNION ALL

-- 8 PickLines OF
SELECT			
	CONVERT(CHAR, PT.CREATE_DATE_TIME, 112)		    AS DateKey
	, ISNULL(CASE WHEN OD.Order_Ship_Via_Code = 'FD01' AND OD.Order_Type <> 'DS' THEN 'FD01' ELSE OD.Order_Type END,'-1') AS Order_Type_Code
	, ISNULL(OD.Order_Facility_Code,'-1')			AS Facility_ID
	, ISNULL(OD.Order_Country_Code,'-1')			AS Country_Code
	, ISNULL(OD.Order_Ship_Via_Code,'-1')			AS Transporter_Ship_Via_Code
	, ISNULL(OD.Order_Shipment_ID,'-1')			    AS Shipment_ID
	, ISNULL(OD.Order_ID,'-1')					    AS Order_ID
	, ISNULL(PT.CNTR_NBR,'-1')						AS OLPN_ID
	, ISNULL(CONCAT(OI.Order_Contract,IC.ITEM_ID),'-1')	AS SKU_Code1
	, ISNULL(CONCAT(OI.Order_Contract,IC.ITEM_ID),'-1')	AS SKU_Code2
	, ISNULL(OI.Order_Contract,'-1')				AS Contract_Contract -- Added contract
	, ISNULL(CASE
		WHEN (PT.MENU_OPTN_NAME IN ('RF QA incomplete') AND PT.REF_FIELD_1 IS NULL) THEN PT.USER_ID
		ELSE RIGHT(PT.REF_FIELD_1, LEN(PT.REF_FIELD_1) - 1)
	    END,'-1')									AS Pickers_ID --Added Picker
	, '-1'											AS Lot_Code
	, ISNULL(OD.Order_Customer_ID,'-1')				AS Customer_ID
	, ISNULL(IP.PART_PRODUCT_FAMILY,'-1')			AS Product_Family_ID
	, '-1'											AS Container_ID
	, '-1'										    AS Complaint_ID
	, 0												AS #Orders_Shipped
	, 0												AS #IFS_Order_Lines_Shipped
	, 0												AS #WMS_Order_Lines_Shipped
	, 0												AS #Parcels_Shipped
	, 0												AS #Units_Shipped
	, 0											    AS #Units_Cancelled
	, 0											    AS #Orders_Incomplete
	, 0       							            AS #Unavailable_Units_Cancelled
	, 0											    AS #Orders_Not_Shipped_On_Time
	, 1												AS #Picklines
	, 0												AS #Complaints
FROM			[$(ForeverData02)].DM.D_Order AS OD
INNER JOIN		EXTRA.ORDER_INFO OI
ON				OI.TC_Order_ID = OD.Order_ID
AND				OI.ActInd = 'Y'
INNER JOIN		MANH.PROD_TRKG_TRAN AS PT
ON				PT.TC_ORDER_ID = OD.Order_ID
AND				PT.MENU_OPTN_NAME IN ('PackCD', 'RF QA incomplete','Pack Cubed Directed','RF Zone  Picking RTN')
AND				PT.MODULE_NAME = 'Packing'
LEFT JOIN		MANH.ITEM_CBO IC
ON				IC.ITEM_ID = PT.ITEM_ID
AND				IC.ActInd = 'Y'
LEFT JOIN		IFS.INVENTORY_PART IP
ON				IP.PART_NO = IC.ITEM_NAME
AND				IP.CONTRACT = OI.Order_Contract -- Added contract
AND				IP.ActInd = 'Y'

--UNION all
/*
-- 9 Complaints
SELECT			 
	CONVERT(CHAR, QI.Complaint_Datum, 112)			AS DateKey
	, ISNULL(CASE WHEN OD.Order_Ship_Via_Code = 'FD01' AND OD.Order_Type <> 'DS' THEN 'FD01' ELSE OD.Order_Type END,'-1') AS Order_Type_Code
	, ISNULL(OD.Order_Facility_Code,'-1')			AS Facility_ID
	, ISNULL(OD.Order_Country_Code,'-1')			AS Country_Code
	, ISNULL(OD.Order_Ship_Via_Code,'-1')			AS Transporter_Ship_Via_Code
	, ISNULL(LP.TC_SHIPMENT_ID,'-1')				AS Shipment_ID
	, ISNULL(QI.Complaint_Order,'-1')				AS Order_ID
	, ISNULL(QI.Complaint_Olpn,'-1')				AS OLPN_ID
	, ISNULL(CONCAT('FD01',I1.ITEM_ID),'-1')		AS SKU_Code1
	, ISNULL(CONCAT('FD01',I2.ITEM_ID),'-1')		AS SKU_Code2
	, ISNULL(OI.Order_Contract,'-1')				AS Contract_Contract -- Added contract
	, '-1'											AS Pickers_ID --Added Picker
	, ISNULL(QI.Complaint_ItemOrdered,'-1')			AS Lot_Code
	, ISNULL(OD.Order_Customer_ID,'-1')				AS Customer_ID	
	, '-1'											AS Product_Family_ID
	, '-1'											AS Container_ID
	,'U_' + CAST(QI.Complaint_ID AS NVARCHAR(10))   AS Complaint_ID
	, 0												AS #Orders_Shipped
	, 0												AS #IFS_Order_Lines_Shipped
	, 0												AS #WMS_Order_Lines_Shipped
	, 0												AS #Parcels_Shipped
	, 0												AS #Units_Shipped
	, 0												AS #Units_Cancelled
	, 0											    AS #Orders_Incomplete
	, 0     							            AS #Unavailable_Units_Cancelled
	, 0											    AS #Orders_Not_Shipped_On_Time
	, 0												AS #Picklines
	, 1												AS #Complaints
FROM			WEB.Complaint QI
LEFT JOIN		ForeverData02.DM.D_Order AS OD
ON				OD.Order_ID = QI.Complaint_Order
AND				QI.ActInd = 'Y'
LEFT JOIN		EXTRA.ORDER_INFO OI
ON				OI.TC_Order_ID = OD.Order_ID
AND				OI.ActInd = 'Y'
LEFT JOIN		MANH.LPN_OUTBOUND LP
ON				LP.TC_LPN_ID = QI.Complaint_Olpn
AND				LP.ActInd = 'Y'
LEFT JOIN		MANH.ITEM_CBO I1
ON				I1.ITEM_NAME = QI.Complaint_ItemOrderedReported
AND				I1.ActInd = 'Y'
LEFT JOIN		MANH.ITEM_CBO I2
ON				I2.ITEM_NAME = QI.Complaint_ItemReceivedReported
AND				I2.ActInd = 'Y'
WHERE			QI.Complaint_Datum>= '20180101'

*/