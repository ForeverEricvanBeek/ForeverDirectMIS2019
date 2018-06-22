CREATE TABLE [DM].[F_QC] (
    [DateKey]            BIGINT        NOT NULL,
    [D_Country_Skey]     BIGINT        NOT NULL,
    [D_Transporter_Skey] BIGINT        NOT NULL,
    [D_Order_Skey]       BIGINT        NOT NULL,
    [D_OLPN_Skey]        BIGINT        NOT NULL,
    [D_Pack_QC_Skey]     BIGINT        NOT NULL,
    [D_SKU1_Skey]        BIGINT        NOT NULL,
    [D_SKU2_Skey]        BIGINT        NOT NULL,
    [D_Lot_Skey]         BIGINT        NOT NULL,
    [D_Customer_Skey]    BIGINT        NOT NULL,
    [Customer_Item]      NVARCHAR (50) NULL,
    [InsertDateTime]     DATETIME2 (7) NULL,
    [UpdateDateTime]     DATETIME2 (7) NULL,
    [BatchID]            BIGINT        NOT NULL,
    [ProcessLogID]       BIGINT        NULL
);

