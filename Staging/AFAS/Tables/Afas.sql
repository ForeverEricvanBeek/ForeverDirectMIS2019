CREATE TABLE [AFAS].[Afas] (
    [ID]      BIGINT          IDENTITY (1, 1) NOT NULL,
    [Date]    DATETIME2 (7)   CONSTRAINT [DF_Afas_Date] DEFAULT (getdate()) NULL,
    [Code]    NVARCHAR (50)   NULL,
    [Country] NVARCHAR (1000) NULL,
    CONSTRAINT [PK_Afas] PRIMARY KEY CLUSTERED ([ID] ASC)
);

