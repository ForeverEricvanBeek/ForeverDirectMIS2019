CREATE TABLE [Generator].[LoadReportTables] (
    [SourceExtractionTableID] SMALLINT       IDENTITY (1, 1) NOT NULL,
    [SourceConnection]        NVARCHAR (50)  NOT NULL,
    [SourceSchema]            NVARCHAR (128) NULL,
    [TargetSchema]            NVARCHAR (128) NOT NULL,
    [Order]                   INT            NULL,
    [SourceTable]             NVARCHAR (128) NOT NULL,
    [TargetTable]             NVARCHAR (128) NULL,
    [TargetConnection]        NVARCHAR (50)  NOT NULL,
    [ExtractionType]          NVARCHAR (2)   NOT NULL,
    [Output]                  NVARCHAR (50)  NULL,
    [RunSchedule]             NVARCHAR (50)  NULL,
    [RunParam1]               NVARCHAR (50)  NULL,
    [RunParam2]               NVARCHAR (50)  NULL,
    [IsActive]                BIT            NOT NULL
);



