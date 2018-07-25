--	2 Parcels Staged op basis van Actual_Shipped
Create view FDV.Parcel as
(SELECT			  
	CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)	    AS DateKey
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
	, 1												AS Number_Of_Parcels_Staged
	, 0												AS Number_Of_Units_Shipped
	, 0												AS Number_Of_Orders_Not_Shipped
	, 0												AS Number_Of_Picks
	, 0												AS Number_Of_Complaints
	, 0												AS Number_Of_Issues
	, 0 											AS Number_Of_Parcels_Planned
FROM			MANH.LPN_OUTBOUND AS LP
INNER JOIN		MANH.ORDERS	AS OD 
ON				OD.ORDER_ID = LP.ORDER_ID 
AND				OD.ActInd = 'Y' 
LEFT JOIN		MANH.FACILITY_ALIAS AS FA 
ON				FA.FACILITY_ALIAS_ID = OD.BILL_FACILITY_ALIAS_ID 
AND				FA.ActInd = 'Y'
WHERE			OD.DO_STATUS > '160' 
AND				LP.ActInd = 'Y'
AND				OD.ORDER_TYPE ='OF'
and CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)> '20180620'
union
--Parcels planned op basis van Planned Ship Date
SELECT			  
	CONVERT(CHAR, VWO.Order_Planned_Ship_Date, 112)	AS DateKey
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
	, 0												AS Number_Of_Parcels_Staged
	, 0												AS Number_Of_Units_Shipped
	, 0												AS Number_Of_Orders_Not_Shipped
	, 0												AS Number_Of_Picks
	, 0												AS Number_Of_Complaints
	, 0												AS Number_Of_Issues
	, 1												AS Number_Of_Parcels_Planned
FROM			MANH.LPN_OUTBOUND AS LP
INNER JOIN		MANH.ORDERS	AS OD 
ON				OD.ORDER_ID = LP.ORDER_ID 
AND				OD.ActInd = 'Y' 
and				OD.ORDER_TYPE='OF'
and				LP.ActInd='Y'
INNER JOIN		ForeverData01.DM.D_Order AS VWO
ON				OD.TC_ORDER_ID	= VWO.Order_ID
AND				VWO.Order_Days_Too_Late = 0
AND				VWO.Order_Planned_Ship_Date IS NOT NULL
LEFT JOIN		MANH.FACILITY_ALIAS AS FA 
ON				FA.FACILITY_ALIAS_ID = OD.BILL_FACILITY_ALIAS_ID 
AND				FA.ActInd = 'Y'
AND				LP.ActInd = 'Y'
and             CONVERT(CHAR, VWO.Order_Planned_Ship_Date, 112)='20180620')