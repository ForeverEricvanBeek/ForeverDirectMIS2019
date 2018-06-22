CREATE TABLE [Generator].[SourceExtractionXML] (
    [SourceExtractionXML] SMALLINT        IDENTITY (1, 1) NOT NULL,
    [SourceConnection]    NVARCHAR (255)  NOT NULL,
    [SourceTable]         NVARCHAR (128)  NOT NULL,
    [ElementName]         NVARCHAR (128)  NULL,
    [TargetConnection]    NVARCHAR (128)  NOT NULL,
    [TargetSchema]        NVARCHAR (128)  NOT NULL,
    [TargetTable]         NVARCHAR (128)  NOT NULL,
    [IsStaging]           BIT             NOT NULL,
    [Options]             NVARCHAR (1000) NULL,
    [IsActive]            BIT             NOT NULL
);

