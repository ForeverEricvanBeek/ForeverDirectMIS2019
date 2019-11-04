CREATE TABLE [Generator].[LoadReportTables] (
    [SourceExtractionTableID] SMALLINT        IDENTITY (1, 1) NOT NULL,
    [SourceConnection]        NVARCHAR (50)   NULL,
    [SourceSchema]            NVARCHAR (128)  NULL,
    [TargetSchema]            NVARCHAR (128)  NULL,
    [Order]                   INT             NULL,
    [SourceTable]             NVARCHAR (128)  NULL,
    [TargetTable]             NVARCHAR (128)  NULL,
    [TargetConnection]        NVARCHAR (50)   NULL,
    [ExtractionType]          NVARCHAR (2)    NULL,
    [Output]                  NVARCHAR (50)   NULL,
    [ReportID]                NVARCHAR (500)  NULL,
    [FriendlyName]            NVARCHAR (500)  NULL,
    [Description]             NVARCHAR (4000) NULL,
    [Html]                    NVARCHAR (4000) NULL,
    [Filename]                NVARCHAR (50)   NULL,
    [RunSchedule]             NVARCHAR (50)   NULL,
    [RunParam1]               NVARCHAR (50)   NULL,
    [RunParam2]               NVARCHAR (50)   NULL,
    [RunParam3]               NVARCHAR (50)   NULL,
    [IgnoreEmpty]             INT             NULL,
    [EmailTo]                 NVARCHAR (500)  NULL,
    [EmailCC]                 NVARCHAR (500)  NULL,
    [EmailBCC]                NVARCHAR (500)  NULL,
    [EmailAttachment]         NVARCHAR (1)    NULL,
    [Folder]                  NVARCHAR (500)  NULL,
    [IsActive]                BIT             NOT NULL,
    [Available]               NVARCHAR (500)  NULL
);











