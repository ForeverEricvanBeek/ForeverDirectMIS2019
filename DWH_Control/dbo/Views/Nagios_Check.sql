
CREATE VIEW [dbo].[Nagios_Check]
AS

WITH CTE AS (
	SELECT DISTINCT
		pj.name				AS Bron
		, CASE 
			WHEN pk.name LIKE 'Load Dim%' THEN 'D'
			WHEN pk.name LIKE 'Load Fact%' THEN 'F'
			ELSE 'X'
		END					AS Tabel
		, CAST(COUNT(*) OVER (PARTITION BY pj.name, CASE 
			WHEN pk.name LIKE 'Load Dim%' THEN 'D'
			WHEN pk.name LIKE 'Load Fact%' THEN 'F'
			ELSE 'X'
		END) AS DECIMAL(18,2))	AS Packages
	FROM		[$(SSISDB)].catalog.packages pk 
	INNER JOIN	[$(SSISDB)].catalog.projects pj 
	ON			pj.project_id = pk.project_id
)

SELECT
  AL.Source
  , CASE
		WHEN AL.Source = 'Staging' AND AL.CombinedWeight < 10 THEN CAST((AL.CombinedWeight / 10.0) * 100 AS INT)
		WHEN AL.Source = 'Staging' AND AL.CombinedWeight >= 10 THEN 100
		WHEN AL.Source = 'DWH' AND AL.CombinedWeight < 10 THEN CAST((AL.CombinedWeight / 10.0) * 100 AS INT)
		WHEN AL.Source = 'DWH' AND AL.CombinedWeight >= 10 THEN 100
		WHEN AL.Source = 'Datamart Dimensions' AND AL.CombinedWeight < (SELECT Packages FROM CTE WHERE Bron = 'SSIS_Datamart' AND Tabel = 'D') THEN CAST((AL.CombinedWeight / (SELECT Packages FROM CTE WHERE Bron = 'SSIS_Datamart' AND Tabel = 'D')) * 100 AS INT)
		WHEN AL.Source = 'Datamart Dimensions' AND AL.CombinedWeight >= (SELECT Packages FROM CTE WHERE Bron = 'SSIS_Datamart' AND Tabel = 'D') THEN 100
		WHEN AL.Source = 'Datamart Fact' AND AL.CombinedWeight < (SELECT Packages FROM CTE WHERE Bron = 'SSIS_Datamart' AND Tabel = 'F') THEN CAST((AL.CombinedWeight / (SELECT Packages FROM CTE WHERE Bron = 'SSIS_Datamart' AND Tabel = 'F')) * 100 AS INT)
		WHEN AL.Source = 'Datamart Fact' AND AL.CombinedWeight >= (SELECT Packages FROM CTE WHERE Bron = 'SSIS_Datamart' AND Tabel = 'F') THEN 100
		WHEN AL.Source = 'Datamart2 Dimensions' AND AL.CombinedWeight < (SELECT Packages FROM CTE WHERE Bron = 'SSIS_Datamart2' AND Tabel = 'D') THEN CAST((AL.CombinedWeight / (SELECT Packages FROM CTE WHERE Bron = 'SSIS_Datamart2' AND Tabel = 'D')) * 100 AS INT)
		WHEN AL.Source = 'Datamart2 Dimensions' AND AL.CombinedWeight >= (SELECT Packages FROM CTE WHERE Bron = 'SSIS_Datamart2' AND Tabel = 'D') THEN 100
		WHEN AL.Source = 'Datamart2 Fact' AND AL.CombinedWeight < (SELECT Packages FROM CTE WHERE Bron = 'SSIS_Datamart2' AND Tabel = 'F') THEN CAST((AL.CombinedWeight / (SELECT Packages FROM CTE WHERE Bron = 'SSIS_Datamart2' AND Tabel = 'F')) * 100 AS INT)
		WHEN AL.Source = 'Datamart2 Fact' AND AL.CombinedWeight >= (SELECT Packages FROM CTE WHERE Bron = 'SSIS_Datamart2' AND Tabel = 'F') THEN 100
		WHEN AL.Source = 'ForeverData Dimensions' AND AL.CombinedWeight < (SELECT Packages FROM CTE WHERE Bron = 'SSIS_ForeverData01' AND Tabel = 'D') THEN CAST((AL.CombinedWeight / (SELECT Packages FROM CTE WHERE Bron = 'SSIS_ForeverData01' AND Tabel = 'D')) * 100 AS INT)
		WHEN AL.Source = 'ForeverData Dimensions' AND AL.CombinedWeight >= (SELECT Packages FROM CTE WHERE Bron = 'SSIS_ForeverData01' AND Tabel = 'D') THEN 100
		WHEN AL.Source = 'ForeverData Fact' AND AL.CombinedWeight < (SELECT Packages FROM CTE WHERE Bron = 'SSIS_ForeverData01' AND Tabel = 'F') THEN CAST((AL.CombinedWeight / (SELECT Packages FROM CTE WHERE Bron = 'SSIS_ForeverData01' AND Tabel = 'F')) * 100 AS INT)
		WHEN AL.Source = 'ForeverData Fact' AND AL.CombinedWeight >= (SELECT Packages FROM CTE WHERE Bron = 'SSIS_ForeverData01' AND Tabel = 'F') THEN 100
   END AS Status
   , CASE
		WHEN AL.Source = 'Staging' THEN 1
		WHEN AL.Source = 'DWH' THEN 2
		WHEN AL.Source = 'Datamart Dimensions' THEN 3
		WHEN AL.Source = 'Datamart Fact' THEN 4
		WHEN AL.Source = 'Datamart2 Dimensions' THEN 5
		WHEN AL.Source = 'Datamart2 Fact' THEN 6
		WHEN AL.Source = 'ForeverData Dimensions' THEN 7
		WHEN AL.Source = 'ForeverData Fact' THEN 8
	END AS Sort
