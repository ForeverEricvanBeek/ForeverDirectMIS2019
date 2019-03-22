



CREATE VIEW [dbo].[ARC_CHECK]
AS

SELECT
	T1.A							AS SORT
	, T1.ProcessLogID				AS PLID
	, T1.ProcessLogParentID			AS PLPID
	, T1.BatchID					AS BatchID
	, T1.PackageName				AS PackageName
	, T1.ExtractionType				AS Type
	, T1.RowCountExtract			AS RowsExtract
	, T1.RowCountTarget				AS RowsSource
	, T1.RowCountExtract - T1.RowCountTarget AS ArchivedRows
	, T1.IsSuccessful				AS Success
	, T1.ExecutionStartDate			AS StartDate
	, T1.ExecutionEndDate			AS EndDate
	, CONVERT(varchar(12), DATEADD(ms, DATEDIFF(ms, T1.ExecutionStartDate, T1.ExecutionEndDate), 0), 114) AS TIME
	, T1.EventDescription			AS Error
FROM (
	SELECT
	 '1' AS A
	 , PL.ProcessLogID
	 , PL.ProcessLogParentID
	 , PL.BatchID
	 , PL.PackageName
	 , PL.ExtractionType
	 , PL.RowCountExtract
	 , PL.RowCountTarget
	 , PL.IsSuccessful
	 , PL.ExecutionStartDate
	 , PL.ExecutionEndDate
	 , PM.EventDescription
	FROM Logging.ProcessLog AS PL
	LEFT JOIN Logging.ProcessMessageLog AS PM ON PM.ProcessLogID = PL.ProcessLogID
	WHERE PL.ExecutionStartDate >= CAST(DATEADD(day, -1 * (( DATEPART(WEEKDAY, GETDATE()) % 7)), GETDATE()) AS DATE) 
	AND PL.ExecutionStartDate < CAST(DATEADD(DAY,1,DATEADD(day, -1 * (( DATEPART(WEEKDAY, GETDATE()) % 7)), GETDATE())) AS DATE)
	AND PL.IsSuccessful IS NULL
	AND PL.PackageName LIKE '%_ARC-%'
	AND NOT EXISTS (SELECT P1.BatchID FROM Logging.ProcessLog P1 WHERE P1.ExecutionStartDate >= CAST(DATEADD(day, -1 * (( DATEPART(WEEKDAY, GETDATE()) % 7)), GETDATE()) AS DATE) AND P1.ExecutionStartDate < CAST(DATEADD(DAY,1,DATEADD(day, -1 * (( DATEPART(WEEKDAY, GETDATE()) % 7)), GETDATE())) AS DATE)
	AND P1.BatchID > PL.BatchID AND P1.PackageName = PL.PackageName)
	

	UNION ALL

	SELECT
	 '2'
	 , NULL
	 , NULL
	 , NULL
	 , NULL
	 , NULL
	 , NULL
	 , NULL
	 , NULL
	 , NULL
	 , NULL
	 , NULL

	UNION ALL

	SELECT
	 '3'
	 , PL.ProcessLogID
	 , PL.ProcessLogParentID
	 , PL.BatchID
	 , PL.PackageName
	 , PL.ExtractionType
	 , PL.RowCountExtract
	 , PL.RowCountTarget
	 , PL.IsSuccessful
	 , PL.ExecutionStartDate
	 , PL.ExecutionEndDate
	 , PM.EventDescription
	FROM Logging.ProcessLog AS PL
	LEFT JOIN Logging.ProcessMessageLog AS PM ON PM.ProcessLogID = PL.ProcessLogID
	WHERE PL.ExecutionStartDate >= CAST(DATEADD(day, -1 * (( DATEPART(WEEKDAY, GETDATE()) % 7)), GETDATE()) AS DATE) 
	AND PL.ExecutionStartDate < CAST(DATEADD(DAY,1,DATEADD(day, -1 * (( DATEPART(WEEKDAY, GETDATE()) % 7)), GETDATE())) AS DATE)
	AND PL.IsSuccessful = 1
	AND PL.PackageName LIKE '%_ARC-%'
	AND NOT EXISTS (SELECT P1.BatchID FROM Logging.ProcessLog P1 WHERE P1.ExecutionStartDate >= CAST(DATEADD(day, -1 * (( DATEPART(WEEKDAY, GETDATE()) % 7)), GETDATE()) AS DATE) AND P1.ExecutionStartDate < CAST(DATEADD(DAY,1,DATEADD(day, -1 * (( DATEPART(WEEKDAY, GETDATE()) % 7)), GETDATE())) AS DATE)
	AND P1.BatchID > PL.BatchID AND P1.PackageName = PL.PackageName)
) AS T1
WHERE (T1.BatchID > 0
OR T1.BatchID = -1
OR T1.BatchID IS NULL)