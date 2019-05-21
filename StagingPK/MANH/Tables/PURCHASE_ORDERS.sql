﻿CREATE TABLE [MANH].[PURCHASE_ORDERS] (
    [PURCHASE_ORDERS_ID] BIGINT        NOT NULL,
    [LAST_UPDATED_DTTM]  DATETIME2 (7) NOT NULL,
    [BatchID]            BIGINT        NULL,
    [ProcessLogID]       BIGINT        NULL,
    [Issue]              TINYINT       NULL,
    CONSTRAINT [PK_MANH_PURCHASE_ORDERS] PRIMARY KEY CLUSTERED ([PURCHASE_ORDERS_ID] ASC)
);
