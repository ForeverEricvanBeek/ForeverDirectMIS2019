CREATE TABLE [DM].[D_Lot] (
    [D_Lot_Skey]             BIGINT          IDENTITY (1, 1) NOT NULL,
    [Lot_SKU_Code]           NVARCHAR (29)   NOT NULL,
    [Lot_Code]               NVARCHAR (15)   NOT NULL,
    [Lot_Status_Code]        SMALLINT        NULL,
    [Lot_Status_Description] NVARCHAR (100)  NULL,
    [Lot_Received_Date]      DATETIME2 (7)   NULL,
    [Lot_Expire_Date]        DATETIME2 (7)   NULL,
    [Lot_Lock_Date]          DATETIME2 (7)   NULL,
    [Lot_Expire_Flag]        NVARCHAR (1)    NULL,
    [Lot_Cost_Price]         DECIMAL (18, 2) NULL,
    [CheckSum]               NVARCHAR (32)   NULL,
    [CheckSumSCD1]           NVARCHAR (32)   NULL,
    [CheckSumSCD2]           NVARCHAR (32)   NULL,
    [IsActual]               INT             NOT NULL,
    [IsInferred]             INT             NULL,
    [IsDeleted]              INT             NULL,
    [EffectiveDate]          DATE            NOT NULL,
    [ExpiryDate]             DATE            NULL,
    [InsertDateTime]         DATETIME2 (7)   NULL,
    [UpdateDateTime]         DATETIME2 (7)   NULL,
    [BatchID]                BIGINT          NOT NULL,
    [ProcessLogID]           BIGINT          NULL,
    CONSTRAINT [PK_D_Lot] PRIMARY KEY CLUSTERED ([D_Lot_Skey] ASC) WITH (FILLFACTOR = 80)
);





