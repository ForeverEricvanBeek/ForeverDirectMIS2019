CREATE TABLE [Generator].[SourceExtractionTable] (
    [SourceExtractionTableID] SMALLINT        IDENTITY (1, 1) NOT NULL,
    [SourceConnection]        NVARCHAR (256)  NOT NULL,
    [SourceSchema]            NVARCHAR (256)  NULL,
    [TargetSchema]            NVARCHAR (256)  NOT NULL,
    [Order]                   INT             NULL,
    [SourceTable]             NVARCHAR (256)  NOT NULL,
    [TargetTable]             NVARCHAR (256)  NULL,
    [TargetConnection]        NVARCHAR (256)  NOT NULL,
    [ArchiveDate]             NVARCHAR (256)  NULL,
    [ExtractionType]          NVARCHAR (256)  NOT NULL,
    [ArchiveType]             NVARCHAR (256)  NULL,
    [ArchiveSchema]           NVARCHAR (256)  NULL,
    [ArchiveTable]            NVARCHAR (256)  NULL,
    [CleansingType]           NVARCHAR (256)  NULL,
    [CleansingSource]         NVARCHAR (256)  NULL,
    [CleansingWhere]          NVARCHAR (1000) NULL,
    [CleansingDate]           NVARCHAR (256)  NULL,
    [CleansingDateType]       NVARCHAR (256)  NULL,
    [RowsAtOnce]              TINYINT         NULL,
    [CleansingFrom]           NVARCHAR (1000) NULL,
    [IncrementalSchema]       NVARCHAR (256)  NULL,
    [IncrementalTable]        NVARCHAR (256)  NULL,
    [IncrementalUpdateColumn] NVARCHAR (256)  NULL,
    [IncrementalKeyColumn]    NVARCHAR (1000) NULL,
    [WhereStatement]          NVARCHAR (MAX)  NULL,
    [DeleteStaging]           BIT             CONSTRAINT [DF_SourceExtractionTable_DeleteStaging] DEFAULT ((0)) NOT NULL,
    [IsStaging]               BIT             NOT NULL,
    [Options]                 NVARCHAR (4000) NULL,
    [IsActive]                BIT             NOT NULL,
    [IsActiveCleansing]       BIT             NULL
);















