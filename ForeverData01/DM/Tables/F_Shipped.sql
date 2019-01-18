CREATE TABLE [DM].[F_Shipped] (
    [DateKey]                 BIGINT        NOT NULL,
    [D_Shipment_Skey]         NVARCHAR (50) NOT NULL,
    [D_Order_Skey]            NVARCHAR (50) NOT NULL,
    [D_Facility_Skey]         NVARCHAR (16) NOT NULL,
    [StatisticNumberOfOrders] INT           NULL,
    [InsertDateTime]          DATETIME2 (7) NULL,
    [UpdateDateTime]          DATETIME2 (7) NULL,
    [BatchID]                 BIGINT        NOT NULL,
    [ProcessLogID]            BIGINT        NULL
);

