


CREATE VIEW [FDV].[VW_D_Afas_Medewerker]
AS
SELECT distinct(MR.[Medewerker]) Medewerker
     ,'1' as Teller
  FROM [AFAS].[DWH_Medewerker_Contracten] MR
  where ActInd='Y'
  and IsDeleted ='N'
  union all
  select '-1','-1'