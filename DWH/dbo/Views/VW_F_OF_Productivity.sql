

CREATE VIEW [dbo].[VW_F_OF_Productivity]
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

UNION ALL

SELECT
  CONVERT(CHAR, CAST(CAST(SUBSTRING(RP.TimeIn,1,4) AS NVARCHAR(4))+N'-'+CAST(SUBSTRING(RP.TimeIn,5,2) AS NVARCHAR(2))+N'-'+CAST(SUBSTRING(RP.TimeIn,7,2) AS NVARCHAR(2)) AS DATE), 112) AS DateKey
  , CAST(SUBSTRING(RP.TimeIn,9,2) AS NVARCHAR(2))+N':'+CAST(SUBSTRING(RP.TimeIn,11,2) AS NVARCHAR(2))+N':'+CAST(SUBSTRING(RP.TimeIn,13,2) AS NVARCHAR(2))			AS TimeKey
  , '-1'											AS Location_ID
  , CAST(Lane AS NVARCHAR(50)) + '-' + CASE 
	WHEN Type = 1 THEN 'Packing'
	WHEN Type = 2 THEN 'QC'
	ELSE 'Unknown'
  END												AS Lane_ID
  , RP.OLPN											AS OLPN_ID
  , RP.[Order]										AS Order_ID
  , '-1'											AS SKU_Code
  , PI.Picker_ID									AS Pickers_ID 
  , RP.Eaches										AS Number_Of_Units
  , 0												AS Number_Of_Picks
  , 1												AS Number_Of_Packs
FROM SCHAEFER.Repack RP
INNER JOIN	WEB.Picker PI
ON			PI.Picker_ID = SUBSTRING(RP.[User],2,5)
AND			PI.ActInd = 'Y'
WHERE RP.ActInd = 'Y'

UNION ALL
SELECT '-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL, NULL