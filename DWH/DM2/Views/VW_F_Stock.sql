﻿

CREATE VIEW [DM2].[VW_F_Stock]
AS

SELECT
	YEAR(GETDATE() - 1) * 10000 + MONTH(GETDATE() - 1) * 100 + DAY(GETDATE() - 1) AS DateKey
	, SKU_Code, Lot_Code
	, Aging
	, SUM(Number_Of_Units) AS Number_Of_Units
	, SUM(Value_Of_Units) AS Value_Of_Units
FROM (SELECT
		i.ITEM_ID AS SKU_Code
		, i.BATCH_NBR AS Lot_Code
		, DATEDIFF(MM, GETDATE()
		, bm.XPIRE_DATE) AS Aging
		, i.ON_HAND_QTY AS Number_Of_Units
		, i.ON_HAND_QTY * IP.INVENTORY_VALUE AS Value_Of_Units
      FROM MANH.WM_INVENTORY AS i 
	  INNER JOIN MANH.BATCH_MASTER AS bm ON i.ITEM_ID = bm.ITEM_ID AND i.BATCH_NBR = bm.BATCH_NBR AND bm.ActInd = 'Y'
	  LEFT OUTER JOIN MANH.ITEM_CBO AS IC ON IC.ITEM_ID = bm.ITEM_ID AND IC.ActInd = 'Y'
	  LEFT OUTER JOIN (SELECT PART_NO, MAX(INVENTORY_VALUE) INVENTORY_VALUE FROM  IFS.INVENTORY_PART_UNIT_COST_SUM WHERE ActInd = 'Y' GROUP BY PART_NO) AS IP ON IP.PART_NO = IC.ITEM_NAME /*AND IP.LOT_BATCH_NO = BM.BATCH_NBR*/ 
      WHERE (i.ActInd = 'Y') AND (i.ON_HAND_QTY <> 0)
	  AND			i.Eff_Date >= GETDATE() -2
AND			i.End_Date >= GETDATE() -2
) AS a
GROUP BY SKU_Code, Lot_Code, Aging