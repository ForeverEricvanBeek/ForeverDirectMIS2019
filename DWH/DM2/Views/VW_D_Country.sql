

CREATE VIEW [DM2].[VW_D_Country]
AS
SELECT
  CC.COUNTRY_CODE			AS Country_Code
  , CC.COUNTRY_NAME			AS Country_Name
FROM		MANH.COUNTRY CC
WHERE		CC.ActInd = 'Y'
AND			CC.Eff_Date >= GETDATE() -2
AND			CC.End_Date >= GETDATE() -2
UNION ALL

SELECT
  '-1'
  , 'Unknown'