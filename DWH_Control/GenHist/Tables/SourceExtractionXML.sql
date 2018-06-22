CREATE TABLE [GenHist].[SourceExtractionXML] (
    [SourceExtractionXML] SMALLINT        NOT NULL,
    [SourceConnection]    NVARCHAR (255)  NOT NULL,
    [SourceTable]         NVARCHAR (128)  NOT NULL,
    [ElementName]         NVARCHAR (128)  NULL,
    [TargetConnection]    NVARCHAR (128)  NOT NULL,
    [TargetSchema]        NVARCHAR (128)  NOT NULL,
    [TargetTable]         NVARCHAR (128)  NOT NULL,
    [IsStaging]           BIT             NOT NULL,
    [Options]             NVARCHAR (1000) NULL,
    [IsActive]            BIT             NOT NULL,
    [LoadDate]            DATETIME2 (0)   CONSTRAINT [DF__SourceExt__LoadD__498EEC8D] DEFAULT (getdate()) NULL
);

