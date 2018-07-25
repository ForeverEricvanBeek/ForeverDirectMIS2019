





CREATE VIEW [FDV].[VW_F_OF_Productivity_QC_Repack]
AS

WITH CTE_INIT AS
(select
 cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) as date)										AS DateKey
,substring(SR.[User],2,6)																										AS PackUser
,CASE WHEN SR.Type = 1 THEN 'Repack' WHEN SR.Type = 2 THEN 'QC'	end																AS ACTION
,LAG(CASE WHEN SR.Type = 1 THEN 'Repack' WHEN SR.Type = 2 THEN 'QC'	end) 
 OVER 
 (ORDER BY cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS date)
	      ,substring(SR.[User],2,6)
	      ,cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS TIME))							AS ACTION_CHANGE
,SR.Lane																														AS Lane
,LAG(SR.Lane) 
 OVER 
(ORDER BY cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS date)
		 ,substring(SR.[User],2,6)
		 ,cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS TIME))							AS DIFF_Lane


,cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS TIME)										AS START
,LEAD(cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS TIME)
    ,1
	,cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS TIME)) 
 OVER
 (PARTITION BY cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS date)
 ,substring(SR.[User],2,6)
 ORDER BY cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS date)
		 ,substring(SR.[User],2,6)
		 ,cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS TIME)
        )																														AS EIND
 ,DATEDIFF(ss,(cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS TIME))
           ,LEAD(cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS TIME)
           ,1
	       ,cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS TIME)) 
 OVER
 (PARTITION BY cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS date)
 ,substring(SR.[User],2,6) 
 ORDER BY cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS date)
 ,substring(SR.[User],2,6)
 ,cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS TIME) DESC ))*-1							AS DIFF
 ,1																																AS Number_of_Packed								
 /*,case when		
 DATEDIFF(ss,(cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS TIME))
           ,LEAD(cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS TIME)
           ,1
	       ,cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS TIME)) 
 OVER
 (PARTITION BY cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS date)
 ,substring(SR.[User],2,6) 
 ORDER BY cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS date)
 ,substring(SR.[User],2,6)
 ,cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS TIME) DESC ))*-1 = 0 then 0
 when 
 DATEDIFF(ss,(cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS TIME))
           ,LEAD(cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS TIME)
           ,1
	       ,cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS TIME)) 
 OVER
 (PARTITION BY cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS date)
 ,substring(SR.[User],2,6) 
 ORDER BY cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS date)
 ,substring(SR.[User],2,6)
 ,cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS TIME) DESC ))*-1 > 300 and 
 SR.Type = 1 THEN 0	
  when 
 DATEDIFF(ss,(cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS TIME))
           ,LEAD(cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS TIME)
           ,1
	       ,cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS TIME)) 
 OVER
 (PARTITION BY cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS date)
 ,substring(SR.[User],2,6) 
 ORDER BY cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS date)
 ,substring(SR.[User],2,6)
 ,cast(CONVERT(DATETIME,STUFF(STUFF(STUFF(SR.TimeOut,13,0,':'),11,0,':'),9,0,' ')) AS TIME) DESC ))*-1 > 420 and 
 SR.Type = 2 THEN 0
  else 
 1 end																																AS Number_of_Packed*/
		 
FROM		SCHAEFER.Repack SR)

--SELECT * FROM CTE_INIT
--order by 1,2,5


,CTE_1 as
(select * 
,COUNT(CASE WHEN (CI.ACTION = 'Repack' and CI.DIFF > 420) THEN 1 -- 7 minuten pack t.b.v. uitsluiten pauzes 
			WHEN (CI.ACTION = 'QC' and CI.DIFF > 420) THEN 1     -- 7 minuten per QC t.b.v. uitsluiten pauzes
            WHEN CI.Lane <> CI.DIFF_Lane THEN 1
			WHEN CI.ACTION <> CI.ACTION_CHANGE THEN 1    END)
            OVER (ORDER BY CI.DateKey,CI.PackUser,CI.START
	        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)																	AS RN
from CTE_INIT CI) 

--SELECT * FROM CTE_1
--where PackUser ='51530'
--order by 1,2,8,10;

Select 
C1.DateKey as DateKey
,C1.PackUser as Pickers_ID
,C1.Lane as Lane
,C1.ACTION as Action
,min(C1.START) as Start_tijd
,max(C1.START) as Eind_tijd
,DATEDIFF(ss,min(C1.START),max(C1.START)) as Working_Sec
,sum(C1.Number_of_Packed) as Number_Of_Packs
from CTE_1 C1
--where C1.PackUser='51530'
Group by
C1.DateKey
,C1.PackUser
,C1.Lane
,C1.ACTION
,C1.RN
union all
select '1965-04-26',NULL,NULL,NULL,NULL,NULL,NULL,NULL