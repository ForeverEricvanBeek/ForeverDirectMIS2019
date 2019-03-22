CREATE PROCEDURE [Logging].[PrcLogMessage]
      @ProcessLogID                BIGINT                   =  0
     ,@BatchID                     BIGINT					=  0
     ,@SourceName                  NVARCHAR(255)            =  NULL
     ,@Severity                    NCHAR(1)                 =  'E' -- Information, Warning, Error, Fatal (I, W, E, F)
     ,@EventCode                   INT                      =  NULL
     ,@EventDescription            NVARCHAR(MAX)            =  NULL

AS
BEGIN
     INSERT INTO [Logging].[ProcessMessageLog]
          ([ProcessLogID]
          ,[BatchID]
          ,[SourceName]
          ,[Severity]
          ,[EventCode]
          ,[EventDescription]
          )
     VALUES
          (@ProcessLogID   
          ,@BatchID        
          ,@SourceName      
          ,@Severity        
          ,@EventCode       
          ,@EventDescription     
          )
     ;
END
;
GO
GRANT EXECUTE
    ON OBJECT::[Logging].[PrcLogMessage] TO [FOREVERDIRECT\DWHDataDEVSA]
    AS [dbo];





















