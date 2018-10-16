CREATE TABLE [EXTRA].[ORDERS_SHIP_DATE] (
    [TC_Order_ID]             NVARCHAR (50) NOT NULL,
    [Order_Create_Date]       DATETIME2 (7) NULL,
    [Order_Cuttoff_Time]      TIME (7)      NULL,
    [Order_Wave_Date]         DATETIME2 (7) NULL,
    [Order_Planned_Ship_Date] DATE          NULL,
    [Eff_Date]                DATE          NOT NULL,
    [End_Date]                DATE          NULL,
    [ActInd]                  CHAR (1)      NULL,
    [IsDeleted]               CHAR (1)      NULL,
    [BatchID]                 BIGINT        NULL,
    [ProcessLogID]            BIGINT        NULL,
    CONSTRAINT [PK_ORDERS_SHIP_DATE] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [TC_Order_ID] ASC) ON [DWH_EXTRA]
) ON [DWH_EXTRA];






GO
CREATE NONCLUSTERED INDEX [NI_EXTRA_ORDERS_SHIP_DATE_ORDERID_ACTIND]
    ON [EXTRA].[ORDERS_SHIP_DATE]([TC_Order_ID] ASC, [ActInd] ASC)
    INCLUDE([Order_Planned_Ship_Date]) WITH (FILLFACTOR = 90)
    ON [DWH_EXTRA];

