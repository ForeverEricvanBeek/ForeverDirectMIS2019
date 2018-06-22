CREATE TABLE [Generator].[SourceExtractionColumn] (
    [SourceExtractionColumnID] SMALLINT        IDENTITY (1, 1) NOT NULL,
    [SourceConnection]         NVARCHAR (50)   NOT NULL,
    [SourceSchema]             NVARCHAR (128)  NULL,
    [SourceTable]              NVARCHAR (128)  NOT NULL,
    [SourceColumnName]         NVARCHAR (128)  NULL,
    [SourceColumnExpression]   NVARCHAR (1000) NULL,
    [SourceColumnType]         NVARCHAR (128)  NULL,
    [SourceColumnLength]       INT             NULL,
    [SourceColumnPrecision]    INT             NULL,
    [SourceColumnScale]        INT             NULL,
    [SourceColumnPosition]     INT             NULL,
    [TargetColumnName]         NVARCHAR (128)  NULL,
    [TargetColumnExpression]   NVARCHAR (1000) NULL,
    [TargetColumnType]         NVARCHAR (128)  NULL,
    [TargetColumnLength]       INT             NULL,
    [TargetColumnPrecision]    INT             NULL,
    [TargetColumnScale]        INT             NULL,
    [IsActive]                 BIT             NOT NULL
);

