﻿

CREATE VIEW [FDV].[VW_D_Transporter]
AS

WITH AVGT_CTE AS (
	SELECT
	  A.DSG_SHIP_VIA
	  , (CASE WHEN COUNT(DISTINCT B.TC_LPN_ID) >  CAST(0 AS DECIMAL(18,2)) THEN CAST((CAST(COUNT(DISTINCT B.TC_LPN_ID)AS DECIMAL(18,2)) / CAST(COUNT(DISTINCT B.TC_ORDER_ID)AS DECIMAL(18,2))) AS DECIMAL(18,2)) ELSE  CAST(0 AS DECIMAL(18,2)) END) AS TVALUE
	  , (CASE WHEN COUNT(LD.LPN_DETAIL_ID) >  CAST(0 AS DECIMAL(18,2)) THEN CAST((CAST(COUNT(LD.LPN_DETAIL_ID) AS DECIMAL(18,2)) / CAST(COUNT(DISTINCT B.TC_LPN_ID) AS DECIMAL(18,2))) AS DECIMAL(18,2)) ELSE  CAST(0 AS DECIMAL(18,2)) END)  AS PVALUE
	FROM		MANH.ORDERS A 
	INNER JOIN	dbo.VW_T_LPN B ON B.ORDER_ID = A.ORDER_ID 
	AND			B.ActInd = 'Y'
	LEFT JOIN	 MANH.LPN_DETAIL LD ON LD.LPN_ID = B.LPN_ID 
	AND			LD.ActInd = 'Y'
	WHERE		A.CREATED_DTTM > DATEADD(DAY,-30,CAST(GETDATE() AS DATE))
	AND			A.CREATED_DTTM < DATEADD(DAY,-1,CAST(GETDATE() AS DATE))
	AND			A.ORDER_TYPE = 'OF' 
	AND			A.IS_CANCELLED = 0
	AND			A.ActInd = 'Y'
	GROUP BY A.DSG_SHIP_VIA
)

SELECT        
	CC.CARRIER_CODE				AS Transporter_Code
	, CASE 
		WHEN TM.TransporterManual_New IS NULL THEN CC.CARRIER_CODE_NAME 
		ELSE TM.TransporterManual_Name
	END							AS Transporter_Name
	, CASE 
		WHEN TM.TransporterManual_New IS NULL THEN CC.CARRIER_CODE 
		ELSE TM.TransporterManual_New 
	END							AS Transporter_SubCode
	, SV.SHIP_VIA				AS Transporter_Ship_Via_Code
	, SV.DESCRIPTION			AS Transporter_Ship_Via_Desc
	, CC.COUNTRY_CODE			AS Transporter_Country_Code
	, CC.ADDRESS				AS Transporter_Address
	, CC.CITY					AS Transporter_City
	, CC.POSTAL_CODE			AS Transporter_Postal_Code
	, cast(left(SC.MISC_FLAGS,2)+':'+ SUBSTRING(SC.MISC_FLAGS,3,2)+':00' as time) AS Transporter_CutOff_Time --toegevoegd odu
	, TS.TransporterStatus_LeadTime				AS Transporter_LT_Delivered
	, AC.TVALUE					AS Transporter_AVG_Parcels
	, AC.PVALUE					AS Transporter_AVG_Lines
FROM			MANH.CARRIER_CODE AS CC 
INNER JOIN		MANH.SHIP_VIA AS SV 
ON				CC.CARRIER_ID = SV.CARRIER_ID 
AND				SV.MOT_ID = 61 
AND				SV.ActInd = 'Y' 
LEFT OUTER JOIN MANH.SYS_CODE AS SC							--toegevoegd odu
ON 				SV.SHIP_VIA=SC.CODE_ID					--toegevoegd odu
AND 				SC.CODE_TYPE = 'CBC'					--toegevoegd odu
AND     			SC.REC_TYPE = 'C' 					--toegevoegd odu
AND				SC.ActInd = 'Y'						--toegevoegd odu
LEFT OUTER JOIN WEB.TransporterStatus AS TS 
ON				SV.SHIP_VIA = TS.TransporterStatus_ShipVia 
AND				TS.TransporterStatus_Status = 'DELIVERED' 
AND				TS.ActInd = 'Y' 
LEFT OUTER JOIN WEB.TransporterManual AS TM 
ON				TM.TransporterManual_ShipViaCode = SV.SHIP_VIA 
AND				TM.ActInd = 'Y'
LEFT JOIN		AVGT_CTE AC
ON				AC.DSG_SHIP_VIA = SV.SHIP_VIA
WHERE			CC.ActInd = 'Y'

UNION ALL

SELECT '-1','Unknown','Unknown','-1',NULL,NULL,NULL, NULL, NULL,NULL,NULL, NULL, NULL