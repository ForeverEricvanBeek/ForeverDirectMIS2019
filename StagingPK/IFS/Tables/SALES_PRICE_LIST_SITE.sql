﻿CREATE TABLE [IFS].[SALES_PRICE_LIST_SITE] (
    [CONTRACT]      NVARCHAR (5)    NOT NULL,
    [PRICE_LIST_NO] NVARCHAR (10)   NOT NULL,
    [OBJVERSION]    NVARCHAR (2000) NULL,
    [BatchID]       BIGINT          NULL,
    [ProcessLogID]  BIGINT          NULL,
    [Issue]         TINYINT         NULL,
    CONSTRAINT [PK_SALES_PRICE_LIST_SITE] PRIMARY KEY CLUSTERED ([CONTRACT] ASC, [PRICE_LIST_NO] ASC)
);

