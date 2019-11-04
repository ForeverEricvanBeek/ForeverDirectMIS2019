CREATE TABLE [DM].[F_Outbound] (
    [DateKey]                      BIGINT          NOT NULL,
    [D_Order_Type_Skey]            BIGINT          NOT NULL,
    [D_Facility_Skey]              BIGINT          NOT NULL,
    [D_Country_Skey]               BIGINT          NOT NULL,
    [D_Transporter_Skey]           BIGINT          NOT NULL,
    [D_Shipment_Skey]              BIGINT          NOT NULL,
    [D_Order_Skey]                 BIGINT          NOT NULL,
    [D_OLPN_Skey]                  BIGINT          NOT NULL,
    [D_SKU1_Skey]                  BIGINT          NOT NULL,
    [D_SKU2_Skey]                  BIGINT          NOT NULL,
    [D_Contract_Skey]              BIGINT          NOT NULL,
    [D_Lot_Skey]                   BIGINT          NOT NULL,
    [D_Customer_Skey]              BIGINT          NOT NULL,
    [D_Product_Family_Skey]        BIGINT          NOT NULL,
    [D_Container_Skey]             BIGINT          NOT NULL,
    [D_Complaint_Skey]             BIGINT          NOT NULL,
    [#Orders_Shipped]              INT             NULL,
    [#IFS_Order_Lines_Shipped]     INT             NULL,
    [#WMS_Order_Lines_Shipped]     INT             NULL,
    [#Parcels_Shipped]             INT             NULL,
    [#Units_Shipped]               NUMERIC (16, 4) NULL,
    [#Units_Cancelled]             DECIMAL (18, 2) NULL,
    [#Orders_Incomplete]           INT             NULL,
    [#Unavailable_Units_Cancelled] INT             NULL,
    [#Orders_Not_Shipped_On_Time]  INT             NULL,
    [#Picklines]                   INT             NULL,
    [#Complaints]                  INT             NULL,
    [InsertDateTime]               DATETIME2 (7)   NULL,
    [UpdateDateTime]               DATETIME2 (7)   NULL,
    [BatchID]                      BIGINT          NOT NULL,
    [ProcessLogID]                 BIGINT          NULL
);






GO
CREATE CLUSTERED COLUMNSTORE INDEX [ClusteredColumnStoreIndex-20191023-124907]
    ON [DM].[F_Outbound];

