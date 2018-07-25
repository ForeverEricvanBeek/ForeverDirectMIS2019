CREATE TABLE [EXTRA].[ORDERS_INFO] (
    [TC_Order_ID]             NVARCHAR (50) NOT NULL,
    [Order_IFS_ID]            NVARCHAR (50) NULL,
    [Order_Create_Date]       DATETIME2 (7) NULL,
    [Order_Cuttoff_Time]      TIME (7)      NULL,
    [Order_Wave_Date]         DATETIME2 (7) NULL,
    [Order_Planned_Ship_Date] DATE          NULL,
    [Order_Num_Of_Parcels]    INT           NULL,
    [Order_Manh_Order_Lines]  INT           NULL,
    [Order_IFS_Order_Lines]   INT           NULL,
    [Order_Shipment_ID]       NVARCHAR (50) NULL,
    [BatchID]                 BIGINT        NULL,
    [ProcessLogID]            BIGINT        NULL,
    CONSTRAINT [PK_ORDERS_INFO] PRIMARY KEY CLUSTERED ([TC_Order_ID] ASC) WITH (FILLFACTOR = 90)
);





