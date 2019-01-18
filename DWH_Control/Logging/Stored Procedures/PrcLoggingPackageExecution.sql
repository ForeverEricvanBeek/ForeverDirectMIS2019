CREATE PROCEDURE [Logging].[PrcLoggingPackageExecution]
-- Procedure to write/update ProcessLog and BatchLog

-- Add the parameters for the stored procedure here
      @Action                      nvarchar(1)    -- Start, Finish, Error
     ,@BatchAction                 NVARCHAR(1)         =  'N'-- Start, Finish, Error, No Action     

     ,@ProcessLogID                BIGINT              =  -1 
     ,@ProcessLogParentID          BIGINT              =  NULL
     ,@BatchID                     BIGINT              =  -1 
     ,@BatchType                   NVARCHAR(255)       =  'Full ETL Process'

     ,@PackageName                 NVARCHAR(100)       =  'Default'
     ,@SysPkgName                  NVARCHAR(100)       =  NULL
     ,@SysPkgID                    NVARCHAR(100)       =  NULL
     ,@SysPkgVersionGUID           NVARCHAR(100)       =  NULL
     ,@SysPkgVersionMajor          INT                 =  NULL
     ,@SysPkgVersionMinor          INT                 =  NULL
     ,@SysPkgExecutionMachineName  NVARCHAR(100)       =  NULL
     ,@SysPkgExecutionUserName     NVARCHAR(100)       =  NULL
     ,@SysPkgExecutionInstanceGUID NVARCHAR(100)       =  NULL

     ,@IsSuccessful                BIT                 =  NULL
     ,@ExecutionStartDate          DATETIME2(7)        =  NULL
     ,@ExecutionEndDate            DATETIME2(7)        =  NULL

     ,@ExtractionType              NVARCHAR(1)         =  NULL
     ,@LastExtractionDate          NVARCHAR(30)        =  NULL
	 ,@LastExtractionID			   NVARCHAR(50)		   =  NULL
     ,@RowCountExtract             INT                 =  NULL
     ,@RowCountTarget              INT                 =  NULL
     ,@RowCountError               INT                 =  NULL
     ,@LoadingType                 NVARCHAR(2)         =  NULL
     ,@RowCountSourceSTG           INT                 =  NULL
     ,@RowCountSourceDWH           INT                 =  NULL
     ,@RowCountNew                 INT                 =  NULL
     ,@RowCountInferred            INT                 =  NULL
     ,@RowCountDeleted             INT                 =  NULL
     ,@RowCountSCD1                INT                 =  NULL
     ,@RowCountSCD2                INT                 =  NULL
     ,@RowCountUnchanged           INT                 =  NULL
     ,@RowCountInsert              INT                 =  NULL
     ,@RowCountUpdate              INT                 =  NULL
     ,@RowCountTargetTotal         INT                 =  NULL
     ,@RowCountTargetActual        INT                 =  NULL
     ,@RowCountTargetDeleted       INT                 =  NULL
     ,@RowCountTargetInferred      INT                 =  NULL

     ,@Remarks                     nvarchar(max)       =  null
AS
BEGIN
SET NOCOUNT ON;
DECLARE @BatchIDExists              TINYINT             = 0
;
-- start
IF @Action = 'S'
BEGIN
  -- If there is no BatchID, then a new one is created
     SELECT   @BatchIDExists = COUNT(1)
     FROM     [Logging].BatchLog   bl
     WHERE    bl.BatchID           =  @BatchID
     ;
     IF @BatchIDExists             = 0
     BEGIN
     -- Create new batch
          INSERT INTO [Logging].[BatchLog]
               ([Status]
               ,[BatchType]
               )
          VALUES
               ('R' -- Running
               ,@BatchType
               )
          ;
          SET @BatchID        =  SCOPE_IDENTITY()
          ;
     END
     ;
     IF @ProcessLogParentID        =  0
     BEGIN
          SET @ProcessLogParentID = NULL;
     END
     ;

	INSERT INTO [Logging].[ProcessLog]
	( [ProcessLogParentID]
     , [BatchID]
	, [PackageName]
	, [SysPkgName]
     , [SysPkgID]
     , [SysPkgVersionGUID]
     , [SysPkgVersionMajor]
     , [SysPkgVersionMinor]
	, [SysPkgExecutionMachineName]
     , [SysPkgExecutionUserName]
     , [SysPkgExecutionInstanceGUID]
	, [ExtractionType]
     , [LoadingType]
	, [ExecutionStartDate]
	)
	VALUES
	( @ProcessLogParentID
     , @BatchID
	, @PackageName
	, @SysPkgName
     , @SysPkgID
     , @SysPkgVersionGUID
     , @SysPkgVersionMajor
     , @SysPkgVersionMinor
	, @SysPkgExecutionMachineName
     , @SysPkgExecutionUserName
     , @SysPkgExecutionInstanceGUID
	, @ExtractionType
     , @LoadingType
	, SYSDATETIME()
	)
	SET @ProcessLogID = SCOPE_IDENTITY()
