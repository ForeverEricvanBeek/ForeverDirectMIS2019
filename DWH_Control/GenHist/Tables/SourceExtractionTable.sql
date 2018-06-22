CREATE TABLE [GenHist].[SourceExtractionTable] (
    [SourceExtractionTableID] SMALLINT        NOT NULL,
    [SourceConnection]        NVARCHAR (50)   NOT NULL,
    [SourceSchema]            NVARCHAR (128)  NULL,
    [TargetSchema]            NVARCHAR (128)  NOT NULL,
    [Order]                   INT             NULL,
    [SourceTable]             NVARCHAR (128)  NOT NULL,
    [TargetTable]             NVARCHAR (128)  NULL,
    [TargetConnection]        NVARCHAR (50)   NOT NULL,
    [ExtractionType]          NVARCHAR (2)    NOT NULL,
    [IncrementalSchema]       NVARCHAR (128)  NULL,
    [IncrementalTable]        NVARCHAR (128)  NULL,
    [IncrementalUpdateColumn] NVARCHAR (128)  NULL,
    [IncrementalKeyColumn]    NVARCHAR (1000) NULL,
    [WhereStatement]          NVARCHAR (MAX)  NULL,
    [IsStaging]               BIT             NOT NULL,
    [Options]                 NVARCHAR (1000) NULL,
    [IsActive]                BIT             NOT NULL,
    [LoadDate]                DATETIME2 (0)   CONSTRAINT [DF__SourceExt__LoadD__47A6A41B] DEFAULT (getdate()) NULL
);

