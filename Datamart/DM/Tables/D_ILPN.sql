CREATE TABLE [DM].[D_ILPN] (
    [D_ILPN_Skey]    BIGINT        IDENTITY (1, 1) NOT NULL,
    [ILPN_ID]        BIGINT        NOT NULL,
    [ILPN_TC_LPN_ID] NVARCHAR (50) NOT NULL,
    [ILPN_LOCK_CODE] NVARCHAR (50) NULL,
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
    CONSTRAINT [D_ILPN_Skey] PRIMARY KEY CLUSTERED ([D_ILPN_Skey] ASC) WITH (FILLFACTOR = 80)
);

