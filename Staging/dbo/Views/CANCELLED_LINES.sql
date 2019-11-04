
CREATE VIEW dbo.CANCELLED_LINES
AS

--	4 Units Cancelled in IFS + Quantity
SELECT			
	OD.TC_ORDER_ID									AS TC_order_ID
	, N'ifsunit'									AS Issue
	, ISNULL(concat(IP.CONTRACT,CB.ITEM_ID),'-1')	AS SKU_Code
	, IP.PART_PRODUCT_FAMILY						AS Product_Family
	, OL.BUY_QTY_DUE								AS Units_Cancelled
	, 0											    AS Orders_Incomplete
	, 0     							            AS Unavailable_Units_Cancelled
FROM		    MANH.ORDERS OD
INNER JOIN		(SELECT
				    ML.ORDER_ID
					, MAX(SUBSTRING(ML.TC_ORDER_LINE_ID, 1,11)) AS IFS_ORDER_ID
				FROM DWH.MANH.ORDER_LINE_ITEM ML
				WHERE ML.ActInd = 'Y'
				GROUP BY
					ML.ORDER_ID
) ML
ON				ML.ORDER_ID = OD.ORDER_ID
INNER JOIN		(SELECT 
					O1.ORDER_NO
					, O1.CONTRACT
					, O1.CATALOG_NO AS ITEM_NAME
					, SUM(O1.BUY_QTY_DUE) AS BUY_QTY_DUE
		        FROM		DWH.IFS.CUSTOMER_ORDER_LINE O1
				WHERE		O1.STATE = 'Cancelled'
				AND			O1.ActInd = 'Y'
				AND			O1.ORDER_NO LIKE 'F%'
				GROUP BY
					O1.ORDER_NO
					, O1.CONTRACT
					, O1.CATALOG_NO
) OL 
ON			    OL.ORDER_NO = ML.IFS_ORDER_ID
INNER JOIN      DWH.MANH.ITEM_CBO CB
ON				CB.ITEM_NAME = OL.ITEM_NAME
AND				CB.ActInd = 'Y'
INNER JOIN		DWH.IFS.INVENTORY_PART IP
ON				IP.PART_NO = OL.ITEM_NAME
AND				IP.CONTRACT = OL.CONTRACT
AND				IP.ActInd = 'Y'
LEFT JOIN		DWH.EXTRA.ORDERS_INFO OI
ON				OI.TC_Order_ID = OD.TC_ORDER_ID
AND				OI.ActInd = 'Y'
WHERE			OD.DO_STATUS = '190'
AND				OD.ORDER_TYPE = 'OF'


UNION ALL


-- 5 Orders Incomplete
SELECT			
	OD.TC_ORDER_ID									AS TC_order_ID
	, N'orderincomplete'							AS Issue
	, '-1'											AS SKU_Code
	, '-1'											AS Product_Family
	, 0												AS Units_Cancelled
	, 1											    AS Orders_Incomplete
	, 0     							            AS Unavailable_Units_Cancelled
FROM		    MANH.ORDERS OD
INNER JOIN		(SELECT
					OL.ORDER_ID
					, OL.ITEM_NAME
					, MAX(OL.CUSTOMER_ITEM) AS CUSTOMER_ITEM
				 FROM		DWH.MANH.ORDER_LINE_ITEM OL
				 WHERE 		OL.ActInd = 'Y' 
				 AND		OL.IS_CANCELLED = 1
				 GROUP BY
					  OL.ORDER_ID
					, OL.ITEM_NAME
) OL 
ON				OL.ORDER_ID = OD.ORDER_ID
INNER JOIN      DWH.MANH.ITEM_CBO CB
ON				CB.ITEM_NAME = OL.ITEM_NAME
AND				CB.ActInd = 'Y'
WHERE			OD.DO_STATUS = '190'
AND				OD.ORDER_TYPE = 'OF'
GROUP BY
	OD.TC_ORDER_ID
	
UNION ALL

-- 6 Number Items cancelled  in Manhattan
SELECT			
	OD.TC_ORDER_ID									AS TC_order_ID
	, N'unitcancelled'								AS Issue
	, ISNULL(Concat(SH.CONTRACT,CB.ITEM_ID),'-1')	AS SKU_Code
	, IP.PART_PRODUCT_FAMILY						AS Product_Family
	, 0											    AS Units_Cancelled
	, 0											    AS Orders_Incomplete
	, 1        							            AS Unavailable_Units_Cancelled
FROM			MANH.ORDERS OD
INNER JOIN		DWH.IFS.SHIPMENT SH
ON				SH.SHIPMENT_ID = OD.TC_ORDER_ID
AND				SH.ActInd = 'Y'
AND				SH.IsDeleted = 'N'
INNER JOIN		(SELECT
                    OL.ORDER_ID
					, OL.ITEM_NAME
					, MAX(OL.CUSTOMER_ITEM) AS CUSTOMER_ITEM
				 FROM		DWH.MANH.ORDER_LINE_ITEM OL
				 WHERE 		OL.ActInd = 'Y' 
				 AND		OL.IS_CANCELLED = 1
				 GROUP BY
					  OL.ORDER_ID
					, OL.ITEM_NAME
) OL ON			OL.ORDER_ID = OD.ORDER_ID
AND				OL.ITEM_NAME = OL.ITEM_NAME 
INNER JOIN      DWH.MANH.ITEM_CBO CB
ON				CB.ITEM_NAME = OL.ITEM_NAME
AND				CB.ActInd = 'Y'
INNER JOIN		DWH.IFS.INVENTORY_PART IP
ON				IP.PART_NO = OL.ITEM_NAME
AND				IP.CONTRACT = SH.CONTRACT
AND				IP.ActInd = 'Y'
WHERE			OD.DO_STATUS = '190'
AND				OD.ORDER_TYPE = 'OF'