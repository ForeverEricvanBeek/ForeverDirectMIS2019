
CREATE VIEW VW_C_Item
AS

SELECT
  IC.ITEM_ID								AS ItemID
  , IC.ITEM_NAME							AS ItemName
  , IC.DESCRIPTION							AS ItemDescription
  , IC.ITEM_IMAGE_FILENAME					AS ItemImage
  , IC.Eff_Date
FROM			MANH.ITEM_CBO IC
WHERE			IC.ActInd = 'Y'
--AND				IC.Eff_Date >= GETDATE() - 5