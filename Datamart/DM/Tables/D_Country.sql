CREATE TABLE [DM].[D_Country] (
    [D_Country_Skey] BIGINT        IDENTITY (1, 1) NOT NULL,
    [Country_Code]   NVARCHAR (16) NOT NULL,
    [Country_Name]   NVARCHAR (50) NOT NULL,
    [CheckSum]       NVARCHAR (32) NULL,
    [CheckSumSCD1]   NVARCHAR (32) NULL,
    [CheckSumSCD2]   NVARCHAR (32) NULL,
    [IsActual]       INT           NOT NULL,
    [IsInferred]     INT           NULL,
    [IsDeleted]      INT           NULL,
    [EffectiveDate]  DATE          NOT NULL,
    [ExpiryDate]     DATE          NULL,
    [InsertDateTime] DATETIME2 (7) NULL,
    [UpdateDateTime] DATETIME2 (7) NULL,
    [BatchID]        BIGINT        NOT NULL,
    [ProcessLogID]   BIGINT        NULL,
    CONSTRAINT [PK_D_Country] PRIMARY KEY CLUSTERED ([D_Country_Skey] ASC) WITH (FILLFACTOR = 80)
);


GO
CREATE NONCLUSTERED INDEX [NI_D_Country_Country_Name]
    ON [DM].[D_Country]([D_Country_Skey] ASC, [Country_Code] ASC, [Country_Name] ASC) WITH (FILLFACTOR = 80);


GO
CREATE NONCLUSTERED INDEX [NI_D_Country_Country_Code]
    ON [DM].[D_Country]([Country_Code] ASC) WITH (FILLFACTOR = 80);

