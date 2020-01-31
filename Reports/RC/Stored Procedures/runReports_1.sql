/*
CREATE PROC [RC].[runReports]
 @RequestID bigint
 , @email nvarchar(500)
AS
BEGIN

	DECLARE @execution_id BIGINT
	DECLARE @ToLine NVARCHAR(265) = @email
	DECLARE @CCLine NVARCHAR(265) = N''
	DECLARE @BCCLine NVARCHAR(265) = N''
	DECLARE @Where NVARCHAR(265) = N'Portal'
	DECLARE @package NVARCHAR(265) = N''
	DECLARE @sqlExec NVARCHAR(4000) = N''
	DECLARE @RequestIDNVARCHAR NVARCHAR(256) = @RequestID

	INSERT INTO RC.Log (Log_Page,Log_Func,Log_RequestID,Log_Status,Log_CreatedDate,Log_Log) VALUES ('runReport','Started',@RequestID,17,GETDATE(),@ToLine)

	SELECT
	  --@package = N'Reports-RV-' + RT.SourceTable + N'.dtsx'
	  @package = N'Reports_' + RT.SourceSchema + '_'+ RT.ReportID + N'.dtsx'
	  , @ToLine = RQ.Request_Email
	FROM		RC.Request RQ
	INNER JOIN	DWH_Control.Generator.LoadReportTables RT
	ON			RT.ReportID = RQ.Request_ReportID
	WHERE		RQ.Request_ID = @RequestID

	UPDATE RC.Request SET Request_Log = @package,Request_Status = 20 WHERE Request_ID = @RequestID
	INSERT INTO RC.Log (Log_Page,Log_Func,Log_RequestID,Log_Status,Log_Package,Log_CreatedDate) VALUES ('runReport','Retreived Request info',@RequestID,20,@package,GETDATE())

	EXEC SSISDB.catalog.create_execution @folder_name = 'ForeverDirect MIS', @project_name = 'SSIS_Reports', @package_name = @package, @reference_id=8, @execution_id = @execution_id OUTPUT

	DECLARE @execution_idNVARCHAR NVARCHAR(256) = @execution_id

	SELECT @sqlExec = (
		SELECT
			' DECLARE @' + RA.Param_Name + ' NVARCHAR(2000) = ''' + RA.Param_Value + ''' EXEC SSISDB.catalog.set_execution_parameter_value @execution_id = ' + @execution_idNVARCHAR   + ', @object_Type = 30, @parameter_Name = ''' + RA.Param_Name + '_PP'' , @parameter_value = @' + RA.Param_Name + ';'
		FROM		RC.Request RE
		INNER JOIN	RC.Param RA
		ON			RA.Param_RequestID = RE.Request_ID
		INNER JOIN	DWH_Control.Generator.LoadReportTablePredicates LP
		ON			LP.ReportID = RE.Request_ReportID
		AND			LP.ViewPredicatesName = RA.Param_Name
		AND			LP.IsActive = 1
		WHERE		RE.Request_ID = @RequestID
	FOR XML PATH(''))

	UPDATE RC.Request SET Request_Log = @execution_id, Request_Status = 30 WHERE Request_ID = @RequestID
	INSERT INTO RC.Log (Log_Page,Log_Func,Log_RequestID,Log_Status,Log_ExecutionID,Log_Package,Log_CreatedDate, Log_Log) VALUES ('runReport','Created params',@RequestID,30,@execution_id,@package,GETDATE(), CAST(@sqlExec AS NVARCHAR(MAX)))
	
	EXEC SSISDB.catalog.set_execution_parameter_value @execution_id = @execution_id, @object_Type = 30, @parameter_Name = 'parToLine_PP', @parameter_value = @ToLine;
	EXEC SSISDB.catalog.set_execution_parameter_value @execution_id = @execution_id, @object_Type = 30, @parameter_Name = 'parCCLine_PP', @parameter_value = @CCLine;
	EXEC SSISDB.catalog.set_execution_parameter_value @execution_id = @execution_id, @object_Type = 30, @parameter_Name = 'parBCCLine_PP', @parameter_value = @BCCLine;
	EXEC SSISDB.catalog.set_execution_parameter_value @execution_id = @execution_id, @object_Type = 30, @parameter_Name = 'parWhere_PP', @parameter_value = @Where;
	EXEC SSISDB.catalog.set_execution_parameter_value @execution_id = @execution_id, @object_Type = 30, @parameter_Name = 'parRequestID_PP', @parameter_value = @RequestIDNVARCHAR;
	EXEC SSISDB.catalog.set_execution_parameter_value @execution_id = @execution_id, @object_Type = 30, @parameter_Name = 'parLogExecutionID_PP', @parameter_value = @execution_idNVARCHAR;

	EXEC(@sqlExec)

	UPDATE RC.Request SET Request_Status = 40, Request_Log = @execution_id WHERE Request_ID = @RequestID
	INSERT INTO RC.Log (Log_Page,Log_Func,Log_RequestID,Log_Status,Log_ExecutionID,Log_Package,Log_CreatedDate) VALUES ('runReport','Created EXEC statement',@RequestID,40,@execution_id,@package,GETDATE())

	EXEC SSISDB.catalog.start_execution @execution_id

	UPDATE RC.Request SET Request_Status = 50, Request_Log = @execution_id WHERE Request_ID = @RequestID
	INSERT INTO RC.Log (Log_Page,Log_Func,Log_RequestID,Log_Status,Log_ExecutionID,Log_Package,Log_CreatedDate) VALUES ('runReport','Execute EXEC statement',@RequestID,50,@execution_id,@package,GETDATE())

END
*/























