CREATE TABLE [GenHist].[DatamartTable] (
    [DatamartTableID]    SMALLINT        NOT NULL,
    [DWHConnection]      NVARCHAR (50)   NOT NULL,
    [DWHSchema]          NVARCHAR (128)  NOT NULL,
    [DWHTable]           NVARCHAR (128)  NOT NULL,
    [SourceType]         NVARCHAR (128)  NOT NULL,
    [TableType]          NVARCHAR (1)    NOT NULL,
    [DatamartConnection] NVARCHAR (50)   NOT NULL,
    [DatamartSchema]     NVARCHAR (128)  NOT NULL,
    [DatamartTable]      NVARCHAR (128)  NOT NULL,
    [LoadingType]        NVARCHAR (8)    NOT NULL,
    [Options]            NVARCHAR (1000) NULL,
    [Generate]           BIT             NOT NULL,
    [IsActive]           BIT             NOT NULL,
    [LoadDate]           DATETIME2 (0)   CONSTRAINT [DF__DatamartT__LoadD__41EDCAC5] DEFAULT (getdate()) NULL
);

