CREATE TABLE [DM].[D_Vas_Lane] (
    [D_Vas_Lane_Skey]      BIGINT         IDENTITY (1, 1) NOT NULL,
    [Vas_Lane_Code]        NVARCHAR (100) NULL,
    [Vas_Lane_Description] NVARCHAR (100) NULL,
    [CheckSum]             NVARCHAR (32)  NULL,
    [CheckSumSCD1]         NVARCHAR (32)  NULL,
    [CheckSumSCD2]         NVARCHAR (32)  NULL,
    [IsActual]             INT            NOT NULL,
    [IsInferred]           INT            NULL,
    [IsDeleted]            INT            NULL,
    [EffectiveDate]        DATE           NOT NULL,
    [ExpiryDate]           DATE           NULL,
    [InsertDateTime]       DATETIME2 (7)  NULL,
    [UpdateDateTime]       DATETIME2 (7)  NULL,
    [BatchID]              BIGINT         NOT NULL,
    [ProcessLogID]         BIGINT         NULL,
    CONSTRAINT [PK_D_Vas_Lane] PRIMARY KEY CLUSTERED ([D_Vas_Lane_Skey] ASC) WITH (FILLFACTOR = 80)
);

