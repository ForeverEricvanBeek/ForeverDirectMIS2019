


CREATE VIEW [FDV].[VW_F_Verzuim_oud]
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

)
,CTE_1 as 
(SELECT C_INT.[Medewerker]
      ,C_INT.[VerzuimmeldingID] 
      ,C_INT.[DatumTijd] -- Aanvang_Periode
	  ,LEAD(C_INT.DatumTijd,1,C_INT.DatumTijd)
	  over
	  (partition by C_INT.[VerzuimmeldingID] order by C_INT.DatumTijd) as Eind_periode 
	  ,VM.VerwachteEinddatum as VerwachteEinddatum 
      ,C_INT.[Aanwezigheid]
      ,C_INT.[AanwezigheidAT]
      ,VM.Vangnetregeling
      ,C_INT.[EinddatumVerzuim]
      ,ROW_NUMBER() over (partition by  C_INT.[VerzuimmeldingID] order by C_INT.DatumTijd) as RN  
	
  FROM  CTE_INT C_INT
  
  join AFAS.DWH_Medewerker_verzuimmelding VM
  on 
  C_INT.VerzuimmeldingID=VM.VerzuimmeldingID
  and VM.ActInd='Y'
 
  where 1=1 
  )

 ,CTE_2 as
  (select C1.Medewerker
  ,C1.VerzuimmeldingID
  ,C1.Vangnetregeling
  ,C1.DatumTijd as Start_periode
   ,Case when C1.EinddatumVerzuim is null and C1.DatumTijd=C1.Eind_periode and RN<>1 or C1.Eind_periode>cast(getdate() as date) then cast(getdate() as date) 
        when C1.EinddatumVerzuim is null and C1.DatumTijd=C1.Eind_periode and RN=1 and max(RN) over (partition by VerzuimmeldingID)>1 then C1.Eind_periode
		when C1.EinddatumVerzuim is null and C1.DatumTijd=C1.Eind_periode and RN=1 and max(RN) over (partition by VerzuimmeldingID)=1 then cast(getdate() as date)
		when C1.EinddatumVerzuim is null and C1.DatumTijd=C1.Eind_periode and RN<>1 and max(RN) over (partition by VerzuimmeldingID)>1 then cast(getdate() as date)
   else C1.Eind_periode end as Eind_periode
  ,C1.VerwachteEinddatum
  ,C1.EinddatumVerzuim
  ,C1.Aanwezigheid*0.01 AS Aanwezigheid
  ,(100-C1.Aanwezigheid)*0.01 AS Afwezigheid
  ,MR.FTE
  ,MF.Kostenplaats
  ,MF.Orgeenheid
  ,MF.FunctieCode
  ,ISNULL(MC.DienstbetrekkingCode, '-1') AS DienstbetrekkingCode 
  ,ROW_NUMBER() OVER (PARTITION BY C1.VerzuimmeldingID ORDER BY C1.DatumTijd) AS RN
  ,MAX(C1.RN) OVER (PARTITION BY VerzuimmeldingID) AS M_RN
 
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
  
  select  C2.Medewerker
  ,C2.VerzuimmeldingID
  ,C2.Vangnetregeling
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

  from CTE_2 C2

  group by 
   C2.Medewerker
  ,C2.VerzuimmeldingID
  ,C2.Vangnetregeling
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