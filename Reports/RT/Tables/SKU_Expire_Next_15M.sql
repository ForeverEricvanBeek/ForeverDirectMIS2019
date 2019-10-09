CREATE TABLE [RT].[SKU_Expire_Next_15M] (
    [SKU_Name]             NVARCHAR (100)  NULL,
    [SKU_Description]      NVARCHAR (65)   NULL,
    [Num_of_Countries]     BIGINT          NULL,
    [Lot_Code]             NVARCHAR (20)   NULL,
    [Inventory_QTY]        INT             NULL,
    [Inventory_Cost_Price] DECIMAL (22, 5) NULL,
    [Inventory_Value]      DECIMAL (29, 2) NULL,
    [Expiration_Date]      DATETIME2 (7)   NULL,
    [Days_to_Expire]       INT             NULL,
    [Request_ID]           BIGINT          NULL,
    [BatchID]              BIGINT          NULL,
    [ProcessLogID]         BIGINT          NULL
);

