CREATE TABLE [Logging].[ProcessLog] (
    [ProcessLogID]                BIGINT         IDENTITY (1, 1) NOT NULL,
    [ProcessLogParentID]          BIGINT         NULL,
    [BatchID]                     BIGINT         NOT NULL,
    [PackageName]                 NVARCHAR (100) NOT NULL,
    [SysPkgID]                    NVARCHAR (100) NULL,
    [SysPkgName]                  NVARCHAR (100) NULL,
    [SysPkgVersionGUID]           NVARCHAR (100) NULL,
    [SysPkgVersionMajor]          INT            NULL,
    [SysPkgVersionMinor]          INT            NULL,
    [SysPkgExecutionMachineName]  NVARCHAR (100) NULL,
    [SysPkgExecutionUserName]     NVARCHAR (100) NULL,
    [SysPkgExecutionInstanceGUID] NVARCHAR (100) NULL,
    [ExtractionType]              NVARCHAR (1)   NULL,
    [LastExtractionDate]          DATETIME2 (7)  NULL,
    [LastExtractionID]            NVARCHAR (50)  NULL,
    [RowCountExtract]             INT            NULL,
    [RowCountTarget]              INT            NULL,
    [RowCountError]               INT            NULL,
    [LoadingType]                 NVARCHAR (2)   NULL,
    [RowCountSourceSTG]           INT            NULL,
    [RowCountSourceDWH]           INT            NULL,
    [RowCountNew]                 INT            NULL,
    [RowCountInferred]            INT            NULL,
    [RowCountDeleted]             INT            NULL,
    [RowCountSCD1]                INT            NULL,
    [RowCountSCD2]                INT            NULL,
    [RowCountUnchanged]           INT            NULL,
    [RowCountInsert]              INT            NULL,
    [RowCountUpdate]              INT            NULL,
    [RowCountTargetTotal]         INT            NULL,
    [RowCountTargetActual]        INT            NULL,
    [RowCountTargetDeleted]       INT            NULL,
    [RowCountTargetInferred]      INT            NULL,
    [Remarks]                     NVARCHAR (MAX) NULL,
    [IsSuccessful]                BIT            NULL,
    [ExecutionStartDate]          DATETIME2 (7)  NULL,
    [ExecutionEndDate]            DATETIME2 (7)  NULL,
    CONSTRAINT [PK_ProcessLog] PRIMARY KEY CLUSTERED ([ProcessLogID] ASC),
    CONSTRAINT [FK_ProcessLog_BatchLog] FOREIGN KEY ([BatchID]) REFERENCES [Logging].[BatchLog] ([BatchID]),
    CONSTRAINT [FK_ProcessLog_ParentProcessLog] FOREIGN KEY ([ProcessLogParentID]) REFERENCES [Logging].[ProcessLog] ([ProcessLogID])
);




GO
CREATE NONCLUSTERED INDEX [<Name of Missing Index, sysname,>]
    ON [Logging].[ProcessLog]([IsSuccessful] ASC, [ExecutionStartDate] ASC)
    INCLUDE([PackageName]);

