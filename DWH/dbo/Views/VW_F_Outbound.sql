
CREATE VIEW dbo.VW_F_Outbound
AS

-- 1 Orders Shipped
SELECT			
	CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)		AS DateKey
	, ISNULL(FA.FACILITY_ALIAS_ID,'-1')				AS Facility_ID
	, ISNULL(OD.D_COUNTRY_CODE,'-1')				AS Country_Code
	, ISNULL(OD.DSG_SHIP_VIA,'-1')					AS Transporter_Ship_Via_Code
	, ISNULL(CO.Order_Shipment_ID,'-1')				AS Shipment_ID
	, ISNULL(OD.TC_ORDER_ID,'-1')					AS Order_ID
	, '-1'											AS OLPN_ID
	, '-1'											AS SKU_Code1
	, '-1'											AS SKU_Code2
	, '-1'											AS Lot_Code
	, '-1'											AS Location_ID1
	, '-1'											AS Location_ID2
	, ISNULL(OD.DWH_CUSTOMER_ID,'-1')				AS Customer_ID
	, '-1'											AS Customer_Item
	, '-1'											AS Pickers_ID
	, ISNULL(CASE WHEN OD.DSG_SHIP_VIA = 'FD01' AND OD.ORDER_TYPE <> 'DS' THEN 'FD01' ELSE OD.ORDER_TYPE END,'-1')					AS Order_Type_Code
	, '-1'											AS OF_Issues_ID
	, '-1'											AS OF_Complaints_ID
	--, 'ShippedOrders'								AS Outbound_Type
	, 1												AS Number_Of_Orders_Shipped
	, CO.Order_IFS_Order_Lines						AS Number_Of_IFS_Order_Lines_Shipped
	, CO.Order_Manh_Order_Lines						AS Number_Of_WMS_Order_Lines_Shipped
	, 0												AS Number_Of_Parcels_Shipped
	, 0												AS Number_Of_Units_Shipped
	, 0												AS Number_Of_Orders_Not_Shipped
	, 0												AS Number_Of_Picks
	, 0												AS Number_Of_Complaints
	, 0												AS Number_Of_Issues
FROM			MANH.ORDERS AS OD
INNER JOIN		EXTRA.ORDERS_INFO CO
ON				CO.TC_Order_ID = OD.TC_ORDER_ID
AND				CO.ActInd = 'Y'
LEFT JOIN		MANH.FACILITY_ALIAS	AS FA 
ON				FA.FACILITY_ALIAS_ID = OD.BILL_FACILITY_ALIAS_ID 
AND				FA.ActInd = 'Y'
WHERE			OD.DO_STATUS = '190'
AND				OD.ActInd = 'Y'
AND				OD.CREATED_DTTM >= DATEADD(YEAR,-2,GETDATE())

UNION ALL

--	2 Parcels Shipped
SELECT			  
	CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)	AS DateKey
	, ISNULL(FA.FACILITY_ALIAS_ID,'-1')				AS Facility_ID
	, ISNULL(OD.D_COUNTRY_CODE,'-1')				AS Country_Code
	, ISNULL(OD.DSG_SHIP_VIA,'-1')					AS Transporter_Ship_Via_Code
	, ISNULL(LP.TC_SHIPMENT_ID,'-1')				AS Shipment_ID
	, ISNULL(LP.TC_ORDER_ID,'-1')					AS Order_ID
	, ISNULL(LP.TC_LPN_ID,'-1')						AS OLPN_ID
	, '-1'											AS SKU_Code1
	, '-1'											AS SKU_Code2
	, '-1'											AS Lot_Code
	, '-1'											AS Location_ID1
	, '-1'											AS Location_ID2
	, ISNULL(OD.DWH_CUSTOMER_ID,'-1')				AS Customer_ID
	, '-1'											AS Customer_Item
	, '-1'											AS Pickers_ID
	, ISNULL(CASE WHEN OD.DSG_SHIP_VIA = 'FD01' AND OD.ORDER_TYPE <> 'DS' THEN 'FD01' ELSE OD.ORDER_TYPE END,'-1')					AS Order_Type_Code
	, '-1'											AS OF_Issues_ID
	, '-1'											AS OF_Complaints_ID
	--, 'ShippedParcels'							AS Outbound_Type
	, 0												AS Number_Of_Orders_Shipped
	, 0												AS Number_Of_IFS_Order_Lines_Shipped
	, 0												AS Number_Of_WMS_Order_Lines_Shipped
	, 1												AS Number_Of_Parcels_Shipped
	, 0												AS Number_Of_Units_Shipped
	, 0												AS Number_Of_Orders_Not_Shipped
	, 0												AS Number_Of_Picks
	, 0												AS Number_Of_Complaints
	, 0												AS Number_Of_Issues
FROM			MANH.LPN_OUTBOUND AS LP
INNER JOIN		MANH.ORDERS	AS OD 
ON				OD.ORDER_ID = LP.ORDER_ID 
AND				OD.DO_STATUS = '190' 
AND				OD.ActInd = 'Y' 
AND				OD.CREATED_DTTM >= DATEADD(YEAR,-2,GETDATE())
LEFT JOIN		MANH.FACILITY_ALIAS AS FA 
ON				FA.FACILITY_ALIAS_ID = OD.BILL_FACILITY_ALIAS_ID 
AND				FA.ActInd = 'Y'
WHERE			LP.ActInd = 'Y'

