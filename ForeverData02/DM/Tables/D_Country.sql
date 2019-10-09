CREATE TABLE [DM].[D_Country] (
    [D_Country_Skey]   BIGINT        IDENTITY (1, 1) NOT NULL,
    [Country_Code]     NVARCHAR (2)  NOT NULL,
    [Country_Name]     NVARCHAR (40) NOT NULL,
    [Country_A3_Code]  NVARCHAR (7)  NULL,
    [Country_Iso_Code] NVARCHAR (7)  NULL,
    [Geo_Region_Code]  NVARCHAR (7)  NULL,
    [CheckSum]         NVARCHAR (32) NULL,
    [CheckSumSCD1]     NVARCHAR (32) NULL,
    [CheckSumSCD2]     NVARCHAR (32) NULL,
    [IsActual]         INT           NOT NULL,
    [IsInferred]       INT           NULL,
    [IsDeleted]        INT           NULL,
    [EffectiveDate]    DATE          NOT NULL,
    [ExpiryDate]       DATE          NULL,
    [InsertDateTime]   DATETIME2 (7) NULL,
    [UpdateDateTime]   DATETIME2 (7) NULL,
    [BatchID]          BIGINT        NOT NULL,
    [ProcessLogID]     BIGINT        NULL,
    CONSTRAINT [PK_D_Country] PRIMARY KEY CLUSTERED ([D_Country_Skey] ASC) WITH (FILLFACTOR = 80)
);

