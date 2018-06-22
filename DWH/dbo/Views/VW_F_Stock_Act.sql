
CREATE VIEW VW_F_Stock_Act
AS
--	Allocated stock
SELECT
	YEAR(GETDATE() - 1) * 10000 + MONTH(GETDATE() - 1) * 100 + DAY(GETDATE() - 1) AS DateKey
	, SKU_Code
	, Lot_Code
	, ILPN_ID
	, Aging
	, Location_Display_Location
	, SUM(Number_Of_Units) AS Number_Of_Units
	, SUM(Value_Of_Units) AS Value_Of_Units
FROM (SELECT
		i.ITEM_ID AS SKU_Code
		, i.BATCH_NBR AS Lot_Code
		, DATEDIFF(MM, GETDATE()
		, bm.XPIRE_DATE) AS Aging
		, i.LPN_ID AS ILPN_ID
		, l.DSP_LOCN AS Location_Display_Location
		, i.ON_HAND_QTY AS Number_Of_Units
		, i.ON_HAND_QTY * IP.INVENTORY_VALUE AS Value_Of_Units
      FROM MANH.WM_INVENTORY AS i 
	  LEFT JOIN MANH.BATCH_MASTER AS bm ON i.ITEM_ID = bm.ITEM_ID AND i.BATCH_NBR = bm.BATCH_NBR AND bm.ActInd = 'Y' 
	  LEFT JOIN MANH.LOCN_HDR AS l ON i.LOCATION_ID = l.LOCN_ID AND l.ActInd = 'Y'
	  LEFT OUTER JOIN MANH.ITEM_CBO AS IC ON IC.ITEM_ID = bm.ITEM_ID AND IC.ActInd = 'Y'
	  LEFT OUTER JOIN (SELECT PART_NO, MAX(INVENTORY_VALUE) INVENTORY_VALUE FROM  IFS.INVENTORY_PART_UNIT_COST_SUM WHERE ActInd = 'Y' GROUP BY PART_NO) AS IP ON IP.PART_NO = IC.ITEM_NAME /*AND IP.LOT_BATCH_NO = BM.BATCH_NBR*/ 
      WHERE (i.ActInd = 'Y') AND (i.ON_HAND_QTY <> 0)
) AS a
GROUP BY SKU_Code, Lot_Code, Aging, Location_Display_Location, ILPN_ID