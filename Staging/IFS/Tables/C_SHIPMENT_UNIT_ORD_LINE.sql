CREATE TABLE [IFS].[C_SHIPMENT_UNIT_ORD_LINE] (
    [SHIPMENT_ID]             INT             NOT NULL,
    [KEY_UNIT_ID]             INT             NOT NULL,
    [SHIP_UNIT_ORDER_LINE_ID] INT             NOT NULL,
    [ORDER_NO]                NVARCHAR (12)   NULL,
    [LINE_NO]                 NVARCHAR (4)    NULL,
    [REL_NO]                  NVARCHAR (4)    NULL,
    [LINE_ITEM_NO]            INT             NULL,
    [HANDLING_UNIT_ID]        INT             NULL,
    [PACKAGE_UNIT_ID]         INT             NULL,
    [CONNECTED_QUANTITY]      INT             NULL,
    [LOT_BATCH_NO]            NVARCHAR (25)   NULL,
    [ENG_CHG_LEVEL]           NVARCHAR (25)   NULL,
    [SERIAL_NO]               NVARCHAR (50)   NULL,
    [WAIV_DEV_REJ_NO]         NVARCHAR (15)   NULL,
    [NET_WEIGHT]              DECIMAL (18, 2) NULL,
    [VOLUME]                  INT             NULL,
    [QUANTITY_ON_LABEL]       INT             NULL,
    [LOT_BATCH_NO_ON_LABEL]   NVARCHAR (25)   NULL,
    [ENG_CHG_LEVEL_ON_LABEL]  NVARCHAR (25)   NULL,
    [PICK_LIST_NO]            NVARCHAR (15)   NULL,
    [LOCATION_NO]             NVARCHAR (35)   NULL,
    [OBJID]                   NVARCHAR (4000) NULL,
    [OBJVERSION]              NVARCHAR (14)   NULL,
    [BatchID]                 BIGINT          NULL,
    [ProcessLogID]            BIGINT          NULL
);