/*
	declare @execution_id bigint
	declare @Sensor_Date sql_variant = N'20190401'
	declare @ActInd sql_variant = N'Y'
	declare @ToLine sql_variant = N'eric.vanbeek@foreverdirect.eu'
	declare @CCLine sql_variant = N''
	declare @BCCLine sql_variant = N''
	declare @Where sql_variant = N'Portal'

	exec SSISDB.catalog.create_execution  @folder_name = 'ForeverDirect MIS', @project_name = 'SSIS_Reports', @package_name = 'Reports-RT-SENSOR.dtsx', @reference_id=8, @execution_id = @execution_id output
	exec SSISDB.catalog.set_execution_parameter_value @execution_id = @execution_id, @object_Type = 30, @parameter_Name = 'varSensor_Date_PP', @parameter_value = @Sensor_Date;
	exec SSISDB.catalog.set_execution_parameter_value @execution_id = @execution_id, @object_Type = 30, @parameter_Name = 'varSensor_Date_PP', @parameter_value = @Sensor_Date;
	exec SSISDB.catalog.set_execution_parameter_value @execution_id = @execution_id, @object_Type = 30, @parameter_Name = 'parToLine_PP', @parameter_value = @ToLine;
	exec SSISDB.catalog.set_execution_parameter_value @execution_id = @execution_id, @object_Type = 30, @parameter_Name = 'parCCLine_PP', @parameter_value = @CCLine;
	exec SSISDB.catalog.set_execution_parameter_value @execution_id = @execution_id, @object_Type = 30, @parameter_Name = 'parBCCLine_PP', @parameter_value = @BCCLine;
	exec SSISDB.catalog.set_execution_parameter_value @execution_id = @execution_id, @object_Type = 30, @parameter_Name = 'parWhere_PP', @parameter_value = @Where;
	exec SSISDB.catalog.set_execution_parameter_value @execution_id = @execution_id, @object_Type = 30, @parameter_Name = 'varActInd_PP', @parameter_value = @ActInd;
	exec SSISDB.catalog.start_execution @execution_id
	UPDATE RC.Request SET Status = (SELECT [STATUS] FROM [SSISDB].[internal].[operations] WHERE operation_id = @execution_id) WHERE Request_ID = @RequestID
*/

