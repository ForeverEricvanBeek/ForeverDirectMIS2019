CREATE TABLE [Control].[SourceExtractionControl] (
    [SourceExtractionControlID] SMALLINT      IDENTITY (1, 1) NOT NULL,
    [SourceConnection]          NVARCHAR (30) NOT NULL,
    [SourceSchema]              NVARCHAR (30) NOT NULL,
    [SourceTable]               NVARCHAR (30) NOT NULL,
    [ExtractionType]            NVARCHAR (2)  NOT NULL,
    [BatchID]                   BIGINT        NULL,
    [RowCountExtract]           INT           NULL,
    [RowCountTarget]            INT           NULL,
    [RowCountError]             INT           NULL,
    [LastExtractionDate]        DATETIME2 (7) NOT NULL,
    [LastExtractionID]          NVARCHAR (50) NULL
);

