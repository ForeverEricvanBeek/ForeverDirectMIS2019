﻿CREATE TABLE [IFS].[SALES_PRICE_LIST_PART] (
    [PRICE_LIST_NO]     NVARCHAR (10)   NOT NULL,
    [CATALOG_NO]        NVARCHAR (25)   NOT NULL,
    [MIN_QUANTITY]      INT             NOT NULL,
    [VALID_FROM_DATE]   DATETIME2 (7)   NOT NULL,
    [BASE_PRICE_SITE]   NVARCHAR (5)    NULL,
    [BASE_PRICE]        INT             NULL,
    [PERCENTAGE_OFFSET] INT             NULL,
    [AMOUNT_OFFSET]     INT             NULL,
    [SALES_PRICE]       INT             NULL,
    [ROUNDING]          INT             NULL,
    [LAST_UPDATED]      DATETIME2 (7)   NULL,
    [DISCOUNT]          INT             NULL,
    [DISCOUNT_TYPE]     NVARCHAR (25)   NULL,
    [OBJID]             NVARCHAR (4000) NULL,
    [OBJVERSION]        NVARCHAR (2000) NULL,
    [Eff_Date]          DATE            NOT NULL,
    [End_Date]          DATE            NULL,
    [ActInd]            CHAR (1)        NULL,
    [IsDeleted]         CHAR (1)        NULL,
    [BatchID]           BIGINT          NULL,
    [ProcessLogID]      BIGINT          NULL,
    CONSTRAINT [PK_SALES_PRICE_LIST_PART] PRIMARY KEY CLUSTERED ([CATALOG_NO] ASC, [Eff_Date] ASC, [MIN_QUANTITY] ASC, [PRICE_LIST_NO] ASC, [VALID_FROM_DATE] ASC) ON [DWH_IFS]
) ON [DWH_IFS];



