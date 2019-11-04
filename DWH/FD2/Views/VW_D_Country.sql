

CREATE VIEW [FD2].[VW_D_Country]
AS

SELECT
	CC.COUNTRY_CODE					AS Country_Code
  , CC.COUNTRY_NAME					AS Country_Name
  , CC.CNTRY_A3_CODE                AS Country_A3_Code
  , CC.ISO_CNTRY_CODE               AS Country_Iso_Code
  , CC.GEO_REGION_ID				AS Country_Geo_Code
FROM			MANH.COUNTRY CC
WHERE			CC.ActInd = 'Y'

UNION ALL

SELECT
  '-1'
  , 'Unknown'
  , 'Unknown'
  , 'Unknown'
  , 'Unknown'