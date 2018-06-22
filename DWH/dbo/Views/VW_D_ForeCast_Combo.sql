
CREATE VIEW dbo.VW_D_ForeCast_Combo
AS

WITH CTE (
	ForeCast_Combo_Customer
	, ForeCast_Combo_Office
	, ForeCast_Combo_Combo_Name
	, ForeCast_Combo_Combo_Style
	, ForeCast_Combo_Combo_Update
	, ForeCast_Combo_Combo_ItemSplit
	, ForeCast_Combo_ComboItems
) AS (
	  SELECT CP.[CUSTOMER]
		   , CP.OFFICE
		   , CP.[COMBO_NAME]
		   , CP.[COMBO_STYLE]
		   , CP.[COMBO_UPDATE]
		   , CAST(LEFT(REPLACE(CP.[COMBO_ITEMS],'"',''), CHARINDEX(',',REPLACE(CP.[COMBO_ITEMS],'"','')+',')-1) AS VARCHAR(50)) COMBO_ITEMSSPLIT
		   , STUFF(REPLACE(CP.[COMBO_ITEMS],'"',''), 1, CHARINDEX(',',REPLACE(CP.[COMBO_ITEMS],'"','')+','), '') COMBO_ITEMS
	  FROM [FORECAST].[ComboPack] CP
	  WHERE CP.ActInd = 'Y'
	  UNION ALL
	  SELECT 
		ForeCast_Combo_Customer
		, ForeCast_Combo_Office
		, ForeCast_Combo_Combo_Name
		, ForeCast_Combo_Combo_Style
		, ForeCast_Combo_Combo_Update
		, CAST(LEFT(ForeCast_Combo_ComboItems, CHARINDEX(',',ForeCast_Combo_ComboItems+',')-1) AS VARCHAR(50)) COMBO_ITEMSSPLIT,
		STUFF(ForeCast_Combo_ComboItems, 1, CHARINDEX(',',ForeCast_Combo_ComboItems+','), '') COMBO_ITEMS
	  FROM CTE
	  WHERE ForeCast_Combo_ComboItems > ''
) 

SELECT
  C.ForeCast_Combo_Customer
  , C.ForeCast_Combo_Office
  , C.ForeCast_Combo_Combo_Name
  , C.ForeCast_Combo_Combo_Style
  , C.ForeCast_Combo_Combo_Update
  , CASE WHEN fs.ForeCast_Sales_Part_No IS NULL THEN C.ForeCast_Combo_Combo_Item ELSE fs.ForeCast_Sales_Part_No END AS ForeCast_Combo_Combo_Item
  , fs.ForeCast_Sales_Part_No			AS ForeCast_Combo_Combo_Check
  , C.ForeCast_Combo_Quantity