END
;

-- Finish
IF @BatchAction          =  'F'
BEGIN
     UPDATE [Logging].[BatchLog]
     SET    [EndDateTime]          = SYSDATETIME()
           ,[Status]               = 'S'
     WHERE  [BatchID]              = @BatchID
     ;
END
;
IF @Action = 'F' 
BEGIN
	UPDATE [Logging].[ProcessLog]
	   SET  [IsSuccessful]             = 1
		  ,[ExecutionEndDate]         = SYSDATETIME()
		  ,[LastExtractionDate]       = CONVERT(datetime2(7), @LastExtractionDate, 120)
		  ,[LastExtractionID]		  = @LastExtractionID
		  ,[RowCountExtract]          = @RowCountExtract
		  ,[RowCountTarget]           = @RowCountTarget
		  ,[RowCountError]            = @RowCountError
		  ,[RowCountSourceSTG]        = @RowCountSourceSTG
		  ,[RowCountSourceDWH]        = @RowCountSourceDWH
		  ,[RowCountNew]              = @RowCountNew
		  ,[RowCountInferred]         = @RowCountInferred
		  ,[RowCountDeleted]          = @RowCountDeleted
		  ,[RowCountSCD1]             = @RowCountSCD1
		  ,[RowCountSCD2]             = @RowCountSCD2
		  ,[RowCountUnchanged]        = @RowCountUnchanged
		  ,[RowCountInsert]           = @RowCountInsert
		  ,[RowCountUpdate]           = @RowCountUpdate
		  ,[RowCountTargetTotal]      = @RowCountTargetTotal
		  ,[RowCountTargetActual]     = @RowCountTargetActual
		  ,[RowCountTargetDeleted]    = @RowCountTargetDeleted
		  ,[RowCountTargetInferred]   = @RowCountTargetInferred
		  ,[Remarks]                  = @Remarks
	 WHERE  [ProcessLogID]             = @ProcessLogID
      ;
END

-- Error
IF @BatchAction          =  'E'
BEGIN
     UPDATE [Logging].[BatchLog]
     SET    [EndDateTime]          = SYSDATETIME()
           ,[Status]               = 'F'
     WHERE  [BatchID]              = @BatchID
     ;
END
;
IF @Action = 'E' BEGIN
	UPDATE [Logging].[ProcessLog]
	   SET  [IsSuccessful]           = 0
		  ,[ExecutionEndDate]       = GETDATE()
		  ,[LastExtractionDate]     = CONVERT(datetime2(7), @LastExtractionDate, 120)
		  ,[LastExtractionID]		= @LastExtractionID
		  ,[RowCountExtract]        = @RowCountExtract
		  ,[RowCountTarget]         = @RowCountTarget
		  ,[RowCountError]          = @RowCountError
		  ,[RowCountSourceSTG]      = @RowCountSourceSTG
		  ,[RowCountSourceDWH]      = @RowCountSourceDWH
		  ,[RowCountNew]            = @RowCountNew
		  ,[RowCountInferred]       = @RowCountInferred
		  ,[RowCountDeleted]        = @RowCountDeleted
		  ,[RowCountSCD1]           = @RowCountSCD1
		  ,[RowCountSCD2]           = @RowCountSCD2
		  ,[RowCountUnchanged]      = @RowCountUnchanged
		  ,[RowCountInsert]         = @RowCountInsert
		  ,[RowCountUpdate]         = @RowCountUpdate
		  ,[RowCountTargetTotal]    = @RowCountTargetTotal
		  ,[RowCountTargetActual]   = @RowCountTargetActual
		  ,[RowCountTargetDeleted]  = @RowCountTargetDeleted
		  ,[RowCountTargetInferred] = @RowCountTargetInferred
		  ,[Remarks]                = @Remarks
	 WHERE  [ProcessLogID]           = @ProcessLogID
      ;
END
;
SELECT   @BatchID
        ,@ProcessLogID
;
END
GO
GRANT EXECUTE
    ON OBJECT::[Logging].[PrcLoggingPackageExecution] TO [FOREVERDIRECT\DWHDataDEVSA]
    AS [dbo];

















