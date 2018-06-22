CREATE TABLE [GenHist].[DataTypeConversion] (
    [DataTypeConversionID] SMALLINT      NOT NULL,
    [DataType]             NVARCHAR (30) NOT NULL,
    [DataTypeExpression]   NVARCHAR (30) NOT NULL,
    [IsActive]             BIT           NOT NULL,
    [LoadDate]             DATETIME2 (0) CONSTRAINT [DF__DataTypeC__LoadD__43D61337] DEFAULT (getdate()) NULL
);

