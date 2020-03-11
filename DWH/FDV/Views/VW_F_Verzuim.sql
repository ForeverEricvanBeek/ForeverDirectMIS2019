
CREATE VIEW [FDV].[VW_F_Verzuim]
AS
WITH CTE_INT
AS
(SELECT distinct(VL.Medewerker)
      ,VL.VerzuimmeldingID 
      ,VL.DatumTijd --Aanvang_Periode
      ,VL.Aanwezigheid
      ,VL.AanwezigheidAT
      ,VL.Omschrijving
      ,VL.EinddatumVerzuim
	
  FROM DWH.AFAS.DWH_Medewerker_verzuimverloop VL
  WHERE VL.ActInd='Y'

)
,CTE_1 AS 
(SELECT C_INT.Medewerker
      ,C_INT.VerzuimmeldingID 
      ,C_INT.DatumTijd -- Aanvang_Periode
	  ,LEAD(C_INT.DatumTijd,1,C_INT.DatumTijd)
	  OVER
	  (PARTITION BY C_INT.VerzuimmeldingID ORDER BY C_INT.DatumTijd) AS Eind_periode 
	  ,VM.VerwachteEinddatum AS VerwachteEinddatum 
      ,C_INT.Aanwezigheid
      ,C_INT.AanwezigheidAT
      ,VM.Vangnetregeling
      ,C_INT.EinddatumVerzuim
      ,ROW_NUMBER() OVER (PARTITION BY  C_INT.VerzuimmeldingID ORDER BY C_INT.DatumTijd) AS RN  
	
  FROM  CTE_INT C_INT
  
  INNER JOIN DWH.AFAS.DWH_Medewerker_verzuimmelding VM
  ON
  C_INT.VerzuimmeldingID = VM.VerzuimmeldingID
  AND VM.ActInd='Y' 
  )
 -- select * from CTE_1 


 ,CTE_2 AS
  (SELECT C1.Medewerker
  ,C1.VerzuimmeldingID
  ,C1.Vangnetregeling
  ,C1.DatumTijd AS Start_periode
   ,CASE WHEN C1.EinddatumVerzuim IS NULL AND C1.DatumTijd = C1.Eind_periode AND RN <> 1 or C1.Eind_periode > CAST(getdate() AS DATE) THEN CAST(getdate() AS DATE) 
         WHEN C1.EinddatumVerzuim IS NULL AND C1.DatumTijd = C1.Eind_periode AND RN = 1 AND MAX(RN) OVER (PARTITION BY VerzuimmeldingID) > 1 THEN C1.Eind_periode
		 WHEN C1.EinddatumVerzuim IS NULL AND C1.DatumTijd = C1.Eind_periode AND RN = 1 AND MAX(RN) OVER (PARTITION BY VerzuimmeldingID) = 1 THEN CAST(getdate() AS DATE)
		 WHEN C1.EinddatumVerzuim IS NULL AND C1.DatumTijd = C1.Eind_periode AND RN <> 1 AND MAX(RN) OVER (PARTITION BY VerzuimmeldingID) > 1 THEN CAST(getdate() AS DATE)
   ELSE C1.Eind_periode END AS Eind_periode
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
 
  FROM CTE_1 C1 
  
  LEFT JOIN DWH.AFAS.DWH_Medewerker_Roosters MR
  ON
  MR.Medewerker=C1.Medewerker
  AND
  C1.DatumTijd BETWEEN MR.BegindatumRooster AND ISNULL(MR.EinddatumRooster,CAST(GETDATE() AS DATE)) 
  AND MR.ActInd='Y'
  
  LEFT JOIN DWH.AFAS.DWH_Medewerker_Orgeenheid_functie MF
  ON
  C1.Medewerker=MF.Medewerker
  AND C1.DatumTijd BETWEEN MF.Begindatum AND ISNULL(MF.Einddatum,CAST(GETDATE() AS DATE))
  AND MF.ActInd='Y' 
 
  LEFT JOIN DWH.AFAS.DWH_Medewerker_Contracten MC
  ON
  C1.Medewerker=MC.Medewerker
  AND C1.DatumTijd BETWEEN  MC.DatumBeginContract AND ISNULL(MC.DatumEindContract,CAST(GETDATE() AS DATE)))
  
  SELECT  C2.Medewerker
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

  FROM CTE_2 C2

  GROUP BY 
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