
CREATE VIEW [FDV].[VW_D_Country]
AS
SELECT
  CC.COUNTRY_CODE                                  AS Country_Code
  , CC.COUNTRY_NAME                               AS Country_Name
  , CC.CNTRY_A3_CODE                AS Country_A3_Code
  , CC.ISO_CNTRY_CODE               AS Country_Iso_Code
  , CC.GEO_REGION_ID                 AS Geo_Region_Code
  , case when  CC.COUNTRY_CODE in ('AT',
'BE',
'BG',
'CY',
'CZ',
'DE',
'DK',
'EE',
'ES',
'FI',
'FR',
'GB',
'UK',
'GG',
'GR',
'HR',
'HU',
'IE',
'IT',
'JE',
'LT',
'LU',
'LV',
'MT',
'NL',
'PL',
'PT',
'RO',
'SE',
'SI',
'SK') then 'EU'
	when  CC.COUNTRY_CODE in ('CH',
'IS',
'LI',
'NO') then 'EFTA'
	else 'NOT EU_EFTA'
	end
	as EU_FTA
FROM                  MANH.COUNTRY CC
WHERE                CC.ActInd = 'Y'

UNION ALL

SELECT
  '-1'
  , 'Unknown'
  , 'Unknown'
  , 'Unknown'
  , 'Unknown'
  , 'Unknown'