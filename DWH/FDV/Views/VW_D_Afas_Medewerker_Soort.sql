


CREATE VIEW [FDV].[VW_D_Afas_Medewerker_Soort]
AS

SELECT 
      distinct(SoortMedewerkerCode)
      ,[SoortMedewerkerOmschrijving]
     
      
  FROM [AFAS].[DWH_Medewerker_Contracten]
  where ActInd='Y'
  and IsDeleted='N'
  union all
  select '-1','-1'