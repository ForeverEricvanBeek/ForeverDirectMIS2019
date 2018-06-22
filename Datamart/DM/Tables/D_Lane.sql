CREATE TABLE [DM].[D_Lane] (
    [D_Lane_Skey]    BIGINT        IDENTITY (1, 1) NOT NULL,
    [Lane_ID]        NVARCHAR (20) NOT NULL,
    [Lane_Name]      SMALLINT      NULL,
    [Lane_Type]      NVARCHAR (20) NULL,
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
    CONSTRAINT [PK_D_Lane] PRIMARY KEY CLUSTERED ([D_Lane_Skey] ASC)
);

