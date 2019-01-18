CREATE TABLE [DM].[F_Outbound] (
    [DateKey]                           BIGINT        NOT NULL,
    [D_Country_Skey]                    BIGINT        NOT NULL,
    [D_Transporter_Skey]                BIGINT        NOT NULL,
    [D_Order_Skey]                      BIGINT        NOT NULL,
    [D_OLPN_Skey]                       BIGINT        NOT NULL,
    [D_SKU1_Skey]                       BIGINT        NOT NULL,
    [D_SKU2_Skey]                       BIGINT        NOT NULL,
    [D_Lot_Skey]                        BIGINT        NOT NULL,
    [D_Lot_IFS_Skey]                    BIGINT        NOT NULL,
    [D_Customer_Skey]                   BIGINT        NOT NULL,
    [D_Product_Family_Skey]             BIGINT        NOT NULL,
    [Number_Of_Orders_Shipped]          INT           NULL,
    [Number_Of_IFS_Order_Lines_Shipped] INT           NULL,
    [Number_Of_WMS_Order_Lines_Shipped] INT           NULL,
    [Number_Of_Parcels_Shipped]         INT           NULL,
    [Number_Of_Units_Shipped]           INT           NULL,
    [InsertDateTime]                    DATETIME2 (7) NULL,
    [UpdateDateTime]                    DATETIME2 (7) NULL,
    [BatchID]                           BIGINT        NOT NULL,
    [ProcessLogID]                      BIGINT        NULL
);