FROM (
	SELECT  
	  Sourcesystem
	  , Source
	  , MAX(Date) AS Date
	  , Weight
	  , SUM(Weight) OVER (PARTITION BY Source) AS CombinedWeight
	FROM (
		SELECT 
			Sourcesystem 
			, Source
			, Date
			, Weight
		FROM	Control.JobControl
		WHERE	Date >= CAST(GETDATE() AS DATE)
		AND		Source <> 'Datamart'
		AND		Source <> 'Datamart2'
		AND		Source <> 'ForeverData01'

		UNION

		SELECT
		  'Datamart' AS SourceSystem
		  , CASE
			WHEN PackageName LIKE '%Dim-Datamart-DM%' THEN 'Datamart Dimensions'
			WHEN PackageName LIKE '%Fact-Datamart-DM%' THEN 'Datamart Fact'
			WHEN PackageName LIKE '%Dim-Datamart2-DM%' THEN 'Datamart2 Dimensions'
			WHEN PackageName LIKE '%Fact-Datamart2-DM%' THEN 'Datamart2 Fact'
			WHEN PackageName LIKE '%Dim-ForeverData01-DM%' THEN 'ForeverData Dimensions'
			WHEN PackageName LIKE '%Fact-ForeverData01-DM%' THEN 'ForeverData Fact'
		  END AS Source
		  , GETDATE()
		  , COUNT(CASE
			WHEN PackageName LIKE '%Dim-Datamart-DM%' THEN 'Datamart Dimensions'
			WHEN PackageName LIKE '%Fact-Datamart-DM%' THEN 'Datamart Fact'
			WHEN PackageName LIKE '%Dim-Datamart2-DM%' THEN 'Datamart2 Dimensions'
			WHEN PackageName LIKE '%Fact-Datamart2-DM%' THEN 'Datamart2 Fact'
			WHEN PackageName LIKE '%Dim-ForeverData01-DM%' THEN 'ForeverData Dimensions'
			WHEN PackageName LIKE '%Fact-ForeverData01-DM%' THEN 'ForeverData Fact'
		  END) AS Weight
		FROM ( 	
			SELECT
				PL.PackageName
			FROM Logging.ProcessLog AS PL
			LEFT JOIN Logging.ProcessMessageLog AS PM ON PM.ProcessLogID = PL.ProcessLogID
			WHERE PL.ExecutionStartDate >= cast(floor(cast(getdate() as float)) as datetime) AND PL.ExecutionStartDate < cast(floor(cast(getdate()+1 as float)) as datetime)
			AND PL.IsSuccessful = 1
			AND	(PL.PackageName LIKE '%Load Dim-Datamart%' OR PL.PackageName LIKE '%Load Fact-Datamart%' OR PL.PackageName LIKE '%Load Fact-ForeverData01%' OR PL.PackageName LIKE '%Load Dim-ForeverData01%')
			GROUP BY
			  PL.PackageName
		) AA
		GROUP BY
		 CASE
			WHEN PackageName LIKE '%Dim-Datamart-DM%' THEN 'Datamart Dimensions'
			WHEN PackageName LIKE '%Fact-Datamart-DM%' THEN 'Datamart Fact'
			WHEN PackageName LIKE '%Dim-Datamart2-DM%' THEN 'Datamart2 Dimensions'
			WHEN PackageName LIKE '%Fact-Datamart2-DM%' THEN 'Datamart2 Fact'
			WHEN PackageName LIKE '%Dim-ForeverData01-DM%' THEN 'ForeverData Dimensions'
			WHEN PackageName LIKE '%Fact-ForeverData01-DM%' THEN 'ForeverData Fact'
		  END

		UNION
		SELECT 'Datamart','Datamart Dimensions',GETDATE(),0
		UNION
		SELECT 'Datamart','Datamart Fact',GETDATE(),0
		UNION
		SELECT 'Datamart','Datamart2 Dimensions',GETDATE(),0
		UNION
		SELECT 'Datamart','Datamart2 Fact',GETDATE(),0
		UNION
		SELECT 'Datamart','ForeverData Dimensions',GETDATE(),0
		UNION
		SELECT 'Datamart','ForeverData Fact',GETDATE(),0
		UNION
		SELECT 'DWH','DWH',GETDATE(),0
		UNION
		SELECT 'Staging','Staging',GETDATE(),0
	) TP
	GROUP BY
		Sourcesystem
		, Source
		, Weight
) AL
GROUP BY
  AL.Source
  , AL.CombinedWeight