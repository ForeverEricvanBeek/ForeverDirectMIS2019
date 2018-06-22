CREATE TABLE [DM].[F_Paid_Productivity] (
    [DateKey]                        NVARCHAR (30) NULL,
    [D_Order_Type_Skey]              NVARCHAR (20) NULL,
    [Number_of_OLPN_Shipped_OF]      INT           NOT NULL,
    [Number_of_Pallets_Shipped_BULK] INT           NOT NULL,
    [Number_of_Inbound_Containers]   INT           NOT NULL,
    [Number_of_Inbound_Pallet]       INT           NOT NULL,
    [Number_of_Units_Vas_KIT]        INT           NOT NULL,
    [Number_of_VAS_Labelling]        INT           NOT NULL,
    [Number_of_VAS_Repack]           INT           NOT NULL,
    [Number_of_Work_Minutes_Var]     INT           NOT NULL,
    [Number_of_Work_Minutes_Fix]     INT           NOT NULL,
    [InsertDateTime]                 DATETIME2 (7) NULL,
    [UpdateDateTime]                 DATETIME2 (7) NULL,
    [BatchID]                        BIGINT        NOT NULL,
    [ProcessLogID]                   BIGINT        NULL
);




GO
CREATE CLUSTERED COLUMNSTORE INDEX [CCI_F_Paid_Productivity]
    ON [DM].[F_Paid_Productivity];