UNION ALL

-- 3 Units Shipped
SELECT			
	CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)		AS DateKey
	, ISNULL(FA.FACILITY_ALIAS_ID,'-1')				AS Facility_ID
	, ISNULL(OD.D_COUNTRY_CODE,'-1')				AS Country_Code
	, ISNULL(OD.DSG_SHIP_VIA,'-1')					AS Transporter_Ship_Via_Code
	, ISNULL(LP.TC_SHIPMENT_ID,'-1')				AS Shipment_ID
	, ISNULL(LP.TC_ORDER_ID,'-1')					AS Order_ID
	, ISNULL(LP.TC_LPN_ID,'-1')						AS OLPN_ID
	, ISNULL(LD.ITEM_ID,'-1')						AS SKU_Code1
	, ISNULL(LD.ITEM_ID,'-1')						AS SKU_Code2
	, ISNULL(LD.BATCH_NBR,'-1')						AS Lot_Code
	, '-1'											AS Location_ID1
	, '-1'											AS Location_ID2
	, ISNULL(OD.DWH_CUSTOMER_ID,'-1')				AS Customer_ID
	, OL.CUSTOMER_ITEM								AS Customer_Item
	, '-1'											AS Pickers_ID
	, ISNULL(CASE WHEN OD.DSG_SHIP_VIA = 'FD01' AND OD.ORDER_TYPE <> 'DS' THEN 'FD01' ELSE OD.ORDER_TYPE END,'-1')					AS Order_Type_Code
	, '-1'											AS OF_Issues_ID
	, '-1'											AS OF_Complaints_ID
	--, 'ShippedUnits'								AS Outbound_Type
	, 0												AS Number_Of_Orders_Shipped
	, 0												AS Number_Of_IFS_Order_Lines_Shipped
	, 0												AS Number_Of_WMS_Order_Lines_Shipped
	, 0												AS Number_Of_Parcels_Shipped
	, LD.SIZE_VALUE									AS Number_Of_Units_Shipped
	, 0												AS Number_Of_Orders_Not_Shipped
	, 0												AS Number_Of_Picks
	, 0												AS Number_Of_Complaints
	, 0												AS Number_Of_Issues
