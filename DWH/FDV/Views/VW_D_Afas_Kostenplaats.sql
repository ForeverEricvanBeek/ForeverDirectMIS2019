


CREATE VIEW [FDV].[VW_D_Afas_Kostenplaats]
AS

SELECT distinct([Kostenplaats])
      ,[KostenplaatsOmschrijving]
      
  FROM [AFAS].[DWH_Medewerker_Orgeenheid_functie]
  where 1=1
  and ActInd='Y'
  and IsDeleted='N'
  union all
  select '-1','-1'