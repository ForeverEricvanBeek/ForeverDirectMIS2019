﻿CREATE TABLE [PROD].[CUSTOMER_PRICELIST] (
    [CUSTOMER_NO]             NVARCHAR (20)   NOT NULL,
    [SALES_PRICE_GROUP_ID]    NVARCHAR (10)   NOT NULL,
    [CURRENCY_CODE]           NVARCHAR (3)    NOT NULL,
    [COMPANY]                 NVARCHAR (20)   NOT NULL,
    [PRICE_LIST_NO]           NVARCHAR (10)   NULL,
    [PREFERRED_PRICE_LIST]    NVARCHAR (4000) NULL,
    [PREFERRED_PRICE_LIST_DB] NVARCHAR (30)   NULL,
    [OBJID]                   NVARCHAR (4000) NULL,
    [OBJVERSION]              NVARCHAR (2000) NULL,
    [BatchID]                 BIGINT          NULL,
    [ProcessLogID]            BIGINT          NULL,
    CONSTRAINT [PK_CUSTOMER_PRICELIST] PRIMARY KEY CLUSTERED ([CUSTOMER_NO] ASC, [SALES_PRICE_GROUP_ID] ASC, [CURRENCY_CODE] ASC, [COMPANY] ASC)
);

