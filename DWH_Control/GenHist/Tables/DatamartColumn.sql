CREATE TABLE [GenHist].[DatamartColumn] (
    [DatamartColumnID]           SMALLINT       NOT NULL,
    [DatamartConnection]         NVARCHAR (50)  NOT NULL,
    [DatamartSchema]             NVARCHAR (128) NOT NULL,
    [DatamartTable]              NVARCHAR (128) NOT NULL,
    [ColumnName]                 NVARCHAR (128) NOT NULL,
    [ColumnType]                 NVARCHAR (10)  NOT NULL,
    [ColumnPosition]             INT            NOT NULL,
    [ColumnDefaultValue]         NVARCHAR (300) NULL,
    [ColumnInferredValue]        NVARCHAR (300) NULL,
    [ColumnNotApplicableValue]   NVARCHAR (300) NULL,
    [ColumnUnknownValue]         NVARCHAR (300) NULL,
    [LookupConnection]           NVARCHAR (50)  NULL,
    [LookupSchema]               NVARCHAR (128) NULL,
    [LookupTable]                NVARCHAR (128) NULL,
    [LookupColum]                NVARCHAR (128) NULL,
    [LookupJoin]                 NVARCHAR (300) NULL,
    [LookupHasInferredMechanism] BIT            NULL,
    [IsActive]                   BIT            NOT NULL,
    [LoadDate]                   DATETIME2 (0)  CONSTRAINT [DF__DatamartC__LoadD__40058253] DEFAULT (getdate()) NULL
);

