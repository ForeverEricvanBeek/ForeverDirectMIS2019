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
    [Eff_Date]                DATE          NOT NULL,
    [End_Date]                DATE          NULL,
    [ActInd]                  CHAR (1)      NULL,
    [IsDeleted]               CHAR (1)      NULL,
    [BatchID]                 BIGINT        NULL,
    [ProcessLogID]            BIGINT        NULL,
    CONSTRAINT [PK_ORDERS_INFO] PRIMARY KEY CLUSTERED ([TC_Order_ID] ASC, [Eff_Date] ASC) WITH (FILLFACTOR = 90)
);






GO
CREATE NONCLUSTERED INDEX [PK_ORDERS_INFO_ORDER_ACTIND]
    ON [EXTRA].[ORDERS_INFO]([TC_Order_ID] ASC, [ActInd] ASC);

