﻿CREATE TABLE [IFS_ARC].[CUST_ORD_INVO_STAT] (
    [STATISTIC_NO]               INT             NOT NULL,
    [STATISTIC_DATE]             DATETIME2 (7)   NULL,
    [INVOICE_ID]                 INT             NULL,
    [ITEM_ID]                    INT             NULL,
    [INVOICE_DATE]               DATETIME2 (7)   NULL,
    [INVOICED_QTY]               INT             NULL,
    [COST]                       DECIMAL (18, 2) NULL,
    [SALE_UNIT_PRICE]            DECIMAL (18, 2) NULL,
    [DISCOUNT]                   DECIMAL (18, 2) NULL,
    [BASE_SALE_UNIT_PRICE]       DECIMAL (18, 2) NULL,
    [CURR_DISCOUNT]              DECIMAL (18, 2) NULL,
    [ORDER_DISCOUNT]             DECIMAL (18, 2) NULL,
    [ORDER_CURR_DISCOUNT]        DECIMAL (18, 2) NULL,
    [NET_AMOUNT]                 DECIMAL (18, 2) NULL,
    [PRICE_QTY]                  INT             NULL,
    [NET_CURR_AMOUNT]            DECIMAL (18, 2) NULL,
    [GROSS_AMOUNT]               DECIMAL (18, 2) NULL,
    [GROSS_CURR_AMOUNT]          DECIMAL (18, 2) NULL,
    [CATALOG_DESC]               NVARCHAR (200)  NULL,
    [CUSTOMER_NAME]              NVARCHAR (100)  NULL,
    [COUNTRY_DESC]               NVARCHAR (50)   NULL,
    [CUST_GRP_DESC]              NVARCHAR (35)   NULL,
    [COMPANY_NAME]               NVARCHAR (100)  NULL,
    [MARKET_DESC]                NVARCHAR (35)   NULL,
    [REGION_DESC]                NVARCHAR (35)   NULL,
    [DISTRICT_DESC]              NVARCHAR (35)   NULL,
    [SALESMAN]                   NVARCHAR (100)  NULL,
    [AUTHORIZE_NAME]             NVARCHAR (100)  NULL,
    [PRICE_LIST_DESC]            NVARCHAR (35)   NULL,
    [ORDER_NO]                   NVARCHAR (12)   NULL,
    [CATALOG_GROUP_DESC]         NVARCHAR (35)   NULL,
    [CUSTOMER_NO]                NVARCHAR (20)   NULL,
    [CUST_GRP]                   NVARCHAR (10)   NULL,
    [CONTRACT]                   NVARCHAR (5)    NULL,
    [CATALOG_NO]                 NVARCHAR (25)   NULL,
    [PART_NO]                    NVARCHAR (25)   NULL,
    [PRICE_LIST_NO]              NVARCHAR (10)   NULL,
    [AUTHORIZE_CODE]             NVARCHAR (20)   NULL,
    [SALESMAN_CODE]              NVARCHAR (20)   NULL,
    [DISTRICT_CODE]              NVARCHAR (10)   NULL,
    [REGION_CODE]                NVARCHAR (10)   NULL,
    [MARKET_CODE]                NVARCHAR (10)   NULL,
    [COMPANY]                    NVARCHAR (20)   NULL,
    [SALES_UNIT_MEAS]            NVARCHAR (50)   NULL,
    [PRICE_UNIT_MEAS]            NVARCHAR (50)   NULL,
    [ACCT_CURRENCY_CODE]         NVARCHAR (3)    NULL,
    [ORDER_CURRENCY_CODE]        NVARCHAR (3)    NULL,
    [COUNTRY_CODE]               NVARCHAR (2)    NULL,
    [CATALOG_GROUP]              NVARCHAR (10)   NULL,
    [PART_DESC]                  NVARCHAR (200)  NULL,
    [LINE_NO]                    NVARCHAR (4)    NULL,
    [REL_NO]                     NVARCHAR (4)    NULL,
    [LINE_ITEM_NO]               INT             NULL,
    [PAYER_NO]                   NVARCHAR (20)   NULL,
    [PAYER_NAME]                 NVARCHAR (100)  NULL,
    [CUSTOMER_PRICE_GROUP]       NVARCHAR (10)   NULL,
    [CUSTOMER_PRICE_GRP_DESC]    NVARCHAR (35)   NULL,
    [ADDITIONAL_DISCOUNT]        DECIMAL (18, 2) NULL,
    [ADDITIONAL_CURR_DISCOUNT]   DECIMAL (18, 2) NULL,
    [BRANCH]                     NVARCHAR (20)   NULL,
    [CREATION_DATE]              DATETIME2 (7)   NULL,
    [INVOICE_NO]                 NVARCHAR (50)   NULL,
    [SERIES_ID]                  NVARCHAR (20)   NULL,
    [CONDITION_CODE]             NVARCHAR (10)   NULL,
    [CONDITION_CODE_DESCRIPTION] NVARCHAR (35)   NULL,
    [REBATE_AMT_BASE]            INT             NULL,
    [SALES_PART_REBATE_GROUP]    NVARCHAR (10)   NULL,
    [REBATE_ASSORTMENT_ID]       NVARCHAR (50)   NULL,
    [REBATE_ASSORT_NODE_ID]      NVARCHAR (50)   NULL,
    [CASE_CREDIT]                DECIMAL (18, 2) NULL,
    [C_SALES_CODE1]              NVARCHAR (4000) NULL,
    [C_SALES_CODE1_DESC]         NVARCHAR (4000) NULL,
    [C_SALES_CODE2]              NVARCHAR (4000) NULL,
    [C_SALES_CODE2_DESC]         NVARCHAR (4000) NULL,
    [C_SALES_CODE3]              NVARCHAR (4000) NULL,
    [C_SALES_CODE3_DESC]         NVARCHAR (4000) NULL,
    [OBJID]                      NVARCHAR (4000) NULL,
    [OBJVERSION]                 NVARCHAR (2000) NULL,
    [Eff_Date]                   DATE            NOT NULL,
    [End_Date]                   DATE            NULL,
    [ActInd]                     CHAR (1)        NULL,
    [IsDeleted]                  CHAR (1)        NULL,
    [BatchID]                    BIGINT          NULL,
    [ProcessLogID]               BIGINT          NULL,
    CONSTRAINT [PK_CUST_ORD_INVO_STAT] PRIMARY KEY CLUSTERED ([STATISTIC_NO] ASC, [Eff_Date] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];





