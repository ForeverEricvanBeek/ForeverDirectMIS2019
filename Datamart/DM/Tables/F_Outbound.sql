CREATE TABLE [DM].[F_Outbound] (
    [DateKey]                           BIGINT        NOT NULL,
    [D_Facility_Skey]                   BIGINT        NOT NULL,
    [D_Country_Skey]                    BIGINT        NOT NULL,
    [D_Transporter_Skey]                BIGINT        NOT NULL,
    [D_Shipment_Skey]                   BIGINT        NOT NULL,
    [D_Order_Skey]                      BIGINT        NOT NULL,
    [D_OLPN_Skey]                       BIGINT        NOT NULL,
    [D_SKU1_Skey]                       BIGINT        NOT NULL,
    [D_SKU2_Skey]                       BIGINT        NOT NULL,
    [D_Lot_Skey]                        BIGINT        NOT NULL,
    [D_WHS_Location1_Skey]              BIGINT        NOT NULL,
    [D_WHS_Location2_Skey]              BIGINT        NOT NULL,
    [D_Customer_Skey]                   BIGINT        NOT NULL,
    [Customer_Item]                     NVARCHAR (50) NULL,
    [D_Pickers_Skey]                    BIGINT        NOT NULL,
    [D_Order_Type_Skey]                 BIGINT        NOT NULL,
    [D_OF_Issues_Skey]                  BIGINT        NOT NULL,
    [D_OF_Complaints_Skey]              BIGINT        NOT NULL,
    [Number_Of_Orders_Shipped]          INT           NULL,
    [Number_Of_IFS_Order_Lines_Shipped] INT           NULL,
    [Number_Of_WMS_Order_Lines_Shipped] INT           NULL,
    [Number_Of_Parcels_Shipped]         INT           NULL,
    [Number_Of_Units_Shipped]           INT           NULL,
    [Number_Of_Orders_Not_Shipped]      INT           NULL,
    [Number_Of_Picks]                   INT           NULL,
    [Number_Of_Complaints]              INT           NULL,
    [Number_Of_Issues]                  INT           NULL,
    [InsertDateTime]                    DATETIME2 (7) NULL,
    [UpdateDateTime]                    DATETIME2 (7) NULL,
    [BatchID]                           BIGINT        NOT NULL,
    [ProcessLogID]                      BIGINT        NULL
);




GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_F_Outbound]
    ON [DM].[F_Outbound];

