

CREATE VIEW [FDV].[VW_D_Afas_Contract_Soort]
AS

SELECT 
      distinct(DienstbetrekkingCode)
      ,[DienstbetrekkingOmschrijving]
     
      
  FROM [AFAS].[DWH_Medewerker_Contracten]
  where ActInd='Y'
  and IsDeleted='N'
  union all
  select '-1','-1'