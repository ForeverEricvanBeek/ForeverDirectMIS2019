/*
CREATE PROCEDURE [RC].[ControlReports]
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @RequestID AS INT
	DECLARE @email AS NVARCHAR(500)
	SET @RequestID = 0
	SET @email = 'technicalit@foreverdirect.eu'

	INSERT INTO RC.Log (Log_Page,Log_Func,Log_CreatedDate) VALUES ('runReport','Controller',GETDATE())
	DECLARE cur CURSOR LOCAL FOR 
		SELECT R.Request_ID, R.Request_Email FROM RC.Request R WHERE R.Request_Status = 15
	OPEN cur

	FETCH NEXT FROM cur 
	INTO @RequestID, @email
	WHILE @@FETCH_STATUS = 0

	BEGIN
		INSERT INTO RC.Log (Log_Page,Log_Func,Log_RequestID,Log_Status,Log_CreatedDate) VALUES ('runReport','Start runReports PROC',@RequestID,16,GETDATE())
		EXEC [RC].[runReports] @RequestID = @RequestID, @email = @email

		FETCH NEXT FROM cur INTO @RequestID, @email
	END

	CLOSE cur
	DEALLOCATE cur
END
*/