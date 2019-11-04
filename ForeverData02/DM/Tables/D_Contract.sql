CREATE TABLE [DM].[D_Contract] (
    [D_Contract_Skey]      BIGINT          IDENTITY (1, 1) NOT NULL,
    [Contract_Contract]    NVARCHAR (5)    NOT NULL,
    [Contract_Company]     NVARCHAR (20)   NULL,
    [Contract_Description] NVARCHAR (4000) NULL,
    [CheckSum]             NVARCHAR (32)   NULL,
    [CheckSumSCD1]         NVARCHAR (32)   NULL,
    [CheckSumSCD2]         NVARCHAR (32)   NULL,
    [IsActual]             INT             NOT NULL,
    [IsInferred]           INT             NULL,
    [IsDeleted]            INT             NULL,
    [EffectiveDate]        DATE            NOT NULL,
    [ExpiryDate]           DATE            NULL,
    [InsertDateTime]       DATETIME2 (7)   NULL,
    [UpdateDateTime]       DATETIME2 (7)   NULL,
    [BatchID]              BIGINT          NOT NULL,
    [ProcessLogID]         BIGINT          NULL,
    CONSTRAINT [PK_D_Contract] PRIMARY KEY CLUSTERED ([D_Contract_Skey] ASC) WITH (FILLFACTOR = 80)
);



