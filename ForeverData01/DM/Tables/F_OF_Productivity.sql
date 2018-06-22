CREATE TABLE [DM].[F_OF_Productivity] (
    [DateKey]             BIGINT        NOT NULL,
    [TimeKey]             NVARCHAR (50) NULL,
    [D_WHS_Location_Skey] BIGINT        NOT NULL,
    [D_Lane_Skey]         BIGINT        NOT NULL,
    [D_OLPN_Skey]         BIGINT        NOT NULL,
    [D_Order_Skey]        BIGINT        NOT NULL,
    [D_SKU_Skey]          BIGINT        NOT NULL,
    [D_Pickers_Skey]      BIGINT        NOT NULL,
    [Number_Of_Units]     INT           NULL,
    [Number_Of_Picks]     INT           NULL,
    [Number_Of_Packs]     INT           NULL,
    [InsertDateTime]      DATETIME2 (7) NULL,
    [UpdateDateTime]      DATETIME2 (7) NULL,
    [BatchID]             BIGINT        NOT NULL,
    [ProcessLogID]        BIGINT        NULL
);

