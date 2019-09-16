CREATE TABLE [DM].[D_Afas_Contract_Soort] (
    [D_Afas_Contract_Soort_Skey]   BIGINT          IDENTITY (1, 1) NOT NULL,
    [DienstbetrekkingCode]         NVARCHAR (2000) NULL,
    [DienstbetrekkingOmschrijving] NVARCHAR (2000) NULL,
    [CheckSum]                     NVARCHAR (32)   NULL,
    [CheckSumSCD1]                 NVARCHAR (32)   NULL,
    [CheckSumSCD2]                 NVARCHAR (32)   NULL,
    [IsActual]                     INT             NOT NULL,
    [IsInferred]                   INT             NULL,
    [IsDeleted]                    INT             NULL,
    [EffectiveDate]                DATE            NOT NULL,
    [ExpiryDate]                   DATE            NULL,
    [InsertDateTime]               DATETIME2 (7)   NULL,
    [UpdateDateTime]               DATETIME2 (7)   NULL,
    [BatchID]                      BIGINT          NOT NULL,
    [ProcessLogID]                 BIGINT          NULL,
    CONSTRAINT [PK_D_Afas_Contract_Soort] PRIMARY KEY CLUSTERED ([D_Afas_Contract_Soort_Skey] ASC) WITH (FILLFACTOR = 80)
);

