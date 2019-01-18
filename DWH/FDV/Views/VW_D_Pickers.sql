

CREATE VIEW [FDV].[VW_D_Pickers]
AS

SELECT 
	PS.Picker_ID											AS Pickers_ID
	, PS.Picker_Name										AS Pickers_Name
	, CASE WHEN PS.Picker_Deleted = 1 THEN 0 ELSE 1 END		AS Pickers_Active
	, CASE WHEN UU.USER_NAME IS NOT NULL THEN 1 ELSE 0 END	AS Pickers_Manhattan
FROM		WEB.Picker	AS PS
LEFT JOIN	MANH.UCL_USER UU
ON			UU.USER_NAME = '0' + PS.Picker_ID
AND			UU.ActInd = 'Y'
WHERE		PS.ActInd = 'Y'
AND			PS.Picker_Visible = 1

UNION ALL

SELECT 
	X.Picker_ID
	, 'Unknown'
	, 1
	, 0
FROM (
	SELECT
	 QI.Picker_ID
	 , COUNT(*) AS TELLER
	FROM WEB.OF_Issues AS QI
	WHERE NOT EXISTS (SELECT * FROM WEB.Picker WHERE Picker_ID = QI.Picker_ID AND ActInd = 'Y')
	AND QI.Picker_ID BETWEEN 51000 AND 60001
	AND QI.ActInd = 'Y'
	AND QI.Created_Date >= GETDATE()-365
	GROUP BY
	 QI.Picker_ID
 ) X


UNION ALL

SELECT 
	UU.USER_NAME
	, UU.USER_NAME
	, UU.IS_ACTIVE
	, 1
FROM		MANH.UCL_USER UU
WHERE		UU.ActInd = 'Y'
AND			UU.IS_ACTIVE > 0
AND			NOT EXISTS (SELECT 1 AS PICKER FROM WEB.Picker AS PS WHERE PS.ActInd = 'Y' AND '0' + PS.Picker_ID = UU.USER_NAME)