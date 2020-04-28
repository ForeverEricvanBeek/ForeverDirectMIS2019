





CREATE VIEW [FDV].[VW_F_Rooster]
AS
With CTE_1 as(
SELECT MF.[Medewerker]
      ,[Begindatum]
      ,isnull([Einddatum],cast(eomonth(getdate())as date)) Einddatum
	  ,MR.FTE
	  ,MR.BegindatumRooster
	  ,isnull(MR.EinddatumRooster, cast(eomonth(getdate())as date)) EinddatumRooster
      ,[Orgeenheid]
      ,[OrgeenheidOmschrijving]
      ,[FunctieCode]
      ,[FunctieOmschrijving]
      ,[Kostenplaats]
      ,[KostenplaatsOmschrijving]
      ,[VolgnummerOrganisatorischeEenheidFunctie]
	  ,sum([VolgnummerOrganisatorischeEenheidFunctie]) over (partition by MF.Medewerker) as RN
	  
      
  FROM [AFAS].[DWH_Medewerker_Orgeenheid_functie] MF
  full outer join [AFAS].[DWH_Medewerker_Roosters] MR
  on 
  MF.Medewerker=MR.Medewerker
 
  and MR.ActInd='Y'
  where 1=1 
  and MF.ActInd='Y'--)
 
  group by MF.[Medewerker]
      ,[Begindatum]
      ,isnull([Einddatum],cast(eomonth(getdate())as date)) --Einddatum
	  ,MR.FTE
	  ,MR.BegindatumRooster
	  ,isnull(MR.EinddatumRooster, cast(eomonth(getdate())as date)) --EinddatumRooster
      ,[Orgeenheid]
      ,[OrgeenheidOmschrijving]
      ,[FunctieCode]
      ,[FunctieOmschrijving]
      ,[Kostenplaats]
      ,[KostenplaatsOmschrijving]
      ,[VolgnummerOrganisatorischeEenheidFunctie])
 ,CTE_2 as 
  (select
  C1.Medewerker
  ,case when C1.Begindatum <= C1.BegindatumRooster then C1.BegindatumRooster else C1.Begindatum end as BegindatumRooster
  ,case when C1.Einddatum >= C1.EinddatumRooster and RN>1 then C1.EinddatumRooster else C1.Einddatum end as EinddatumRooster 
 
  ,C1.FTE
  ,C1.FunctieCode
  ,C1.Orgeenheid
  ,C1.Kostenplaats
  ,C1.VolgnummerOrganisatorischeEenheidFunctie
  ,C1.RN
  ,MC.Werkgever 
  ,MC.NaamWerkgever 
  ,MC.DienstbetrekkingCode
  ,MC.TypeContractCode 
  ,MC.SoortMedewerkerCode 
   
  from CTE_1 C1
  left join [AFAS].[DWH_Medewerker_Contracten] MC
		on
		C1.Medewerker=MC.Medewerker
		and case when C1.Begindatum <= C1.BegindatumRooster  then C1.BegindatumRooster else C1.Begindatum end >=  MC.DatumBeginContract
		and case when C1.Begindatum <= C1.BegindatumRooster then C1.BegindatumRooster else C1.Begindatum end <=  isnull(MC.DatumEindContract, cast(getdate() as date))
  --where C1.Medewerker in ('2018-32','2018-73','2016-04','2012-10')--'2016-04'--'2012-10'
 group by 
  C1.Medewerker
  ,case when C1.Begindatum <= C1.BegindatumRooster then C1.BegindatumRooster else C1.Begindatum end
  ,case when C1.Einddatum >= C1.EinddatumRooster and RN>1 then C1.EinddatumRooster else C1.Einddatum end
  ,C1.FTE
  ,C1.RN
  ,C1.FunctieCode
  ,C1.Orgeenheid
  ,C1.Kostenplaats
  ,C1.VolgnummerOrganisatorischeEenheidFunctie
  ,MC.Werkgever 
  ,MC.NaamWerkgever 
  ,MC.DienstbetrekkingCode
  ,MC.TypeContractCode
  ,MC.SoortMedewerkerCode 
  )

Select C2.Medewerker
 ,case when C2.BegindatumRooster < C2.EinddatumRooster then C2.BegindatumRooster else '2050-01-01' end as BegindatumRooster 
 ,C2.EinddatumRooster
 ,C2.FTE
 ,C2.FunctieCode
 ,C2.Orgeenheid
 ,C2.Kostenplaats
 ,C2.VolgnummerOrganisatorischeEenheidFunctie
 ,C2.Werkgever 
 ,C2.NaamWerkgever 
 ,C2.DienstbetrekkingCode
 ,C2.TypeContractCode
 ,C2.SoortMedewerkerCode
  

from CTE_2 C2
where case when C2.BegindatumRooster < C2.EinddatumRooster then C2.BegindatumRooster else '2050-01-01' end <> '2050-01-01'
  -- order by 1,2 asc