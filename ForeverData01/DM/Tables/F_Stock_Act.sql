CREATE TABLE [DM].[F_Stock_Act] (
    [DateKey]               BIGINT          NOT NULL,
    [D_SKU_Skey]            BIGINT          NOT NULL,
    [D_Lot_Skey]            BIGINT          NOT NULL,
    [D_Lot_IFS_Skey]        BIGINT          NOT NULL,
    [D_Aging_Category_Skey] BIGINT          NOT NULL,
    [D_ILPN_Skey]           BIGINT          NULL,
    [D_WHS_Location_Skey]   BIGINT          NULL,
    [Number_Of_Units]       INT             NULL,
    [Value_Of_Units]        NUMERIC (15, 7) NULL,
    [InsertDateTime]        DATETIME2 (7)   NULL,
    [UpdateDateTime]        DATETIME2 (7)   NULL,
    [BatchID]               BIGINT          NOT NULL,
    [ProcessLogID]          BIGINT          NULL
);



