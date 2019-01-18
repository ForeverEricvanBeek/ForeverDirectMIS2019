CREATE TABLE [Control].[DWHControl] (
    [DWHControlID]          SMALLINT      IDENTITY (1, 1) NOT NULL,
    [SourceConnection]      NVARCHAR (30) NOT NULL,
    [SourceSchema]          NVARCHAR (30) NOT NULL,
    [SourceTable]           NVARCHAR (30) NOT NULL,
    [ExtractionType]        NVARCHAR (2)  NOT NULL,
    [BatchID]               BIGINT        NULL,
    [RowCountExtract]       INT           NULL,
    [RowCountTarget]        INT           NULL,
    [RowCountArchiveBefore] INT           NULL,
    [RowCountArchiveAfter]  INT           NULL,
    [RowCountError]         INT           NULL,
    [LastLoadDate]          DATETIME2 (7) NOT NULL
);



