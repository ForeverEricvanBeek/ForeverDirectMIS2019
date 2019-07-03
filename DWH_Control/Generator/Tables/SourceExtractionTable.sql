CREATE TABLE [Generator].[SourceExtractionTable] (
    [SourceExtractionTableID] SMALLINT        IDENTITY (1, 1) NOT NULL,
    [SourceConnection]        NVARCHAR (200)  NOT NULL,
    [SourceSchema]            NVARCHAR (128)  NULL,
    [TargetSchema]            NVARCHAR (128)  NOT NULL,
    [Order]                   INT             NULL,
    [SourceTable]             NVARCHAR (128)  NOT NULL,
    [TargetTable]             NVARCHAR (128)  NULL,
    [TargetConnection]        NVARCHAR (200)  NOT NULL,
    [ArchiveDate]             NVARCHAR (50)   NULL,
    [ExtractionType]          NVARCHAR (2)    NOT NULL,
    [ArchiveType]             NVARCHAR (3)    NULL,
    [ArchiveSchema]           NVARCHAR (128)  NULL,
    [ArchiveTable]            NVARCHAR (128)  NULL,
    [CleansingType]           NVARCHAR (5)    NULL,
    [CleansingSource]         NVARCHAR (50)   NULL,
    [CleansingWhere]          NVARCHAR (1000) NULL,
    [CleansingDate]           NVARCHAR (50)   NULL,
    [CleansingDateType]       NVARCHAR (50)   NULL,
    [RowsAtOnce]              TINYINT         NULL,
    [CleansingFrom]           NVARCHAR (1000) NULL,
    [IncrementalSchema]       NVARCHAR (128)  NULL,
    [IncrementalTable]        NVARCHAR (128)  NULL,
    [IncrementalUpdateColumn] NVARCHAR (128)  NULL,
    [IncrementalKeyColumn]    NVARCHAR (1000) NULL,
    [WhereStatement]          NVARCHAR (MAX)  NULL,
    [DeleteStaging]           BIT             CONSTRAINT [DF_SourceExtractionTable_DeleteStaging] DEFAULT ((0)) NOT NULL,
    [IsStaging]               BIT             NOT NULL,
    [Options]                 NVARCHAR (1000) NULL,
    [IsActive]                BIT             NOT NULL,
    [IsActiveCleansing]       BIT             NULL
);