/*
	SELECT @sqlDeclare = (SELECT
		' declare @' + RA.Param_Name + ' sql_variant = N''' + RA.Param_Value + ''''
	FROM		RC.Request RQ
	LEFT JOIN	RC.[Param] RA
	ON			RA.Param_RequestID = RQ.Request_ID
	LEFT JOIN	DWH_Control.Generator.LoadReportTablePredicates LP
	ON			LP.ViewPredicatesName = RA.Param_Name
	AND			LP.IsActive = 1
	WHERE		RQ.Request_ID = 1
	FOR XML PATH(''))

	SELECT @sqlExec = (SELECT
		' EXEC SSISDB.catalog.set_execution_parameter_value @execution_id = @execution_id, @object_Type = 30, @parameter_Name = ''' + RA.Param_Name + ''' , @parameter_value = ''' + RA.Param_Value + ''';'
	FROM		RC.Request RQ
	LEFT JOIN	RC.[Param] RA
	ON			RA.Param_RequestID = RQ.Request_ID
	LEFT JOIN	DWH_Control.Generator.LoadReportTablePredicates LP
	ON			LP.ViewPredicatesName = RA.Param_Name
	AND			LP.IsActive = 1
	WHERE		RQ.Request_ID = 1
	FOR XML PATH(''))

	UPDATE RC.Request SET Request_Log = convert(NVARCHAR,@package),Request_Status = 3 WHERE Request_ID = @RequestID

	-- Dynamic
	EXEC(@sqlDeclare)
	--declare @Sensor_Date sql_variant = N'20190401'
	--declare @ActInd sql_variant = N'Y'

	exec SSISDB.catalog.create_execution @folder_name = 'ForeverDirect MIS', @project_name = 'SSIS_Reports', @package_name = @package, @reference_id=8, @execution_id = @execution_id output
	exec SSISDB.catalog.set_execution_parameter_value @execution_id = @execution_id, @object_Type = 30, @parameter_Name = 'parToLine_PP', @parameter_value = @ToLine;
	exec SSISDB.catalog.set_execution_parameter_value @execution_id = @execution_id, @object_Type = 30, @parameter_Name = 'parCCLine_PP', @parameter_value = @CCLine;
	exec SSISDB.catalog.set_execution_parameter_value @execution_id = @execution_id, @object_Type = 30, @parameter_Name = 'parBCCLine_PP', @parameter_value = @BCCLine;
	exec SSISDB.catalog.set_execution_parameter_value @execution_id = @execution_id, @object_Type = 30, @parameter_Name = 'parWhere_PP', @parameter_value = @Where;

	-- Dynamic
	EXEC(@sqlExec)
	--exec SSISDB.catalog.set_execution_parameter_value @execution_id = @execution_id, @object_Type = 30, @parameter_Name = 'varSensor_Date_PP', @parameter_value = @Sensor_Date;
	--exec SSISDB.catalog.set_execution_parameter_value @execution_id = @execution_id, @object_Type = 30, @parameter_Name = 'varActInd_PP', @parameter_value = @ActInd;

	UPDATE RC.Request SET Request_Status = 4, Request_Log = convert(NVARCHAR,@package) WHERE Request_ID = @RequestID

	exec SSISDB.catalog.start_execution @execution_id

	UPDATE RC.Request SET Request_Status = 5, Request_Log = @execution_id WHERE Request_ID = @RequestID

	SET @output_execution_id = @execution_id
END
*/
/*
	declare @execution_id bigint
	declare @Sensor_Date sql_variant = N'20190401'
	declare @ActInd sql_variant = N'Y'
	declare @ToLine sql_variant = N'eric.vanbeek@foreverdirect.eu'
	declare @CCLine sql_variant = N''
	declare @BCCLine sql_variant = N''
	declare @Where sql_variant = N'Portal'

	exec SSISDB.catalog.create_execution  @folder_name = 'ForeverDirect MIS', @project_name = 'SSIS_Reports', @package_name = 'Reports-RT-SENSOR.dtsx', @reference_id=8, @execution_id = @execution_id output
	exec SSISDB.catalog.set_execution_parameter_value @execution_id = @execution_id, @object_Type = 30, @parameter_Name = 'varSensor_Date_PP', @parameter_value = @Sensor_Date;
	exec SSISDB.catalog.set_execution_parameter_value @execution_id = @execution_id, @object_Type = 30, @parameter_Name = 'varSensor_Date_PP', @parameter_value = @Sensor_Date;
	exec SSISDB.catalog.set_execution_parameter_value @execution_id = @execution_id, @object_Type = 30, @parameter_Name = 'parToLine_PP', @parameter_value = @ToLine;
	exec SSISDB.catalog.set_execution_parameter_value @execution_id = @execution_id, @object_Type = 30, @parameter_Name = 'parCCLine_PP', @parameter_value = @CCLine;
	exec SSISDB.catalog.set_execution_parameter_value @execution_id = @execution_id, @object_Type = 30, @parameter_Name = 'parBCCLine_PP', @parameter_value = @BCCLine;
	exec SSISDB.catalog.set_execution_parameter_value @execution_id = @execution_id, @object_Type = 30, @parameter_Name = 'parWhere_PP', @parameter_value = @Where;
	exec SSISDB.catalog.set_execution_parameter_value @execution_id = @execution_id, @object_Type = 30, @parameter_Name = 'varActInd_PP', @parameter_value = @ActInd;
	exec SSISDB.catalog.start_execution @execution_id
	UPDATE RC.Request SET Status = (SELECT [STATUS] FROM [SSISDB].[internal].[operations] WHERE operation_id = @execution_id) WHERE Request_ID = @RequestID
*/