FROM			MANH.LPN_DETAIL	AS LD
INNER JOIN		MANH.LPN_OUTBOUND AS LP 
ON				LP.LPN_ID = LD.LPN_ID
AND				LP.LPN_FACILITY_STATUS <> 99
AND				LP.ActInd = 'Y'
INNER JOIN		MANH.ORDERS AS OD 
ON				OD.ORDER_ID = LP.ORDER_ID 
AND				OD.DO_STATUS = '190' 
AND				OD.ActInd = 'Y'
AND				OD.CREATED_DTTM >= DATEADD(YEAR,-2,GETDATE())
INNER JOIN		MANH.ITEM_CBO IC
ON				IC.ITEM_ID = LD.ITEM_ID
AND				IC.ActInd = 'Y'
LEFT JOIN		(SELECT
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
LEFT JOIN		MANH.FACILITY_ALIAS	AS FA 
ON				FA.FACILITY_ALIAS_ID = OD.BILL_FACILITY_ALIAS_ID 
AND				FA.ActInd = 'Y'
WHERE			LD.ActInd = 'Y'

UNION ALL

-- 4 Orders Not Shipped on time
SELECT			
	CONVERT(CHAR, VWO.Order_Planned_Ship_Date, 112)	AS DateKey
	, ISNULL(FA.FACILITY_ALIAS_ID,'-1')				AS Facility_ID
	, ISNULL(OD.D_COUNTRY_CODE,'-1')				AS Country_Code
	, ISNULL(OD.DSG_SHIP_VIA,'-1')					AS Transporter_Ship_Via_Code
	, ISNULL(CO.Order_Shipment_ID,'-1')				AS Shipment_ID
	, ISNULL(OD.TC_ORDER_ID,'-1')					AS Order_ID
	, '-1'											AS OLPN_ID
	, '-1'											AS SKU_Code1
	, '-1'											AS SKU_Code2
	, '-1'											AS Lot_Code
	, '-1'											AS Location_ID1
	, '-1'											AS Location_ID2
	, ISNULL(OD.DWH_CUSTOMER_ID,'-1')				AS Customer_ID
	, '-1'											AS Customer_Item
	, '-1'											AS Pickers_ID
	, ISNULL(CASE WHEN OD.DSG_SHIP_VIA = 'FD01' AND OD.ORDER_TYPE <> 'DS' THEN 'FD01' ELSE OD.ORDER_TYPE END,'-1')					AS Order_Type_Code
	, '-1'											AS OF_Issues_ID
	, '-1'											AS OF_Complaints_ID
	--, 'NotShipped'								AS Outbound_Type
	, 0												AS Number_of_Orders_Shipped
	, 0												AS Number_Of_IFS_Order_Lines_Shipped
	, 0												AS Number_Of_WMS_Order_Lines_Shipped
	, 0												AS Number_Of_Parcels_Shipped
	, 0												AS Number_Of_Units_Shipped
	, 1												AS Number_Of_Orders_Not_Shipped
	, 0												AS Number_Of_Picks
	, 0												AS Number_Of_Complaints
	, 0												AS Number_Of_Issues
FROM			MANH.ORDERS AS OD 
INNER JOIN		EXTRA.ORDERS_INFO CO
ON				CO.TC_Order_ID = OD.TC_ORDER_ID
AND				CO.ActInd = 'Y'
INNER JOIN		Datamart.DM.D_Order AS VWO
ON				OD.TC_ORDER_ID	= VWO.Order_ID
AND				VWO.Order_Days_To_Late > 0
AND				VWO.Order_Planned_Ship_Date IS NOT NULL
LEFT JOIN		MANH.FACILITY_ALIAS	AS FA 
ON				FA.FACILITY_ALIAS_ID = OD.BILL_FACILITY_ALIAS_ID 
AND				FA.ActInd = 'Y'
WHERE			OD.ActInd = 'Y'
AND				OD.CREATED_DTTM >= DATEADD(YEAR,-2,GETDATE())

UNION ALL

-- 5 Number of OF Issues
SELECT			  
	CONVERT(CHAR, QI.OF_Issues_Date, 112)			AS DateKey
	, ISNULL(OD.Order_Facility_Code,'-1')			AS Facility_ID
	, ISNULL(OD.Order_Country_Code,'-1')			AS Country_Code
	, ISNULL(OD.Order_Ship_Via_Code,'-1')			AS Transporter_Ship_Via_Code
	, ISNULL(LP.TC_SHIPMENT_ID,'-1')				AS Shipment_ID
	, ISNULL(QI.OF_Issues_Order_ID,'-1')			AS Order_ID
	, ISNULL(QI.OF_Issues_OLPN_ID,'-1')				AS OLPN_ID
	, ISNULL(I1.ITEM_ID,'-1')						AS SKU_Code1
	, ISNULL(I2.ITEM_ID,'-1')						AS SKU_Code2
	, '-1'											AS Lot_Code
	, ISNULL(L1.LOCN_ID,'-1')						AS Location_ID1
	, ISNULL(L2.LOCN_ID,'-1')						AS Location_ID2
	, ISNULL(OD.Order_Customer_ID,'-1')				AS Customer_ID
	, '-1'											AS Customer_Item
	, ISNULL(QI.OF_Issues_Picker_ID,'-1')			AS Pickers_ID
	, ISNULL(CASE WHEN OD.Order_Ship_Via_Code = 'FD01' AND OD.Order_Type <> 'DS' THEN 'FD01' ELSE OD.Order_Type END,'-1')					AS Order_Type_Code
	, ISNULL(QI.OF_Issues_ID,'-1')					AS OF_Issues_ID
	, '-1'											AS OF_Complaints_ID
	--, 'Issues'									AS Outbound_Type
	, 0												AS Number_Of_Orders_Shipped
	, 0												AS Number_Of_IFS_Order_Lines_Shipped
	, 0												AS Number_Of_WMS_Order_Lines_Shipped
	, 0												AS Number_Of_Parcels_Shipped
	, 0												AS Number_Of_Units_Shipped
	, 0												AS Number_Of_Orders_Not_Shipped
	, 0												AS Number_Of_Picks
	, 0												AS Number_Of_Complaints
	, 1												AS Number_Of_Issues
FROM		Datamart.DM.D_OF_Issues AS QI
LEFT JOIN	Datamart.DM.D_Order AS OD
ON			OD.Order_ID = QI.OF_Issues_Order_ID
LEFT JOIN	MANH.LPN_OUTBOUND AS LP
ON			LP.TC_LPN_ID = QI.OF_Issues_OLPN_ID
AND			LP.ActInd = 'Y'
LEFT JOIN	MANH.ITEM_CBO I1
ON			I1.ITEM_NAME = QI.OF_Issues_Allocated_Item
AND			I1.ActInd = 'Y'
LEFT JOIN	MANH.ITEM_CBO I2
ON			I2.ITEM_NAME = QI.OF_Issues_Picked_Item
AND			I2.ActInd = 'Y'
LEFT JOIN	MANH.LOCN_HDR L1
ON			L1.DSP_LOCN = QI.OF_Issues_Location_Allocated
AND			L1.ActInd = 'Y'
LEFT JOIN	MANH.LOCN_HDR L2
ON			L2.DSP_LOCN = QI.OF_Issues_Location_Allocated
AND			L2.ActInd = 'Y'

UNION ALL

-- 6 Number of OF Complaints
SELECT			 
	CONVERT(CHAR, QI.OF_Complaints_Date, 112)		AS DateKey
	, ISNULL(OD.Order_Facility_Code,'-1')			AS Facility_ID
	, ISNULL(OD.Order_Country_Code,'-1')			AS Country_Code
	, ISNULL(OD.Order_Ship_Via_Code,'-1')			AS Transporter_Ship_Via_Code
	, ISNULL(LP.TC_SHIPMENT_ID,'-1')				AS Shipment_ID
	, ISNULL(QI.OF_Complaints_Order_ID,'-1')		AS Order_ID
	, ISNULL(QI.OF_Complaints_OLPN_ID,'-1')			AS OLPN_ID
	, ISNULL(I1.ITEM_ID,'-1')						AS SKU_Code1
	, ISNULL(I2.ITEM_ID,'-1')						AS SKU_Code2
	, ISNULL(QI.OF_Complaints_Allocated_Batch,'-1')	AS Lot_Code
	, '-1'											AS Location_ID1
	, '-1'											AS Location_ID2
	, ISNULL(OD.Order_Customer_ID,'-1')				AS Customer_ID
	, '-1'											AS Customer_Item
	, ISNULL(QI.OF_Complaints_Picker_ID,'-1')		AS Pickers_ID
	, ISNULL(CASE WHEN OD.Order_Ship_Via_Code = 'FD01' AND OD.Order_Type <> 'DS' THEN 'FD01' ELSE OD.Order_Type END,'-1')					AS Order_Type_Code
	, '-1'											AS OF_Issues_ID
	, ISNULL(QI.OF_Complaints_ID,'-1')				AS OF_Complaints_ID
	--, 'Complaints'								AS Outbound_Type
	, 0												AS Number_Of_Orders_Shipped
	, 0												AS Number_Of_IFS_Order_Lines_Shipped
	, 0												AS Number_Of_WMS_Order_Lines_Shipped
	, 0												AS Number_Of_Parcels_Shipped
	, 0												AS Number_Of_Units_Shipped
	, 0												AS Number_Of_Orders_Not_Shipped
	, 0												AS Number_Of_Picks
	, 1												AS Number_Of_Complaints
	, 0												AS Number_Of_Issues
FROM		Datamart.DM.D_OF_Complaints AS QI
LEFT JOIN	Datamart.DM.D_Order AS OD
ON			OD.Order_ID = QI.OF_Complaints_Order_ID
LEFT JOIN	MANH.LPN_OUTBOUND AS LP
ON			LP.TC_LPN_ID = QI.OF_Complaints_OLPN_ID
AND			LP.ActInd = 'Y'
LEFT JOIN	MANH.ITEM_CBO I1
ON			I1.ITEM_NAME = QI.OF_Complaints_Allocated_Item
AND			I1.ActInd = 'Y'
LEFT JOIN	MANH.ITEM_CBO I2
ON			I2.ITEM_NAME = QI.OF_Complaints_Picked_Item
AND			I2.ActInd = 'Y'

UNION ALL


-- 7 Measure Number of Pick Lines
SELECT			  
	CONVERT(CHAR, PT.CREATE_DATE_TIME, 112)			AS DateKey
	, ISNULL(OD.Order_Facility_Code,'-1')			AS Facility_ID
	, ISNULL(OD.Order_Country_Code,'-1')			AS Country_Code
	, ISNULL(OD.Order_Ship_Via_Code,'-1')			AS Transporter_Ship_Via_Code
	, ISNULL(OD.Order_Shipment_ID,'-1')				AS Shipment_ID
	, ISNULL(OD.Order_ID,'-1')						AS Order_ID
	, ISNULL(PT.CNTR_NBR,'-1')						AS OLPN_ID
	, ISNULL(IC.ITEM_ID,'-1')						AS SKU_Code1
	, ISNULL(IC.ITEM_ID,'-1')						AS SKU_Code2
	, '-1'											AS Lot_Code
	, ISNULL(PT.FROM_LOCN, '-1')					AS Location_ID1
	, ISNULL(PT.FROM_LOCN, '-1')					AS Location_ID2
	, ISNULL(OD.Order_Customer_ID,'-1')				AS Customer_ID
	, '-1'											AS Customer_Item
	, ISNULL(CASE
		WHEN (PT.REF_FIELD_1 IS NULL) THEN PT.USER_ID
		ELSE RIGHT(PT.REF_FIELD_1, LEN(PT.REF_FIELD_1) - 1)
	END,'-1')										AS Pickers_ID
	, ISNULL(CASE WHEN OD.Order_Ship_Via_Code = 'FD01' AND OD.Order_Type <> 'DS' THEN 'FD01' ELSE OD.Order_Type END,'-1')					AS Order_Type_Code
	, '-1'											AS OF_Issues_ID
	, '-1'											AS OF_Complaints_ID
	--, 'PickLines'									AS Outbound_Type
	, 0												AS Number_Of_Orders_Shipped
	, 0												AS Number_Of_IFS_Order_Lines_Shipped
	, 0												AS Number_Of_WMS_Order_Lines_Shipped
	, 0												AS Number_Of_Parcels_Shipped
	, 0												AS Number_Of_Units_Shipped
	, 0												AS Number_Of_Orders_Not_Shipped
	, 1												AS Number_Of_Picks
	, 0												AS Number_Of_Complaints
	, 0												AS Number_Of_Issues
FROM		Datamart.DM.D_Order AS OD
INNER JOIN	MANH.PROD_TRKG_TRAN AS PT
ON			PT.TC_ORDER_ID = OD.Order_ID
AND			PT.MENU_OPTN_NAME IN ('PackCD', 'RF QA incomplete','Pack Cubed Directed','RF Zone  Picking RTN')
LEFT JOIN	MANH.ITEM_CBO IC
ON			IC.ITEM_ID = PT.ITEM_ID
AND			IC.ActInd = 'Y'


/* 20180416
USE DWH;
GO

IF OBJECT_ID('VW_F_Outbound') IS NOT NULL
DROP VIEW VW_F_Outbound;
GO

CREATE VIEW dbo.VW_F_Outbound
AS
-- 1 Orders Shipped
SELECT			
	CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)		AS DateKey
	, ISNULL(FA.FACILITY_ALIAS_ID,'-1')				AS Facility_ID
	, ISNULL(OD.D_COUNTRY_CODE,'-1')				AS Country_Code
	, ISNULL(OD.DSG_SHIP_VIA,'-1')					AS Transporter_Ship_Via_Code
	, ISNULL((SELECT DISTINCT TOP(1)
			LP.TC_SHIPMENT_ID
			FROM MANH.LPN_OUTBOUND AS LP
		WHERE LP.ORDER_ID = OD.ORDER_ID
		AND LP.ActInd = 'Y'
	),'-1')											AS Shipment_ID
	, ISNULL(OD.TC_ORDER_ID,'-1')					AS Order_ID
	, '-1'											AS OLPN_ID
	, '-1'											AS SKU_Code1
	, '-1'											AS SKU_Code2
	, '-1'											AS Lot_Code
	, '-1'											AS Location_ID1
	, '-1'											AS Location_ID2
	, ISNULL(OD.DWH_CUSTOMER_ID,'-1')				AS Customer_ID
	, '-1'											AS Customer_Item
	, '-1'											AS Pickers_ID
	, ISNULL(CASE WHEN OD.DSG_SHIP_VIA = 'FD01' AND OD.ORDER_TYPE <> 'DS' THEN 'FD01' ELSE OD.ORDER_TYPE END,'-1')					AS Order_Type_Code
	, '-1'											AS OF_Issues_ID
	, '-1'											AS OF_Complaints_ID
	--, 'ShippedOrders'								AS Outbound_Type
	, 1												AS Number_Of_Orders_Shipped
	, (SELECT 
		COUNT(*) 
		FROM MANH.ORDER_LINE_ITEM AS OL 
		WHERE OL.ORDER_ID = OD.ORDER_ID 
		AND OL.ActInd = 'Y'
	)												AS Number_Of_IFS_Order_Lines_Shipped
	, (SELECT
		COUNT(*)
		FROM MANH.LPN_OUTBOUND AS LP
		INNER JOIN MANH.LPN_DETAIL AS LD
		ON LD.LPN_ID = LP.LPN_ID
		AND LP.LPN_FACILITY_STATUS <> 99
		AND LD.ActInd = 'Y'
		WHERE LP.ORDER_ID = OD.ORDER_ID
		AND LP.ActInd = 'Y'	
	)												AS Number_Of_WMS_Order_Lines_Shipped
	, 0												AS Number_Of_Parcels_Shipped
	, 0												AS Number_Of_Units_Shipped
	, 0												AS Number_Of_Orders_Not_Shipped
	, 0												AS Number_Of_Picks
	, 0												AS Number_Of_Complaints
	, 0												AS Number_Of_Issues
FROM			MANH.ORDERS AS OD 
LEFT JOIN		MANH.FACILITY_ALIAS	AS FA 
ON				FA.FACILITY_ALIAS_ID = OD.BILL_FACILITY_ALIAS_ID 
AND				FA.ActInd = 'Y'
WHERE			OD.DO_STATUS = '190'
AND				OD.ActInd = 'Y'

UNION ALL

--	2 Parcels Shipped
SELECT			  
	CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)	AS DateKey
	, ISNULL(FA.FACILITY_ALIAS_ID,'-1')				AS Facility_ID
	, ISNULL(OD.D_COUNTRY_CODE,'-1')				AS Country_Code
	, ISNULL(OD.DSG_SHIP_VIA,'-1')					AS Transporter_Ship_Via_Code
	, ISNULL(LP.TC_SHIPMENT_ID,'-1')				AS Shipment_ID
	, ISNULL(LP.TC_ORDER_ID,'-1')					AS Order_ID
	, ISNULL(LP.TC_LPN_ID,'-1')						AS OLPN_ID
	, '-1'											AS SKU_Code1
	, '-1'											AS SKU_Code2
	, '-1'											AS Lot_Code
	, '-1'											AS Location_ID1
	, '-1'											AS Location_ID2
	, ISNULL(OD.DWH_CUSTOMER_ID,'-1')				AS Customer_ID
	, '-1'											AS Customer_Item
	, '-1'											AS Pickers_ID
	, ISNULL(CASE WHEN OD.DSG_SHIP_VIA = 'FD01' AND OD.ORDER_TYPE <> 'DS' THEN 'FD01' ELSE OD.ORDER_TYPE END,'-1')					AS Order_Type_Code
	, '-1'											AS OF_Issues_ID
	, '-1'											AS OF_Complaints_ID
	--, 'ShippedParcels'							AS Outbound_Type
	, 0												AS Number_Of_Orders_Shipped
	, 0												AS Number_Of_IFS_Order_Lines_Shipped
	, 0												AS Number_Of_WMS_Order_Lines_Shipped
	, 1												AS Number_Of_Parcels_Shipped
	, 0												AS Number_Of_Units_Shipped
	, 0												AS Number_Of_Orders_Not_Shipped
	, 0												AS Number_Of_Picks
	, 0												AS Number_Of_Complaints
	, 0												AS Number_Of_Issues
FROM			MANH.LPN_OUTBOUND AS LP
INNER JOIN		MANH.ORDERS	AS OD 
ON				OD.ORDER_ID = LP.ORDER_ID 
AND				OD.ActInd = 'Y' 
LEFT JOIN		MANH.FACILITY_ALIAS AS FA 
ON				FA.FACILITY_ALIAS_ID = OD.BILL_FACILITY_ALIAS_ID 
AND				FA.ActInd = 'Y'
WHERE			OD.DO_STATUS = '190' 
AND				LP.ActInd = 'Y'

UNION ALL

-- 3 Units Shipped
SELECT			
	CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)		AS DateKey
	, ISNULL(FA.FACILITY_ALIAS_ID,'-1')				AS Facility_ID
	, ISNULL(OD.D_COUNTRY_CODE,'-1')				AS Country_Code
	, ISNULL(OD.DSG_SHIP_VIA,'-1')					AS Transporter_Ship_Via_Code
	, ISNULL(LP.TC_SHIPMENT_ID,'-1')				AS Shipment_ID
	, ISNULL(LP.TC_ORDER_ID,'-1')					AS Order_ID
	, ISNULL(LP.TC_LPN_ID,'-1')						AS OLPN_ID
	, ISNULL(LD.ITEM_ID,'-1')						AS SKU_Code1
	, ISNULL(LD.ITEM_ID,'-1')						AS SKU_Code2
	, ISNULL(LD.BATCH_NBR,'-1')						AS Lot_Code
	, '-1'											AS Location_ID1
	, '-1'											AS Location_ID2
	, ISNULL(OD.DWH_CUSTOMER_ID,'-1')				AS Customer_ID
	, OL.CUSTOMER_ITEM								AS Customer_Item
	, '-1'											AS Pickers_ID
	, ISNULL(CASE WHEN OD.DSG_SHIP_VIA = 'FD01' AND OD.ORDER_TYPE <> 'DS' THEN 'FD01' ELSE OD.ORDER_TYPE END,'-1')					AS Order_Type_Code
	, '-1'											AS OF_Issues_ID
	, '-1'											AS OF_Complaints_ID
	--, 'ShippedUnits'								AS Outbound_Type
	, 0												AS Number_Of_Orders_Shipped
	, 0												AS Number_Of_IFS_Order_Lines_Shipped
	, 0												AS Number_Of_WMS_Order_Lines_Shipped
	, 0												AS Number_Of_Parcels_Shipped
	, LD.SIZE_VALUE									AS Number_Of_Units_Shipped
	, 0												AS Number_Of_Orders_Not_Shipped
	, 0												AS Number_Of_Picks
	, 0												AS Number_Of_Complaints
	, 0												AS Number_Of_Issues
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
LEFT JOIN		(SELECT
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
LEFT JOIN		MANH.FACILITY_ALIAS	AS FA 
ON				FA.FACILITY_ALIAS_ID = OD.BILL_FACILITY_ALIAS_ID 
AND				FA.ActInd = 'Y'
WHERE			OD.DO_STATUS = '190' 
AND				LD.ActInd = 'Y'

UNION ALL

-- 4 Orders Not Shipped on time
SELECT			
	CONVERT(CHAR, VWO.Order_Planned_Ship_Date, 112)	AS DateKey
	, ISNULL(FA.FACILITY_ALIAS_ID,'-1')				AS Facility_ID
	, ISNULL(OD.D_COUNTRY_CODE,'-1')				AS Country_Code
	, ISNULL(OD.DSG_SHIP_VIA,'-1')					AS Transporter_Ship_Via_Code
	, ISNULL((SELECT DISTINCT TOP(1)
			LP.TC_SHIPMENT_ID
			FROM MANH.LPN_OUTBOUND AS LP
		WHERE LP.ORDER_ID = OD.ORDER_ID
		AND LP.ActInd = 'Y'
	),'-1')											AS Shipment_ID
	, ISNULL(OD.TC_ORDER_ID,'-1')					AS Order_ID
	, '-1'											AS OLPN_ID
	, '-1'											AS SKU_Code1
	, '-1'											AS SKU_Code2
	, '-1'											AS Lot_Code
	, '-1'											AS Location_ID1
	, '-1'											AS Location_ID2
	, ISNULL(OD.DWH_CUSTOMER_ID,'-1')				AS Customer_ID
	, '-1'											AS Customer_Item
	, '-1'											AS Pickers_ID
	, ISNULL(CASE WHEN OD.DSG_SHIP_VIA = 'FD01' AND OD.ORDER_TYPE <> 'DS' THEN 'FD01' ELSE OD.ORDER_TYPE END,'-1')					AS Order_Type_Code
	, '-1'											AS OF_Issues_ID
	, '-1'											AS OF_Complaints_ID
	--, 'NotShipped'								AS Outbound_Type
	, 0												AS Number_of_Orders_Shipped
	, 0												AS Number_Of_IFS_Order_Lines_Shipped
	, 0												AS Number_Of_WMS_Order_Lines_Shipped
	, 0												AS Number_Of_Parcels_Shipped
	, 0												AS Number_Of_Units_Shipped
	, 1												AS Number_Of_Orders_Not_Shipped
	, 0												AS Number_Of_Picks
	, 0												AS Number_Of_Complaints
	, 0												AS Number_Of_Issues
FROM			MANH.ORDERS AS OD 
INNER JOIN		Datamart.DM.D_Order AS VWO
ON				OD.TC_ORDER_ID	= VWO.Order_ID
AND				VWO.Order_Days_To_Late > 0
AND				VWO.Order_Planned_Ship_Date IS NOT NULL
LEFT JOIN		MANH.FACILITY_ALIAS	AS FA 
ON				FA.FACILITY_ALIAS_ID = OD.BILL_FACILITY_ALIAS_ID 
AND				FA.ActInd = 'Y'
WHERE			OD.ActInd = 'Y'

UNION ALL

-- 5 Number of OF Issues
SELECT			  
	CONVERT(CHAR, QI.OF_Issues_Date, 112)			AS DateKey
	, ISNULL(OD.Order_Facility_Code,'-1')			AS Facility_ID
	, ISNULL(OD.Order_Country_Code,'-1')			AS Country_Code
	, ISNULL(OD.Order_Ship_Via_Code,'-1')			AS Transporter_Ship_Via_Code
	, ISNULL(LP.TC_SHIPMENT_ID,'-1')				AS Shipment_ID
	, ISNULL(QI.OF_Issues_Order_ID,'-1')			AS Order_ID
	, ISNULL(QI.OF_Issues_OLPN_ID,'-1')				AS OLPN_ID
	, ISNULL(I1.ITEM_ID,'-1')						AS SKU_Code1
	, ISNULL(I2.ITEM_ID,'-1')						AS SKU_Code2
	, '-1'											AS Lot_Code
	, ISNULL(L1.LOCN_ID,'-1')						AS Location_ID1
	, ISNULL(L2.LOCN_ID,'-1')						AS Location_ID2
	, ISNULL(OD.Order_Customer_ID,'-1')				AS Customer_ID
	, '-1'											AS Customer_Item
	, ISNULL(QI.OF_Issues_Picker_ID,'-1')			AS Pickers_ID
	, ISNULL(CASE WHEN OD.Order_Ship_Via_Code = 'FD01' AND OD.Order_Type <> 'DS' THEN 'FD01' ELSE OD.Order_Type END,'-1')					AS Order_Type_Code
	, ISNULL(QI.OF_Issues_ID,'-1')					AS OF_Issues_ID
	, '-1'											AS OF_Complaints_ID
	--, 'Issues'									AS Outbound_Type
	, 0												AS Number_Of_Orders_Shipped
	, 0												AS Number_Of_IFS_Order_Lines_Shipped
	, 0												AS Number_Of_WMS_Order_Lines_Shipped
	, 0												AS Number_Of_Parcels_Shipped
	, 0												AS Number_Of_Units_Shipped
	, 0												AS Number_Of_Orders_Not_Shipped
	, 0												AS Number_Of_Picks
	, 0												AS Number_Of_Complaints
	, 1												AS Number_Of_Issues
FROM		Datamart.DM.D_OF_Issues AS QI
LEFT JOIN	Datamart.DM.D_Order AS OD
ON			OD.Order_ID = QI.OF_Issues_Order_ID
LEFT JOIN	MANH.LPN_OUTBOUND AS LP
ON			LP.TC_LPN_ID = QI.OF_Issues_OLPN_ID
AND			LP.ActInd = 'Y'
LEFT JOIN	MANH.ITEM_CBO I1
ON			I1.ITEM_NAME = QI.OF_Issues_Allocated_Item
AND			I1.ActInd = 'Y'
LEFT JOIN	MANH.ITEM_CBO I2
ON			I2.ITEM_NAME = QI.OF_Issues_Picked_Item
AND			I2.ActInd = 'Y'
LEFT JOIN	MANH.LOCN_HDR L1
ON			L1.DSP_LOCN = QI.OF_Issues_Location_Allocated
AND			L1.ActInd = 'Y'
LEFT JOIN	MANH.LOCN_HDR L2
ON			L2.DSP_LOCN = QI.OF_Issues_Location_Allocated
AND			L2.ActInd = 'Y'
UNION ALL

-- 6 Number of OF Complaints
SELECT			 
	CONVERT(CHAR, QI.OF_Complaints_Date, 112)		AS DateKey
	, ISNULL(OD.Order_Facility_Code,'-1')			AS Facility_ID
	, ISNULL(OD.Order_Country_Code,'-1')			AS Country_Code
	, ISNULL(OD.Order_Ship_Via_Code,'-1')			AS Transporter_Ship_Via_Code
	, ISNULL(LP.TC_SHIPMENT_ID,'-1')				AS Shipment_ID
	, ISNULL(QI.OF_Complaints_Order_ID,'-1')		AS Order_ID
	, ISNULL(QI.OF_Complaints_OLPN_ID,'-1')			AS OLPN_ID
	, ISNULL(I1.ITEM_ID,'-1')						AS SKU_Code1
	, ISNULL(I2.ITEM_ID,'-1')						AS SKU_Code2
	, ISNULL(QI.OF_Complaints_Allocated_Batch,'-1')	AS Lot_Code
	, '-1'											AS Location_ID1
	, '-1'											AS Location_ID2
	, ISNULL(OD.Order_Customer_ID,'-1')				AS Customer_ID
	, '-1'											AS Customer_Item
	, ISNULL(QI.OF_Complaints_Picker_ID,'-1')		AS Pickers_ID
	, ISNULL(CASE WHEN OD.Order_Ship_Via_Code = 'FD01' AND OD.Order_Type <> 'DS' THEN 'FD01' ELSE OD.Order_Type END,'-1')					AS Order_Type_Code
	, '-1'											AS OF_Issues_ID
	, ISNULL(QI.OF_Complaints_ID,'-1')				AS OF_Complaints_ID
	--, 'Complaints'								AS Outbound_Type
	, 0												AS Number_Of_Orders_Shipped
	, 0												AS Number_Of_IFS_Order_Lines_Shipped
	, 0												AS Number_Of_WMS_Order_Lines_Shipped
	, 0												AS Number_Of_Parcels_Shipped
	, 0												AS Number_Of_Units_Shipped
	, 0												AS Number_Of_Orders_Not_Shipped
	, 0												AS Number_Of_Picks
	, 1												AS Number_Of_Complaints
	, 0												AS Number_Of_Issues
FROM		Datamart.DM.D_OF_Complaints AS QI
LEFT JOIN	Datamart.DM.D_Order AS OD
ON			OD.Order_ID = QI.OF_Complaints_Order_ID
LEFT JOIN	MANH.LPN_OUTBOUND AS LP
ON			LP.TC_LPN_ID = QI.OF_Complaints_OLPN_ID
AND			LP.ActInd = 'Y'
LEFT JOIN	MANH.ITEM_CBO I1
ON			I1.ITEM_NAME = QI.OF_Complaints_Allocated_Item
AND			I1.ActInd = 'Y'
LEFT JOIN	MANH.ITEM_CBO I2
ON			I2.ITEM_NAME = QI.OF_Complaints_Picked_Item
AND			I2.ActInd = 'Y'

UNION ALL

-- 7 Measure Number of Pick Lines
SELECT			  
	CONVERT(CHAR, PT.CREATE_DATE_TIME, 112)			AS DateKey
	, ISNULL(OD.Order_Facility_Code,'-1')			AS Facility_ID
	, ISNULL(OD.Order_Country_Code,'-1')			AS Country_Code
	, ISNULL(OD.Order_Ship_Via_Code,'-1')			AS Transporter_Ship_Via_Code
	, ISNULL(LP.TC_SHIPMENT_ID,'-1')				AS Shipment_ID
	, ISNULL(OD.Order_ID,'-1')						AS Order_ID
	, ISNULL(PT.CNTR_NBR,'-1')						AS OLPN_ID
	, ISNULL(IC.ITEM_ID,'-1')						AS SKU_Code1
	, ISNULL(IC.ITEM_ID,'-1')						AS SKU_Code2
	, '-1'											AS Lot_Code
	, ISNULL(PT.FROM_LOCN, '-1')					AS Location_ID1
	, ISNULL(PT.FROM_LOCN, '-1')					AS Location_ID2
	, ISNULL(OD.Order_Customer_ID,'-1')				AS Customer_ID
	, '-1'											AS Customer_Item
	, ISNULL(CASE
		WHEN (PT.REF_FIELD_1 IS NULL) THEN PT.USER_ID
		ELSE RIGHT(PT.REF_FIELD_1, LEN(PT.REF_FIELD_1) - 1)
	END,'-1')										AS Pickers_ID
	, ISNULL(CASE WHEN OD.Order_Ship_Via_Code = 'FD01' AND OD.Order_Type <> 'DS' THEN 'FD01' ELSE OD.Order_Type END,'-1')					AS Order_Type_Code
	, '-1'											AS OF_Issues_ID
	, '-1'											AS OF_Complaints_ID
	--, 'PickLines'									AS Outbound_Type
	, 0												AS Number_Of_Orders_Shipped
	, 0												AS Number_Of_IFS_Order_Lines_Shipped
	, 0												AS Number_Of_WMS_Order_Lines_Shipped
	, 0												AS Number_Of_Parcels_Shipped
	, 0												AS Number_Of_Units_Shipped
	, 0												AS Number_Of_Orders_Not_Shipped
	, 1												AS Number_Of_Picks
	, 0												AS Number_Of_Complaints
	, 0												AS Number_Of_Issues
FROM		MANH.PROD_TRKG_TRAN AS PT
INNER JOIN	MANH.LPN_OUTBOUND LP
ON			LP.TC_LPN_ID = PT.CNTR_NBR
AND			LP.ActInd = 'Y'
INNER JOIN	Datamart.DM.D_Order AS OD
ON			OD.Order_ID = PT.TC_ORDER_ID
LEFT JOIN	MANH.ITEM_CBO IC
ON			IC.ITEM_ID = PT.ITEM_ID
AND			IC.ActInd = 'Y'
WHERE		PT.MENU_OPTN_NAME IN ('PackCD', 'RF QA incomplete','Pack Cubed Directed','RF Zone  Picking RTN')
*/