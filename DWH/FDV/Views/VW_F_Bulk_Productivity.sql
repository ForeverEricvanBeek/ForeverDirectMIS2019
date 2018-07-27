

create view [FDV].[VW_F_Bulk_Productivity] as 
--CASEPICKING
WITH CTE_INIT2 as
(select cast(PT3.BEGIN_DATE as date)																		AS DateKey
,PT3.USER_ID																								AS USER_ID											
,CONVERT(CHAR, PT3.BEGIN_DATE, 108)																			AS Start
,CONVERT(CHAR, PT3.END_DATE, 108)																			AS EIND
,LEAD(CONVERT(CHAR, PT3.BEGIN_DATE, 108),1,CONVERT(CHAR, PT3.BEGIN_DATE, 108))
     OVER
     (PARTITION BY CAST(PT3.BEGIN_DATE as DATE),PT3.[USER_ID]
	 ORDER BY CAST(PT3.BEGIN_DATE as DATE) ,PT3.[USER_ID],CONVERT(CHAR, PT3.BEGIN_DATE, 108) desc
     )																										AS Eind_Calc	
,PT3.CNTR_NBR																								AS LPN
,PT3.NBR_UNITS																								AS NBR_UNITS
, CASE
     WHEN LP.SINGLE_LINE_LPN = 'N' THEN 'CASEPICKING'
  END																										AS WRK_GRP
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
 AND			PT3.BEGIN_DATE > GETDATE()-365)

 ,CTE_INIT1 as 
(SELECT 
   cast(PT.BEGIN_DATE as date)																													as DateKey 
  ,PT.[USER_ID]																																	as [USER_ID]
  ,PT.CNTR_NBR																																	as LPN
  ,PT.NBR_UNITS																																	as NBR_UNITS
  ,CONVERT(CHAR, PT.BEGIN_DATE, 108)																											as Start
  ,CONVERT(CHAR, PT.END_DATE, 108)																												as [END]
  ,LEAD(CONVERT(CHAR, PT.BEGIN_DATE, 108),1,CONVERT(CHAR, PT.BEGIN_DATE, 108))
        OVER
		(PARTITION BY CAST(PT.BEGIN_DATE as DATE),PT.[USER_ID]
		 ORDER BY CAST(PT.BEGIN_DATE as DATE) ,PT.[USER_ID],CONVERT(CHAR, PT.BEGIN_DATE, 108) desc
        )																																		as Eind_Calc
  ,DATEDIFF(ss,LEAD(CONVERT(CHAR, PT.BEGIN_DATE, 108),1,CONVERT(CHAR, PT.BEGIN_DATE, 108))
           OVER
		   (PARTITION BY CAST(PT.BEGIN_DATE as DATE),PT.[USER_ID]
		    ORDER BY CAST(PT.BEGIN_DATE as DATE) ,PT.[USER_ID],CONVERT(CHAR, PT.BEGIN_DATE, 108) desc
           ),CONVERT(CHAR, PT.BEGIN_DATE, 108))																									as WORK_SEC	
   ,case when TH.TASK_TYPE='01' then '01_Tote_Replenish'
         when TH.TASK_TYPE='02' then '02_Pallet_Replenish'
		 when TH.TASK_TYPE='04' then '04_ONBEKEND'
     end																																		as WRK_GRP																									 																					  
  ,TH.TASK_TYPE																																	as WRK_GRP_DETAIL2
  FROM MANH.PROD_TRKG_TRAN PT
  
 join [MANH].[TASK_HDR] TH
  on
  TH.TASK_ID=PT.TASK_ID
  AND TH.INVN_NEED_TYPE='1'
  and TH.ActInd='Y'
   
  join MANH.UCL_USER UH
  on 
  PT.[USER_ID]=UH.[USER_NAME]
  and UH.ActInd='Y'
  and upper(UH.FAX_NUMBER)in ('OG_UI_INBO_ROLE','OG_UI_SUPE_ROLE')
 
  where  PT.BEGIN_DATE >  GETDATE()-365 )

Select C1.DateKey																							AS DateKey
,C1.USER_ID																									AS USER_ID
,C1.Start																									AS Start
,C1.Eind_Calc																								AS Eind_Calc																			
,C1.LPN																										AS LPN
,C1.NBR_UNITS																								AS NBR_UNITS
,DATEDIFF(ss,C1.Eind_Calc,C1.Start)																			AS Working_Sec
,CASE when DATEDIFF(ss,C1.Eind_Calc,C1.Start) > 800 then 0 else DATEDIFF(ss,C1.Eind_Calc,C1.Start) END  	AS Working_Sec_Corr
,C1.WRK_GRP																									AS WRK_GRP
from CTE_INIT1 C1
 
UNION
  
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