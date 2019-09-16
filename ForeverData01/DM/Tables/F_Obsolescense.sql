CREATE TABLE [DM].[F_Obsolescense] (
    [Contract]              NVARCHAR (5)    NULL,
    [SKU_Name]              NVARCHAR (25)   NULL,
    [D_SKU_Skey]            BIGINT          NOT NULL,
    [Lot_Code]              NVARCHAR (20)   NOT NULL,
    [Inventory_Netto_QTY]   INT             NULL,
    [Inventory_Cost_Price]  DECIMAL (22, 5) NULL,
    [Inventory_Netto_Value] DECIMAL (29, 2) NULL,
    [Expiration_Date]       DATETIME2 (7)   NULL,
    [Days_to_Expire]        INT             NULL,
    [InsertDateTime]        DATETIME2 (7)   NULL,
    [UpdateDateTime]        DATETIME2 (7)   NULL,
    [BatchID]               BIGINT          NOT NULL,
    [ProcessLogID]          BIGINT          NULL
);



