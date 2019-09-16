CREATE TABLE [DM].[F_Stock_Netto] (
    [DateKey]                   BIGINT          NULL,
    [D_SKU_Skey]                BIGINT          NOT NULL,
    [Contract]                  NVARCHAR (5)    NULL,
    [D_Lot_Skey]                BIGINT          NULL,
    [D_Lot_IFS_Skey]            BIGINT          NULL,
    [D_Aging_Category_Skey]     BIGINT          NULL,
    [D_ILPN_Skey]               BIGINT          NULL,
    [D_WHS_Location_Skey]       BIGINT          NULL,
    [Number_Of_Netto_Units]     NUMERIC (38, 5) NULL,
    [Number_Of_Allocated_Units] NUMERIC (38, 5) NULL,
    [Number_Of_On_Hand_Units]   NUMERIC (38, 5) NOT NULL,
    [InsertDateTime]            DATETIME2 (7)   NULL,
    [UpdateDateTime]            DATETIME2 (7)   NULL,
    [BatchID]                   BIGINT          NOT NULL,
    [ProcessLogID]              BIGINT          NULL
);



