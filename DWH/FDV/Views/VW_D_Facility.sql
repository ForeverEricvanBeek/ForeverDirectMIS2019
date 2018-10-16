﻿

CREATE VIEW [FDV].[VW_D_Facility]
AS
SELECT		  FCA.FACILITY_ALIAS_ID		AS Facility_ID
			, FCA.FACILITY_NAME			AS Facility_Name
			, FC.ADDRESS_1				AS Facility_Address_1
			, FC.ADDRESS_2				AS Facility_Address_2
			, FC.ADDRESS_3				AS Facility_Address_3
			, FC.CITY					AS Facility_City
			, FC.STATE_PROV				AS Facility_Prov
			, FC.POSTAL_CODE			AS Facility_Postal_Code
			, CASE WHEN FO.COUNTRY_CODE IS NULL THEN FC.COUNTRY_CODE ELSE FO.COUNTRY_CODE END AS Facility_Country_Code
FROM        MANH.FACILITY_ALIAS AS FCA
INNER JOIN  MANH.FACILITY AS FC
ON			FCA.FACILITY_ID = FC.FACILITY_ID
AND			FC.ActInd = 'Y'
LEFT JOIN	MANH.FACILITY_CONTACT FO
ON			FO.FACILITY_ID = FC.FACILITY_ID
AND			FO.ActInd = 'Y'
AND			FO.FACILITY_CONTACT_ID = 1
INNER JOIN	MANH.COUNTRY CC
ON			CC.COUNTRY_CODE = FC.COUNTRY_CODE
AND			CC.ActInd = 'Y'
WHERE		FCA.ActInd = 'Y'
UNION ALL
SELECT '-1', 'Unknown', NULL, NULL, NULL, NULL, NULL, NULL, '-1'