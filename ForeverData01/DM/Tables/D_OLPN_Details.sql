CREATE TABLE [DM].[D_OLPN_Details] (
    [D_OLPN_Details_Skey] BIGINT          IDENTITY (1, 1) NOT NULL,
    [OLPN_ID]             NVARCHAR (50)   NOT NULL,
    [SKU_Name]            NVARCHAR (100)  NULL,
    [Shipped_QTY]         NUMERIC (13, 4) NULL,
    [CheckSum]            NVARCHAR (32)   NULL,
    [CheckSumSCD1]        NVARCHAR (32)   NULL,
    [CheckSumSCD2]        NVARCHAR (32)   NULL,
    [IsActual]            INT             NOT NULL,
    [IsInferred]          INT             NULL,
    [IsDeleted]           INT             NULL,
    [EffectiveDate]       DATE            NOT NULL,
    [ExpiryDate]          DATE            NULL,
    [InsertDateTime]      DATETIME2 (7)   NULL,
    [UpdateDateTime]      DATETIME2 (7)   NULL,
    [BatchID]             BIGINT          NOT NULL,
    [ProcessLogID]        BIGINT          NULL,
    CONSTRAINT [PK_D_OLPN_Details] PRIMARY KEY CLUSTERED ([D_OLPN_Details_Skey] ASC) WITH (FILLFACTOR = 80)
);

