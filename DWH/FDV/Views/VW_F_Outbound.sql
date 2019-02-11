






CREATE VIEW [FDV].[VW_F_Outbound]
AS
--	1 Orders Shipped
SELECT			
	CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)		AS DateKey
	, ISNULL(OD.D_COUNTRY_CODE,'-1')				AS Country_Code
	, ISNULL(OD.DSG_SHIP_VIA,'-1')					AS Transporter_Ship_Via_Code
	, ISNULL(OD.TC_ORDER_ID,'-1')					AS Order_ID
	, '-1'											AS OLPN_ID
	, '-1'											AS SKU_Code1
	, '-1'											AS SKU_Code2
	, '-1'											AS Lot_Code
	, ISNULL(OD.DWH_CUSTOMER_ID,'-1')				AS Customer_ID
	, '-1'											AS FAM_Prod_ID
	, 1												AS Number_Of_Orders_Shipped
	, CO.Order_IFS_Order_Lines						AS Number_Of_IFS_Order_Lines_Shipped
	, CO.Order_Manh_Order_Lines						AS Number_Of_WMS_Order_Lines_Shipped
	, 0												AS Number_Of_Parcels_Shipped
	, 0												AS Number_Of_Units_Shipped
		
FROM			MANH.ORDERS AS OD
INNER JOIN		EXTRA.ORDERS_INFO CO
ON				CO.TC_Order_ID = OD.TC_ORDER_ID
AND				CO.ActInd = 'Y'
LEFT JOIN		MANH.FACILITY_ALIAS	AS FA 
ON				FA.FACILITY_ALIAS_ID = OD.BILL_FACILITY_ALIAS_ID 
AND				FA.ActInd = 'Y'
WHERE			OD.DO_STATUS = '190'
AND				OD.ActInd = 'Y'
AND				OD.ACTUAL_SHIPPED_DTTM >= DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) - 1, 0)



UNION ALL

--	2 Parcels Shipped
SELECT			  
	CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)	AS DateKey
	, ISNULL(OD.D_COUNTRY_CODE,'-1')				AS Country_Code
	, ISNULL(OD.DSG_SHIP_VIA,'-1')					AS Transporter_Ship_Via_Code
	, ISNULL(LP.TC_ORDER_ID,'-1')					AS Order_ID
	, ISNULL(LP.TC_LPN_ID,'-1')						AS OLPN_ID
	, '-1'											AS SKU_Code1
	, '-1'											AS SKU_Code2
	, '-1'											AS Lot_Code
	, ISNULL(OD.DWH_CUSTOMER_ID,'-1')				AS Customer_ID
	, '-1'											AS FAM_Prod_ID
	, 0												AS Number_Of_Orders_Shipped
	, 0												AS Number_Of_IFS_Order_Lines_Shipped
	, 0												AS Number_Of_WMS_Order_Lines_Shipped
	, 1												AS Number_Of_Parcels_Shipped
	, 0												AS Number_Of_Units_Shipped
	
	
FROM			MANH.LPN_OUTBOUND AS LP
INNER JOIN		MANH.ORDERS	AS OD 
ON				OD.ORDER_ID = LP.ORDER_ID 
AND				OD.ActInd = 'Y' 
LEFT JOIN		MANH.FACILITY_ALIAS AS FA 
ON				FA.FACILITY_ALIAS_ID = OD.BILL_FACILITY_ALIAS_ID 
AND				FA.ActInd = 'Y'
WHERE			OD.DO_STATUS = '190' 
AND				LP.ActInd = 'Y'
AND				OD.ACTUAL_SHIPPED_DTTM >=  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) - 1, 0)


UNION ALL

-- 3 Units Shipped
SELECT			
	CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)		AS DateKey
	, ISNULL(OD.D_COUNTRY_CODE,'-1')				AS Country_Code
	, ISNULL(OD.DSG_SHIP_VIA,'-1')					AS Transporter_Ship_Via_Code
	, ISNULL(LP.TC_ORDER_ID,'-1')					AS Order_ID
	, ISNULL(LP.TC_LPN_ID,'-1')						AS OLPN_ID
	, ISNULL(LD.ITEM_ID,'-1')						AS SKU_Code1
	, ISNULL(LD.ITEM_ID,'-1')						AS SKU_Code2
	, ISNULL(LD.BATCH_NBR,'-1')						AS Lot_Code
	, ISNULL(OD.DWH_CUSTOMER_ID,'-1')				AS Customer_ID
	, ISNULL(INVP.PART_PRODUCT_FAMILY,'-1')			AS FAM_Prod_ID
	, 0												AS Number_Of_Orders_Shipped
	, 0												AS Number_Of_IFS_Order_Lines_Shipped
	, 0												AS Number_Of_WMS_Order_Lines_Shipped
	, 0												AS Number_Of_Parcels_Shipped
	, LD.SIZE_VALUE									AS Number_Of_Units_Shipped
	
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
INNER JOIN		IFS.INVENTORY_PART INVP
ON				INVP.PART_NO=IC.ITEM_NAME
AND				INVP.ActInd='Y'
AND				INVP.CONTRACT='FD01'
AND				IC.ActInd='Y'
LEFT JOIN		MANH.FACILITY_ALIAS	AS FA 
ON				FA.FACILITY_ALIAS_ID = OD.BILL_FACILITY_ALIAS_ID 
AND				FA.ActInd = 'Y'
WHERE			OD.DO_STATUS = '190' 
AND				LD.ActInd = 'Y'
AND				OD.ACTUAL_SHIPPED_DTTM >=  DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) - 1, 0)