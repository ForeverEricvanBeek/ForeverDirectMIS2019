





CREATE VIEW [FDV].[VW_F_Verzuim]
AS
WITH CTE_INT
AS
(SELECT distinct(VL.[Medewerker])
      ,VL.[VerzuimmeldingID] 
      ,VL.[DatumTijd] --Aanvang_Periode
      ,VL.[Aanwezigheid]
      ,VL.[AanwezigheidAT]
      ,VL.[Omschrijving]
      ,VL.[EinddatumVerzuim]
	
  FROM AFAS.DWH_Medewerker_verzuimverloop VL
  where VL.ActInd='Y'
  --and VL.[VerzuimmeldingID]='384'
  --order by 3 asc
)
,CTE_1 as 
(SELECT C_INT.[Medewerker]
      ,C_INT.[VerzuimmeldingID] 
      ,C_INT.[DatumTijd] --Aanvang_Periode
	  ,LEAD(C_INT.DatumTijd,1,C_INT.DatumTijd)
	  over
	  (partition by C_INT.[VerzuimmeldingID] order by C_INT.DatumTijd) as Eind_periode 
	  ,VM.VerwachteEinddatum as VerwachteEinddatum 
      ,C_INT.[Aanwezigheid]
      ,C_INT.[AanwezigheidAT]
      ,C_INT.[Omschrijving]
      ,C_INT.[EinddatumVerzuim]
      ,ROW_NUMBER() over (partition by  C_INT.[VerzuimmeldingID] order by C_INT.DatumTijd) as RN  
	
  FROM  CTE_INT C_INT
  
  join AFAS.DWH_Medewerker_verzuimmelding VM
  on 
  C_INT.VerzuimmeldingID=VM.VerzuimmeldingID
  and VM.ActInd='Y'
 -- and VL.ActInd='Y'
  where 1=1 
 -- and VL.ActInd='Y'
  --and C_INT.[VerzuimmeldingID] ='384'
  )
  --select * from CTE_1
 ,CTE_2 as
  (select C1.Medewerker
  ,C1.VerzuimmeldingID
  ,C1.DatumTijd as Start_periode
 /* ,Case when C1.EinddatumVerzuim is null and C1.DatumTijd=C1.Eind_periode and RN<>1 or C1.Eind_periode>cast(getdate() as date) then dateadd(dd,-1,cast(getdate() as date)) 
        when C1.EinddatumVerzuim is null and C1.DatumTijd=C1.Eind_periode and RN=1 and max(RN) over (partition by VerzuimmeldingID)>1 then C1.Eind_periode
		when C1.EinddatumVerzuim is null and C1.DatumTijd=C1.Eind_periode and RN=1 and max(RN) over (partition by VerzuimmeldingID)=1 then dateadd(dd,-1,cast(getdate() as date))
		when C1.EinddatumVerzuim is null and C1.DatumTijd=C1.Eind_periode and RN<>1 and max(RN) over (partition by VerzuimmeldingID)>1 then dateadd(dd,-1,cast(getdate() as date))
   else C1.Eind_periode end as Eind_periode*/
   ,Case when C1.EinddatumVerzuim is null and C1.DatumTijd=C1.Eind_periode and RN<>1 or C1.Eind_periode>cast(getdate() as date) then cast(getdate() as date) 
        when C1.EinddatumVerzuim is null and C1.DatumTijd=C1.Eind_periode and RN=1 and max(RN) over (partition by VerzuimmeldingID)>1 then C1.Eind_periode
		when C1.EinddatumVerzuim is null and C1.DatumTijd=C1.Eind_periode and RN=1 and max(RN) over (partition by VerzuimmeldingID)=1 then cast(getdate() as date)
		when C1.EinddatumVerzuim is null and C1.DatumTijd=C1.Eind_periode and RN<>1 and max(RN) over (partition by VerzuimmeldingID)>1 then cast(getdate() as date)
   else C1.Eind_periode end as Eind_periode
  ,C1.VerwachteEinddatum
  ,C1.EinddatumVerzuim
  ,C1.Aanwezigheid*0.01 as Aanwezigheid
  ,(100-C1.Aanwezigheid)*0.01 as Afwezigheid
  , MR.FTE
  ,MF.Kostenplaats
  ,MF.Orgeenheid
  ,MF.FunctieCode
  ,isnull(MC.DienstbetrekkingCode, '-1') as DienstbetrekkingCode 
  ,ROW_NUMBER() over (partition by C1.VerzuimmeldingID order by C1.DatumTijd) as RN
  ,max(C1.RN) over (partition by VerzuimmeldingID) M_RN
 
  from CTE_1 C1 
  
  left join [AFAS].[DWH_Medewerker_Roosters] MR
  on
  MR.Medewerker=C1.Medewerker
  and
  C1.DatumTijd between MR.BegindatumRooster and isnull(MR.EinddatumRooster, cast(getdate() as date)) 
  and MR.ActInd='Y'
  
  left join [AFAS].[DWH_Medewerker_Orgeenheid_functie] MF
  on
  C1.Medewerker=MF.Medewerker
  and C1.DatumTijd between MF.Begindatum and ISNULL(MF.Einddatum,cast(getdate() as date))
  and MF.ActInd='Y' 
 
  left join [AFAS].[DWH_Medewerker_Contracten] MC
  on
  C1.Medewerker=MC.Medewerker
  and C1.DatumTijd between  MC.DatumBeginContract and isnull(MC.DatumEindContract,cast(getdate() as date)))
 -- where C1.VerzuimmeldingID in ('268','447','244','506', '544','565','576','588','589'))
  
  
  select * from CTE_2 C2
 -- where C2.VerzuimmeldingID='384'
  group by 
   C2.Medewerker
  ,C2.VerzuimmeldingID
  ,C2.Start_periode
  ,C2.Eind_periode 
  ,C2.VerwachteEinddatum
  ,C2.EinddatumVerzuim
  ,C2.Aanwezigheid
  ,C2.Afwezigheid
  ,C2.FTE
  ,C2.Kostenplaats
  ,C2.Orgeenheid
  ,C2.FunctieCode
  ,C2.DienstbetrekkingCode 
  ,C2.RN
  ,C2.M_RN
  union 
  select '-1','-1',null,null ,null,null,'-1','-1','-1','-1','-1','-1','-1','-1','-1'