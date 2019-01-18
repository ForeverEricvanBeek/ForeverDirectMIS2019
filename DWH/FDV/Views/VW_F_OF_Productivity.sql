
CREATE VIEW FDV.VW_F_OF_Productivity
AS

SELECT 
  CONVERT(CHAR, PT.CREATE_DATE_TIME, 112)           AS DateKey
  , CONVERT(CHAR, PT.CREATE_DATE_TIME, 108)         AS TimeKey
  , ISNULL(LH.LOCN_ID, '-1') 						AS Location_ID
  , '-1'											AS Lane_ID
  , ISNULL(PT.CNTR_NBR, '-1')                       AS OLPN_ID
  , ISNULL(PT.TC_ORDER_ID, '-1')                    AS Order_ID
  , ISNULL(PT.ITEM_ID, '-1')						AS SKU_Code
  , ISNULL(SUBSTRING(PT.REF_FIELD_1,2,LEN(PT.REF_FIELD_1)), '-1')	AS Pickers_ID
  , PT.NBR_UNITS                                    AS Number_Of_Units
  , 1												AS Number_Of_Picks
  , 0												AS Number_Of_Packs
FROM         MANH.PROD_TRKG_TRAN PT
INNER JOIN   MANH.LOCN_HDR LH 
ON           PT.FROM_LOCN = LH.LOCN_ID
AND			 LH.ActInd = 'Y'
WHERE        PT.MODULE_NAME = 'Packing'
AND          PT.MENU_OPTN_NAME IN ('PackCD', 'RF QA incomplete','RF Zone  Picking RTN','Pack Cubed Directed')
