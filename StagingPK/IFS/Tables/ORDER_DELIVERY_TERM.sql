﻿CREATE TABLE [IFS].[ORDER_DELIVERY_TERM] (
    [DELIVERY_TERMS] NVARCHAR (3)    NOT NULL,
    [OBJVERSION]     NVARCHAR (2000) NULL,
    [BatchID]        BIGINT          NULL,
    [ProcessLogID]   BIGINT          NULL,
    [Issue]          TINYINT         NULL,
    CONSTRAINT [PK_ORDER_DELIVERY_TERM] PRIMARY KEY CLUSTERED ([DELIVERY_TERMS] ASC)
);

