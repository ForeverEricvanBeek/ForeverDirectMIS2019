CREATE TABLE [DM].[F_Sales] (
    [DateKey]                            DATE            NOT NULL,
    [D_Country_Skey]                     BIGINT          NOT NULL,
    [D_Transporter_Skey]                 BIGINT          NOT NULL,
    [D_Order_Skey]                       BIGINT          NOT NULL,
    [Master_Order]                       NVARCHAR (50)   NOT NULL,
    [Order_ID_IFS]                       NVARCHAR (12)   NOT NULL,
    [SKU_Name]                           NVARCHAR (25)   NOT NULL,
    [Status]                             NVARCHAR (4000) NOT NULL,
    [Date_Item_Ordered]                  DATE            NULL,
    [D_Shipment_Skey]                    BIGINT          NOT NULL,
    [Number_Items_Initial_Ordered]       DECIMAL (18)    NOT NULL,
    [Number_Items_Shipped]               INT             NOT NULL,
    [Total_Number_Items_Initial_Ordered] DECIMAL (18)    NOT NULL,
    [Total_Number_Items_Shipped]         INT             NOT NULL,
    [InsertDateTime]                     DATETIME2 (7)   NOT NULL,
    [UpdateDateTime]                     DATETIME2 (7)   NOT NULL,
    [BatchID]                            BIGINT          NOT NULL,
    [ProcessLogID]                       BIGINT          NOT NULL
);