FROM (
	SELECT 
		OY.FACILITY_ID_WMS AS ForeCast_Combo_Customer
		, ForeCast_Combo_Office
		, ForeCast_Combo_Combo_Name
		, ForeCast_Combo_Combo_Style
		, ForeCast_Combo_Combo_Update
		, CASE WHEN CHARINDEX(':',ForeCast_Combo_Combo_ItemSplit) = 0 THEN ForeCast_Combo_Combo_ItemSplit ELSE PARSENAME(REPLACE(ForeCast_Combo_Combo_ItemSplit,':','.'),2) END AS ForeCast_Combo_Combo_Item
		, CASE WHEN CHARINDEX(':',ForeCast_Combo_Combo_ItemSplit) = 0 THEN 1 ELSE ISNULL(PARSENAME(REPLACE(ForeCast_Combo_Combo_ItemSplit,':','.'),1),1) END AS ForeCast_Combo_Quantity
	FROM		CTE
	INNER JOIN	FORECAST.Office_Facility OY
	ON			OY.OFFICE_CODE = CTE.ForeCast_Combo_Office
	AND			OY.ActInd = 'Y'
	UNION ALL
	SELECT        '-1', NULL, NULL, NULL, NULL, NULL, NULL
) C
LEFT JOIN [$(Datamart)].DM.D_ForeCast_Sales fs
ON fs.ForeCast_Sales_Office = C.ForeCast_Combo_Office
AND fs.ForeCast_Sales_Gen_Part_No = CASE 
				WHEN LEFT(C.ForeCast_Combo_Combo_Item, 3)='LFD'  THEN 'Label'
				WHEN LEFT(C.ForeCast_Combo_Combo_Item, 3)='PDF'  THEN 'PDF'
				WHEN IsNumeric(SUBSTRING(C.ForeCast_Combo_Combo_Item,1,6)) = 1 THEN SUBSTRING(C.ForeCast_Combo_Combo_Item,1,6)
				WHEN IsNumeric(SUBSTRING(C.ForeCast_Combo_Combo_Item,1,5)) = 1 THEN SUBSTRING(C.ForeCast_Combo_Combo_Item,1,5)
				WHEN IsNumeric(SUBSTRING(C.ForeCast_Combo_Combo_Item,1,4)) = 1 THEN SUBSTRING(C.ForeCast_Combo_Combo_Item,1,4)
				WHEN IsNumeric(SUBSTRING(C.ForeCast_Combo_Combo_Item,1,3)) = 1 THEN SUBSTRING(C.ForeCast_Combo_Combo_Item,1,3)  
				WHEN IsNUmeric(RIGHT(C.ForeCast_Combo_Combo_Item,5)) = 1 THEN RIGHT(C.ForeCast_Combo_Combo_Item,5)
				WHEN IsNUmeric(RIGHT(C.ForeCast_Combo_Combo_Item,4)) = 1 THEN RIGHT(C.ForeCast_Combo_Combo_Item,4)
				WHEN IsNUmeric(RIGHT(C.ForeCast_Combo_Combo_Item,3)) = 1 THEN RIGHT(C.ForeCast_Combo_Combo_Item,3)
				WHEN IsNUmeric(SUBSTRING(RIGHT(C.ForeCast_Combo_Combo_Item,5),1,4)) =1 THEN SUBSTRING(RIGHT(C.ForeCast_Combo_Combo_Item,5),1,4)
				WHEN IsNUmeric(SUBSTRING(RIGHT(C.ForeCast_Combo_Combo_Item,4),1,3)) =1 THEN SUBSTRING(RIGHT(C.ForeCast_Combo_Combo_Item,4),1,3)
				WHEN IsNUmeric(SUBSTRING(RIGHT(C.ForeCast_Combo_Combo_Item,6),1,4)) =1 THEN SUBSTRING(RIGHT(C.ForeCast_Combo_Combo_Item,6),1,4)
				WHEN IsNUmeric(SUBSTRING(RIGHT(C.ForeCast_Combo_Combo_Item,5),1,3)) =1 THEN SUBSTRING(RIGHT(C.ForeCast_Combo_Combo_Item,5),1,3)
				WHEN IsNUmeric(SUBSTRING(RIGHT(C.ForeCast_Combo_Combo_Item,7),1,4)) =1 THEN SUBSTRING(RIGHT(C.ForeCast_Combo_Combo_Item,7),1,4)
				WHEN IsNUmeric(SUBSTRING(RIGHT(C.ForeCast_Combo_Combo_Item,6),1,3)) =1 THEN SUBSTRING(RIGHT(C.ForeCast_Combo_Combo_Item,6),1,3)
				WHEN IsNUmeric(SUBSTRING(RIGHT(C.ForeCast_Combo_Combo_Item,8),1,4)) =1 THEN SUBSTRING(RIGHT(C.ForeCast_Combo_Combo_Item,8),1,4)
				WHEN IsNUmeric(SUBSTRING(RIGHT(C.ForeCast_Combo_Combo_Item,7),1,3)) =1 THEN SUBSTRING(RIGHT(C.ForeCast_Combo_Combo_Item,7),1,3)
				ELSE C.ForeCast_Combo_Combo_Item
			END