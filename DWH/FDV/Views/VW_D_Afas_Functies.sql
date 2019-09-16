


CREATE VIEW [FDV].[VW_D_Afas_Functies]
AS
SELECT 
      distinct([FunctieCode])
       ,[FunctieOmschrijving] 
  FROM [AFAS].[DWH_Medewerker_Orgeenheid_functie]
  where ActInd='Y'
  and IsDeleted='N'
  and FunctieOmschrijving<>'Hef-/Reachtruckchaffeur'
union all
select '-1','-1'