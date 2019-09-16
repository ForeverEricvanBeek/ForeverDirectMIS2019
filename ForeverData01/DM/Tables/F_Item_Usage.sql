CREATE TABLE [DM].[F_Item_Usage] (
    [DateKey]                             BIGINT          NOT NULL,
    [D_Country_Skey]                      BIGINT          NOT NULL,
    [D_Transporter_Skey]                  BIGINT          NOT NULL,
    [D_Order_Skey]                        BIGINT          NOT NULL,
    [D_OLPN_Skey]                         BIGINT          NOT NULL,
    [D_SKU1_Skey]                         BIGINT          NOT NULL,
    [D_SKU2_Skey]                         BIGINT          NOT NULL,
    [Contract]                            NVARCHAR (5)    NOT NULL,
    [D_Lot_Skey]                          BIGINT          NOT NULL,
    [D_Customer_Skey]                     BIGINT          NOT NULL,
    [D_BOM_Explosie_Skey]                 BIGINT          NOT NULL,
    [D_Product_Family_Skey]               BIGINT          NOT NULL,
    [Number_Of_Items_Used]                NUMERIC (27, 4) NULL,
    [Number_Of_Items_Direct_Shipped_Bulk] NUMERIC (16, 4) NULL,
    [InsertDateTime]                      DATETIME2 (7)   NULL,
    [UpdateDateTime]                      DATETIME2 (7)   NULL,
    [BatchID]                             BIGINT          NOT NULL,
    [ProcessLogID]                        BIGINT          NULL
);



