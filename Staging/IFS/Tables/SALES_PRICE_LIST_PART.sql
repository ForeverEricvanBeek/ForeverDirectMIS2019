﻿CREATE TABLE [IFS].[SALES_PRICE_LIST_PART] (
    [PRICE_LIST_NO]     NVARCHAR (10)   NOT NULL,
    [CATALOG_NO]        NVARCHAR (25)   NOT NULL,
    [MIN_QUANTITY]      INT             NOT NULL,
    [VALID_FROM_DATE]   DATETIME2 (7)   NOT NULL,
    [BASE_PRICE_SITE]   NVARCHAR (5)    NULL,
    [BASE_PRICE]        DECIMAL (18, 2) NULL,
    [PERCENTAGE_OFFSET] INT             NULL,
    [AMOUNT_OFFSET]     INT             NULL,
    [SALES_PRICE]       DECIMAL (18, 2) NULL,
    [ROUNDING]          INT             NULL,
    [LAST_UPDATED]      DATETIME2 (7)   NULL,
    [DISCOUNT]          INT             NULL,
    [DISCOUNT_TYPE]     NVARCHAR (25)   NULL,
    [OBJID]             NVARCHAR (4000) NULL,
    [OBJVERSION]        NVARCHAR (2000) NULL,
    [BatchID]           BIGINT          NULL,
    [ProcessLogID]      BIGINT          NULL
);



