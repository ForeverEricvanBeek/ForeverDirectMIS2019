CREATE TABLE [DM].[D_Department] (
    [D_Department_Skey]      BIGINT         IDENTITY (1, 1) NOT NULL,
    [Department_ID]          SMALLINT       NULL,
    [Department_Code]        NVARCHAR (50)  NULL,
    [Department_Description] NVARCHAR (250) NULL,
    [CheckSum]               NVARCHAR (32)  NULL,
    [CheckSumSCD1]           NVARCHAR (32)  NULL,
    [CheckSumSCD2]           NVARCHAR (32)  NULL,
    [IsActual]               INT            NULL,
    [IsInferred]             INT            NULL,
    [IsDeleted]              INT            NULL,
    [EffectiveDate]          DATE           NULL,
    [ExpiryDate]             DATE           NULL,
    [InsertDateTime]         DATETIME2 (7)  NULL,
    [UpdateDateTime]         DATETIME2 (7)  NULL,
    [BatchID]                BIGINT         NULL,
    [ProcessLogID]           BIGINT         NULL,
    CONSTRAINT [PK_D_Department] PRIMARY KEY CLUSTERED ([D_Department_Skey] ASC) WITH (FILLFACTOR = 80)
);

