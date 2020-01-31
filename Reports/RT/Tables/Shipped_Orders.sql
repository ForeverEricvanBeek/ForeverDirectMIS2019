CREATE TABLE [RT].[Shipped_Orders] (
    [ORDER_ID]      NVARCHAR (50) NULL,
    [POS_ORDER_NR]  NVARCHAR (15) NULL,
    [POS_FUL]       NVARCHAR (50) NULL,
    [POSTAL_CODE]   NVARCHAR (25) NULL,
    [FACILITY_CODE] NVARCHAR (16) NULL,
    [CARRIER_CODE]  NVARCHAR (10) NULL,
    [SHIPPING_DATE] DATE          NULL,
    [YEAR]          INT           NULL,
    [MONTH]         INT           NULL,
    [Request_ID]    BIGINT        NULL,
    [BatchID]       BIGINT        NULL,
    [ProcessLogID]  BIGINT        NULL
);

