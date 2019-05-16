CREATE TABLE [IFS].[C_SHIPMENT_UNIT_ORD_LINE] (
    [SHIPMENT_ID]             INT           NOT NULL,
    [KEY_UNIT_ID]             INT           NOT NULL,
    [SHIP_UNIT_ORDER_LINE_ID] INT           NOT NULL,
    [OBJVERSION]              NVARCHAR (14) NULL,
    [BatchID]                 BIGINT        NULL,
    [ProcessLogID]            BIGINT        NULL,
    [Issue]                   TINYINT       NULL,
    CONSTRAINT [PK_C_SHIPMENT_UNIT_ORD_LINE] PRIMARY KEY CLUSTERED ([SHIPMENT_ID] ASC, [KEY_UNIT_ID] ASC, [SHIP_UNIT_ORDER_LINE_ID] ASC)
);

