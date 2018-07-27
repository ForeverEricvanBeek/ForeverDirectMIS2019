
create view [FDV].[VW_F_Bulk_Productivity_CasePick] as 
--CASEPICKING
WITH CTE_INIT2 as
(select cast(PT3.BEGIN_DATE as date)																	AS DateKey
,PT3.USER_ID																							AS USER_ID											
,CONVERT(CHAR, PT3.BEGIN_DATE, 108)																	AS Start
,CONVERT(CHAR, PT3.END_DATE, 108)																	AS EIND
,LEAD(CONVERT(CHAR, PT3.BEGIN_DATE, 108),1,CONVERT(CHAR, PT3.BEGIN_DATE, 108))
     OVER
     (PARTITION BY CAST(PT3.BEGIN_DATE as DATE),PT3.[USER_ID]
	 ORDER BY CAST(PT3.BEGIN_DATE as DATE) ,PT3.[USER_ID],CONVERT(CHAR, PT3.BEGIN_DATE, 108) desc
     )																								AS Eind_Calc	
,PT3.CNTR_NBR																						AS LPN
,PT3.NBR_UNITS																						AS NBR_UNITS
, CASE
     WHEN LP.SINGLE_LINE_LPN = 'N' THEN 'CASEPICKING'
  END																								AS WRK_GRP
  FROM          [MANH].[PROD_TRKG_TRAN] PT3
 INNER JOIN     [MANH].[LPN_OUTBOUND] LP 
 ON             LP.TC_LPN_ID = PT3.CNTR_NBR 
 AND            LP.CONTAINER_TYPE IN ('PAL' ,'EUR')
 AND            LP.LPN_FACILITY_STATUS BETWEEN 10 AND 91
 AND			LP.SINGLE_LINE_LPN = 'N'
 AND			LP.ActInd='Y'
 INNER JOIN MANH.UCL_USER UH1
 on 
 PT3.[USER_ID]=UH1.[USER_NAME]
 and UH1.ActInd='Y'
 and upper(UH1.FAX_NUMBER)in ('OG_UI_INBO_ROLE','OG_UI_SUPE_ROLE')
 WHERE          PT3.TRAN_TYPE = '500'
 AND            PT3.TRAN_CODE = '001'
 --AND             PT.NBR_UNITS > 0
 AND			PT3.BEGIN_DATE > GETDATE()-365)

 select	C2.DateKey
	,C2.USER_ID	
	,C2.Start
	,C2.Eind_Calc
	,C2.LPN
	,C2.NBR_UNITS
    ,DATEDIFF(ss,C2.Eind_Calc,C2.Start)																			AS Working_Sec
    ,CASE when DATEDIFF(ss,C2.Eind_Calc,C2.Start) > 800 then 0 else DATEDIFF(ss,C2.Eind_Calc,C2.Start) END  	AS Working_Sec_Corr
   , C2.WRK_GRP
from CTE_INIT2 C2

 UNION ALL
   SELECT '1965-04-26','UNKNOWN','-1','-1','-1','-1','-1','-1','UNKNOWN';