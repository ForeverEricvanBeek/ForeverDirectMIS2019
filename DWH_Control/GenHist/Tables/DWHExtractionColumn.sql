CREATE TABLE [GenHist].[DWHExtractionColumn] (
    [DWHExtractionColumnID] SMALLINT        NOT NULL,
    [DWHSchema]             NVARCHAR (128)  NULL,
    [DWHTable]              NVARCHAR (128)  NOT NULL,
    [DWHColumnName]         NVARCHAR (128)  NULL,
    [DWHColumnExpression1]  NVARCHAR (1000) NULL,
    [DWHColumnExpression2]  NVARCHAR (1000) NULL,
    [IsActive]              BIT             NOT NULL,
    [LoadDate]              DATETIME2 (7)   CONSTRAINT [DF_DWHExtractionColumn_LoadDate] DEFAULT (getdate()) NULL
);

