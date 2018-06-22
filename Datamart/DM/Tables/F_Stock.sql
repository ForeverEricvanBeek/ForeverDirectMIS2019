CREATE TABLE [DM].[F_Stock] (
    [DateKey]               BIGINT          NOT NULL,
    [D_SKU_Skey]            BIGINT          NOT NULL,
    [D_Lot_Skey]            BIGINT          NOT NULL,
    [D_Aging_Category_Skey] BIGINT          NOT NULL,
    [Number_Of_Units]       INT             NULL,
    [Value_Of_Units]        NUMERIC (15, 7) NULL,
    [InsertDateTime]        DATETIME2 (7)   NULL,
    [UpdateDateTime]        DATETIME2 (7)   NULL,
    [BatchID]               BIGINT          NOT NULL,
    [ProcessLogID]          BIGINT          NULL
);




GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_F_Stock]
    ON [DM].[F_Stock];

