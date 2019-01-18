CREATE TABLE [DM].[D_Lot_IFS] (
    [D_Lot_IFS_Skey]  BIGINT          IDENTITY (1, 1) NOT NULL,
    [Contract]        NVARCHAR (5)    NULL,
    [SKU_Name]        NVARCHAR (25)   NULL,
    [SKU_Code]        INT             NOT NULL,
    [Lot_Code]        NVARCHAR (20)   NOT NULL,
    [Inventory_Price] DECIMAL (18, 2) NULL,
    [Expiration_Date] DATETIME2 (7)   NULL,
    [CheckSum]        NVARCHAR (32)   NULL,
    [CheckSumSCD1]    NVARCHAR (32)   NULL,
    [CheckSumSCD2]    NVARCHAR (32)   NULL,
    [IsActual]        INT             NOT NULL,
    [IsInferred]      INT             NULL,
    [IsDeleted]       INT             NULL,
    [EffectiveDate]   DATE            NOT NULL,
    [ExpiryDate]      DATE            NULL,
    [InsertDateTime]  DATETIME2 (7)   NULL,
    [UpdateDateTime]  DATETIME2 (7)   NULL,
    [BatchID]         BIGINT          NOT NULL,
    [ProcessLogID]    BIGINT          NULL,
    CONSTRAINT [PK_D_Lot_IFS] PRIMARY KEY CLUSTERED ([D_Lot_IFS_Skey] ASC) WITH (FILLFACTOR = 80)
);

