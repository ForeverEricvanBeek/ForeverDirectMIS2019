﻿CREATE TABLE [IFS].[INVOICE_ITEM] (
    [COMPANY]      NVARCHAR (20)   NOT NULL,
    [INVOICE_ID]   INT             NOT NULL,
    [ITEM_ID]      INT             NOT NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    [Issue]        TINYINT         NULL,
    CONSTRAINT [PK_INVOICE_ITEM] PRIMARY KEY CLUSTERED ([INVOICE_ID] ASC, [ITEM_ID] ASC, [COMPANY] ASC)
);

