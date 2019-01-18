

CREATE VIEW [FDV].[VW_D_Country]
AS

SELECT
  CC.COUNTRY_CODE                                  AS Country_Code
  , CC.COUNTRY_NAME                               AS Country_Name
  , CC.CNTRY_A3_CODE                AS Country_A3_Code
  , CC.ISO_CNTRY_CODE               AS Country_Iso_Code
  , CC.GEO_REGION_ID                 AS Geo_Region_Code
  , case 
WHEN  CC.COUNTRY_CODE = 'MX' THEN 'SA'
WHEN  CC.GEO_REGION_ID  = 'AU'  THEN 'AS'

ELSE CC.GEO_REGION_ID  END as FD_Region_Code,

CASE WHEN CC.CNTRY_A3_CODE = 'ROE' THEN 'ROM'
       WHEN CC.CNTRY_A3_CODE = 'IMN'THEN 'INL'
       --CURACAU
       --WHEN CC.COUNTRY_CODE    
       ELSE CC.CNTRY_A3_CODE END AS FD_Home_Country,
CASE WHEN CC.CNTRY_A3_CODE IN ('JOR', 'KWT','LBN','OMN', 'QAT', 'SAU' ) THEN 'ARE' 
        WHEN CC.CNTRY_A3_CODE IN ('BGR', 'MKD') THEN 'BGR'
       WHEN CC.CNTRY_A3_CODE IN ('BEN', 'BFA', 'CIV', 'NER', 'TGO') THEN 'CIV'
       WHEN CC.CNTRY_A3_CODE IN ('CMR', 'GBN') THEN 'CMR'
       WHEN CC.CNTRY_A3_CODE IN ('COG', 'COD') THEN 'COD'
       WHEN CC.CNTRY_A3_CODE IN ('AUT', 'DEU') THEN 'DEU'
       WHEN CC.CNTRY_A3_CODE IN ( 'FRA', 'DZA', 'MAR', 'MUS' , 'TUN')  THEN 'FRA'
       WHEN CC.CNTRY_A3_CODE IN ( 'GHA', 'LBR' , 'SLE') THEN 'GHA'
       WHEN CC.CNTRY_A3_CODE IN ( 'GRC' , 'CYP') THEN 'GRC'
         WHEN CC.CNTRY_A3_CODE IN ( 'IMN' , 'IRL') THEN 'IRL'
         WHEN CC.CNTRY_A3_CODE IN ( 'MLT' , 'ITA') THEN 'ITA'
         WHEN CC.CNTRY_A3_CODE IN ( 'BDI' , 'KEN' , 'RWA' , 'TZA' , 'UGA') THEN 'KEN' 
         WHEN CC.CNTRY_A3_CODE IN ( 'BRN' , 'MYS' , 'SGP') THEN 'MYS' 
         WHEN CC.CNTRY_A3_CODE IN ( 'BEN' , 'NGA' ) THEN 'NGA' 
         WHEN CC.CNTRY_A3_CODE IN ( 'NLD' , 'BEL', 'LUX') THEN 'BNL'
         WHEN CC.CNTRY_A3_CODE IN ( 'ROE' , 'MDA') THEN 'ROM'
         WHEN CC.CNTRY_A3_CODE IN ( 'NLD' , 'BEL', 'LUX') THEN 'BNL'
         WHEN CC.CNTRY_A3_CODE IN ( 'GIN', 'GMB' , 'GNB', 'MLI', 'MRT', 'SEN') THEN 'SEN'
         WHEN CC.CNTRY_A3_CODE IN ( 'GIN', 'GMB' , 'GNB', 'MLI', 'MRT', 'SEN') THEN 'SEN'
         WHEN CC.CNTRY_A3_CODE IN ( 'DNK', 'SWE' , 'NOR', 'FIN') THEN 'SKA'  
           WHEN CC.CNTRY_A3_CODE IN ( 'TUR', 'AZE' , 'GEO', 'IRQ', 'KAZ', 'KGZ') THEN 'TUR'
                       WHEN CC.CNTRY_A3_CODE IN ( 'CAN' , 'USA') THEN 'USA'
                        WHEN CC.CNTRY_A3_CODE IN ( 'NAM' , 'ZAF' , 'ZMB' , 'ZWE') THEN 'ZAF'
                        ELSE CC.CNTRY_A3_CODE
       END AS FD_OP_Country,
   CASE WHEN  CC.COUNTRY_CODE in (
  'AT',
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
       when  CC.COUNTRY_CODE in ( 'CH',
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
   , 'Unknown'
  , 'Unknown'
   , 'Unknown'
UNION ALL

select  'CW'
		, 'Curacau' 
		, 'CUW'
		, '531'	
		, 'SA'
		, 'SA'
		, 'CUR' 
		, 'CUR' 
		, 'NOT EU_EFTA' 
--GO