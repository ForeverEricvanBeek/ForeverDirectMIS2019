CREATE TABLE [DM].[D_Vas] (
    [D_Vas_Skey]              BIGINT         IDENTITY (1, 1) NOT NULL,
    [Vas_Machine_Code]        NVARCHAR (100) NULL,
    [Vas_Machine_Description] NVARCHAR (100) NULL,
    [CheckSum]                NVARCHAR (32)  NULL,
    [CheckSumSCD1]            NVARCHAR (32)  NULL,
    [CheckSumSCD2]            NVARCHAR (32)  NULL,
    [IsActual]                INT            NOT NULL,
    [IsInferred]              INT            NULL,
    [IsDeleted]               INT            NULL,
    [EffectiveDate]           DATE           NOT NULL,
    [ExpiryDate]              DATE           NULL,
    [InsertDateTime]          DATETIME2 (7)  NULL,
    [UpdateDateTime]          DATETIME2 (7)  NULL,
    [BatchID]                 BIGINT         NOT NULL,
    [ProcessLogID]            BIGINT         NULL,
    CONSTRAINT [PK_D_Vas] PRIMARY KEY CLUSTERED ([D_Vas_Skey] ASC) WITH (FILLFACTOR = 80)
);

