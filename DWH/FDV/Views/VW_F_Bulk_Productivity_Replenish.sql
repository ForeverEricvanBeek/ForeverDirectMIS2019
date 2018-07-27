
create view [FDV].[VW_F_Bulk_Productivity_Replenish] as 
--REPLENISH_OF
WITH CTE_INIT1 as
(SELECT 
   cast(PT.BEGIN_DATE as date)																													as DateKey 
  ,PT.[USER_ID]																																	as [USER_ID]
  ,PT.CNTR_NBR																																	as CNTR_NBR
  ,PT.NBR_UNITS																																	as NBR_UNITS
  ,CONVERT(CHAR, PT.BEGIN_DATE, 108)																											as START
  ,LEAD(CONVERT(CHAR, PT.BEGIN_DATE, 108),1,CONVERT(CHAR, PT.BEGIN_DATE, 108))
        OVER
		(PARTITION BY CAST(PT.BEGIN_DATE as DATE),PT.[USER_ID]
		 ORDER BY CAST(PT.BEGIN_DATE as DATE) ,PT.[USER_ID],CONVERT(CHAR, PT.BEGIN_DATE, 108) desc
        )																																		as EIND_CALC
  ,DATEDIFF(ss,LEAD(CONVERT(CHAR, PT.BEGIN_DATE, 108),1,CONVERT(CHAR, PT.BEGIN_DATE, 108))
           OVER
		   (PARTITION BY CAST(PT.BEGIN_DATE as DATE),PT.[USER_ID]
		    ORDER BY CAST(PT.BEGIN_DATE as DATE) ,PT.[USER_ID],CONVERT(CHAR, PT.BEGIN_DATE, 108) desc
           ),CONVERT(CHAR, PT.BEGIN_DATE, 108))																									as DIFF_1	
   ,'Replenish_OF'																																as WRK_GRP
   ,case when LH.AISLE in ('40','41') then 'Palet_Replenish'
        when LH.AISLE is null then 'Pallet_Replenish'
		else 'Tote_Replenish' end																												as WRK_GRP_DETAIL																									 																					  

  FROM MANH.PROD_TRKG_TRAN PT
  
  left join [MANH].[TASK_HDR] TH
  on
  TH.TASK_ID=PT.TASK_ID
  AND TH.INVN_NEED_TYPE='1'
  
  left join [MANH].[LOCN_HDR] LH
  on
  LH.LOCN_ID=PT.TO_LOCN
  
  join MANH.UCL_USER UH
  on 
  PT.[USER_ID]=UH.[USER_NAME]
  and UH.ActInd='Y'
  and upper(UH.FAX_NUMBER)in ('OG_UI_INBO_ROLE','OG_UI_SUPE_ROLE')
 
  where  PT.BEGIN_DATE >  GETDATE()-365 
  and (PT.MODULE_NAME= 'Replenish' and PT.MENU_OPTN_NAME in ('Pallet Pull iLPN List','FillActvTroll','FillActive','Pull iLPN List')
  or (PT.MODULE_NAME= 'Invn Mvmt' and PT.MENU_OPTN_NAME in ('User Directed P/A') and PT.CNTR_NBR in (select PT2.CNTR_NBR 
																								    from MANH.PROD_TRKG_TRAN PT2
																									where PT2.MODULE_NAME= 'Replenish' and PT2.MENU_OPTN_NAME 
																									in ('Pallet Pull iLPN List','FillActvTroll','FillActive','Pull iLPN List')
																									and  PT2.BEGIN_DATE>  GETDATE()-365))))

select C1.DateKey																					as DateKey
      ,C1.[USER_ID]																					as [USER_ID]
      ,C1.START																						as Start
      ,C1.EIND_CALC																					as Eind_Calc
      ,C1.[CNTR_NBR]																				as LPN
	  ,C1.NBR_UNITS																					as NBR_UNITS
      ,C1.DIFF_1																					as Working_Sec
      ,CASE WHEN C1.DIFF_1> '800' then '0' else DIFF_1 end											as Working_Sec_Corr
      ,C1.WRK_GRP																					as WRK_GRP
	  ,C1.WRK_GRP_DETAIL																			as WRK_GRP_DETAIL
 from CTE_INIT1 C1
-- order by 9,1,2,3
-- OFFSET 0 ROWS
 UNION ALL
   SELECT '1965-04-26','UNKNOWN','-1','-1','-1','-1','-1','-1','UNKNOWN','UNKNOWN';