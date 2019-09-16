


CREATE VIEW [FDV].[VW_D_Afas_Organisatie_eenheid]
AS
SELECT 
      distinct([Orgeenheid]) as Orgeenheid
      ,[OrgeenheidOmschrijving]
         
  FROM [AFAS].[DWH_Medewerker_Orgeenheid_functie]
  where ActInd='Y'
  and IsDeleted='N'
  Union All
  select '-1','-1'