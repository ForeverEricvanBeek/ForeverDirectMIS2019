

CREATE VIEW [DM2].[VW_D_Lane]
AS

SELECT 
  CAST(Lane AS NVARCHAR(50)) + '-' + CASE 
	WHEN Type = 1 THEN 'Packing'
	WHEN Type = 2 THEN 'QC'
	ELSE 'Unknown'
  END		AS Lane_ID
  , [Lane]	AS Lane_Name
  , CASE 
	  WHEN [Type] = 1 THEN 'Packing'
	  WHEN [Type] = 2 THEN 'QC'
	  ELSE 'Unknown'
	END AS Lane_Type
FROM [SCHAEFER].[UserStatistic]
WHERE ActInd = 'Y'
AND			Eff_Date >= GETDATE() -2
AND			End_Date >= GETDATE() -2
GROUP BY
  [Lane]
  , [Type]

UNION ALL

SELECT '-1','-1','Unknown'