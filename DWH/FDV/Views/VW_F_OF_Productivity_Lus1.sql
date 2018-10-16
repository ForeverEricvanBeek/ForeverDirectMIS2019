





CREATE VIEW [FDV].[VW_F_OF_Productivity_Lus1]
AS
--Toelichting:
--Initiele data selectie
WITH CTE_INIT AS 
(
SELECT 
   --CONVERT(CHAR, PT.CREATE_DATE_TIME, 112)																												AS DateKey
  cast(PT.CREATE_DATE_TIME as date)																													    AS DateKey
  ,CONVERT(CHAR, PT.CREATE_DATE_TIME, 108)																												AS TimeKey
  ,LEAD(CONVERT(CHAR, PT.CREATE_DATE_TIME, 108),1,CONVERT(CHAR, PT.CREATE_DATE_TIME, 108)) 
         OVER
        (PARTITION BY CONVERT(CHAR, PT.CREATE_DATE_TIME, 112),SUBSTRING(PT.REF_FIELD_1,2,LEN(PT.REF_FIELD_1))
		 ORDER BY CONVERT(CHAR, PT.CREATE_DATE_TIME, 112),SUBSTRING(PT.REF_FIELD_1,2,LEN(PT.REF_FIELD_1)),CONVERT(CHAR, PT.CREATE_DATE_TIME, 108)
        )																																				AS END_TIME
  ,DATEDIFF(ss,CONVERT(CHAR, PT.CREATE_DATE_TIME, 108),LEAD(CONVERT(CHAR, PT.CREATE_DATE_TIME, 108),1,CONVERT(CHAR, PT.CREATE_DATE_TIME, 108))
		OVER
        (PARTITION BY CONVERT(CHAR, PT.CREATE_DATE_TIME, 112),SUBSTRING(PT.REF_FIELD_1,2,LEN(PT.REF_FIELD_1)) 
		ORDER BY CONVERT(CHAR, PT.CREATE_DATE_TIME, 112),SUBSTRING(PT.REF_FIELD_1,2,LEN(PT.REF_FIELD_1)),CONVERT(CHAR, PT.CREATE_DATE_TIME, 108) desc
        ))*-1																																            AS DIFF
  ,ISNULL(LH.LOCN_ID, '-1')																																AS Location_ID
  ,CASE 
   WHEN LH.AISLE IN ('35','36') THEN 'Lus 1'
   WHEN LH.AISLE in ('37','38') THEN 'Lus 2' 
   WHEN LH.AISLE in ('39','40') THEN 'Lus 3'
   WHEN LH.AISLE IN ('41','42') THEN 'Lus 4'
   WHEN LH.AISLE IN ('43','44','45', '46') THEN 'Lus 5'
   END																																					AS Lus
  ,LAG(CASE 
       WHEN LH.AISLE IN ('35','36') THEN 'Lus 1'
       WHEN LH.AISLE in ('37','38') THEN 'Lus 2' 
       WHEN LH.AISLE in ('39','40') THEN 'Lus 3'
       WHEN LH.AISLE IN ('41','42') THEN 'Lus 4'
       WHEN LH.AISLE IN ('43','44','45', '46') THEN 'Lus 5'
       END ,1,0) 
	   OVER 
	  (ORDER BY CONVERT(CHAR, PT.CREATE_DATE_TIME, 112),SUBSTRING(PT.REF_FIELD_1,2,LEN(PT.REF_FIELD_1)),CONVERT(CHAR, PT.CREATE_DATE_TIME, 108))		AS DIFF_LUS
  , ISNULL(SUBSTRING(PT.REF_FIELD_1,2,LEN(PT.REF_FIELD_1)), '-1')																						AS Pickers_ID
  , PT.NBR_UNITS																																		AS Number_Of_Units
  , 1																																					AS Number_Of_Picks
  
  FROM         MANH.PROD_TRKG_TRAN PT
  INNER JOIN   MANH.LOCN_HDR LH 
  ON           PT.FROM_LOCN = LH.LOCN_ID
  AND			 LH.ActInd = 'Y'
  LEFT JOIN		MANH.SYS_CODE AS SC 
  ON				LH.LOCN_CLASS = SC.CODE_ID 
  AND				SC.CODE_TYPE = '068' 
  AND				SC.REC_TYPE = 'S' 
  AND				SC.ActInd = 'Y'
  WHERE        PT.MODULE_NAME = 'Packing'
  AND          PT.MENU_OPTN_NAME IN ('PackCD', 'RF QA incomplete','RF Zone  Picking RTN','Pack Cubed Directed')
  AND		   YEAR(PT.CREATE_DATE_TIME) > = YEAR(GETDATE())-2
  AND		   SUBSTRING(PT.REF_FIELD_1,2,LEN(PT.REF_FIELD_1)) <> '-1')
  
-- beperkte dataset tbv test
--and CONVERT(CHAR, PT.CREATE_DATE_TIME, 112) in ('20180319', '20180320')
--and SUBSTRING(PT.REF_FIELD_1,2,LEN(PT.REF_FIELD_1)) in ('52450','52530','51050','51310','53310', '51920'))
 
 
--Counter t.b.v groepering op basis van picktijd en van luswissel

,CTE_1 as
(select * 
,COUNT(CASE WHEN CI.DIFF > 300 THEN 1 --Tijd per pick t.b.v. uitsluiten pauzes 
            WHEN CI.Lus <> CI.DIFF_LUS THEN 1 END)
            OVER (ORDER BY CI.DateKey,CI.Pickers_ID,CI.TimeKey
	        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)																							AS RN
from CTE_INIT CI) 
--    select * from CTE_1 C1


SELECT
     C1.DateKey											AS DateKey
   , C1.Pickers_ID										AS Pickers_ID
   , C1.Lus												AS Lus
   , MIN(C1.TimeKey)									AS Starttijd
   , MAX(C1.TimeKey)									AS Eindtijd
   , DATEDIFF(SS,MIN(C1.TimeKey),MAX(C1.TimeKey))		AS Working_Sec
   , SUM(C1.Number_Of_Units)							AS Number_Of_Units
   , SUM(C1.Number_Of_Picks)							AS Number_Of_Picks
   FROM CTE_1 C1
   GROUP BY
   C1.DateKey
   , C1.Pickers_ID
   , C1.Lus
   , C1.RN
   UNION ALL
   SELECT '1965-04-26','-1',NULL,NULL,NULL,NULL,NULL,NULL;