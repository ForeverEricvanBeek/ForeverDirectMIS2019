
CREATE VIEW [RV].[Vas_Users]
AS

SELECT
	A.VASUser_Name		AS Name
	, A.VASUser_ID		AS Pass_ID
FROM (
	SELECT 
		VASUser_Name
		, VASUser_ID
		, 'Web' AS VASUser_Source
	FROM	[$(DWH)].WEB.VASUser 
	WHERE	ActInd = 'Y' 
	AND		VASUser_Deleted = 0
UNION ALL
	SELECT 
		replace(name,',','') as name
		, CAST(badge_id AS NVARCHAR(50)) AS badge_id
		, 'Atimo' AS VASUser_Source 
	FROM	[$(DWH)].ATIMO.emplstam 
	WHERE	ActInd = 'Y' 
	AND		employee_end IS NULL
	AND		replace(name,',','') NOT IN (SELECT VASUser_Name FROM [$(DWH)].WEB.VASUser WHERE	ActInd = 'Y' AND VASUser_Deleted = 0)
	GROUP BY 
		replace(name,',','')
		, CAST(badge_id AS NVARCHAR(50))
) A