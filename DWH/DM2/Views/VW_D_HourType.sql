
CREATE VIEW [DM2].[VW_D_HourType]
AS
SELECT
	HT.bktype_id				AS HourType_ID
	, HT.bktype_code			AS HourType_Code
	, HT.bktype_description		AS HourType_Description
FROM ATIMO.hourtypes AS HT
WHERE HT.ActInd = 'Y'
UNION ALL
SELECT        '-1', 'Unknown', NULL