CREATE TABLE [EXTRA].[ORDERS_SHIP_DATE] (
    [TC_Order_ID]             NVARCHAR (50) NOT NULL,
    [Order_Create_Date]       DATETIME2 (7) NULL,
    [Order_Cuttoff_Time]      TIME (7)      NULL,
    [Order_Wave_Date]         DATETIME2 (7) NULL,
    [Order_Planned_Ship_Date] DATE          NULL,
    [BatchID]                 BIGINT        NOT NULL,
    [ProcessLogID]            BIGINT        NULL,
    CONSTRAINT [PK_ORDERS_SHIP_DATE] PRIMARY KEY CLUSTERED ([TC_Order_ID] ASC)
);



