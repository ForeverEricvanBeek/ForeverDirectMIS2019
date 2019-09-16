


CREATE VIEW [FDV].[VW_D_Afas_Dienstbetrekking]
AS

SELECT 
      distinct(TypeContractCode)
      ,[TypeContractOmschrijving]     
  FROM [AFAS].[DWH_Medewerker_Contracten]
  where ActInd='Y'
  and IsDeleted='N'
  union all
  select '-1','-1'