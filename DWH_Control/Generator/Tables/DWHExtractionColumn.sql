CREATE TABLE [Generator].[DWHExtractionColumn] (
    [DWHExtractionColumnID] SMALLINT        IDENTITY (1, 1) NOT NULL,
    [DWHSchema]             NVARCHAR (128)  NULL,
    [DWHTable]              NVARCHAR (128)  NOT NULL,
    [DWHColumnName]         NVARCHAR (128)  NULL,
    [DWHColumnExpression1]  NVARCHAR (1000) NULL,
    [DWHColumnExpression2]  NVARCHAR (1000) NULL,
    [IsActive]              BIT             NOT NULL
);

