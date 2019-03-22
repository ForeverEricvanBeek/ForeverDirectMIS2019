﻿CREATE TABLE [IFS].[LEDGER_ITEM] (
    [COMPANY]                 NVARCHAR (20)   NOT NULL,
    [IDENTITY]                NVARCHAR (20)   NOT NULL,
    [PARTY_TYPE]              NVARCHAR (4000) NULL,
    [PARTY_TYPE_DB]           NVARCHAR (20)   NOT NULL,
    [LEDGER_ITEM_SERIES_ID]   NVARCHAR (20)   NOT NULL,
    [LEDGER_ITEM_ID]          NVARCHAR (50)   NOT NULL,
    [LEDGER_ITEM_VERSION]     INT             NOT NULL,
    [FULL_CURR_AMOUNT]        DECIMAL (18, 2) NULL,
    [FULL_DOM_AMOUNT]         DECIMAL (18, 2) NULL,
    [CLEARED_CURR_AMOUNT]     DECIMAL (18, 2) NULL,
    [CLEARED_DOM_AMOUNT]      DECIMAL (18, 2) NULL,
    [CURRENCY]                NVARCHAR (3)    NULL,
    [CURR_RATE]               INT             NULL,
    [DIV_FACTOR]              INT             NULL,
    [LEDGER_STATUS_TYPE]      NVARCHAR (4000) NULL,
    [LEDGER_STATUS_TYPE_DB]   NVARCHAR (20)   NULL,
    [PARKED_PAY_TYPE]         NVARCHAR (4000) NULL,
    [PARKED_PAY_TYPE_DB]      NVARCHAR (20)   NULL,
    [FULLY_PAID_VOUCHER_DATE] DATETIME2 (7)   NULL,
    [CODE_A]                  NVARCHAR (10)   NULL,
    [CODE_B]                  NVARCHAR (10)   NULL,
    [CODE_C]                  NVARCHAR (10)   NULL,
    [CODE_D]                  NVARCHAR (10)   NULL,
    [CODE_E]                  NVARCHAR (10)   NULL,
    [CODE_F]                  NVARCHAR (10)   NULL,
    [CODE_G]                  NVARCHAR (10)   NULL,
    [CODE_H]                  NVARCHAR (10)   NULL,
    [CODE_I]                  NVARCHAR (10)   NULL,
    [CODE_J]                  NVARCHAR (10)   NULL,
    [PREL_CODE_A]             NVARCHAR (10)   NULL,
    [PREL_CODE_B]             NVARCHAR (10)   NULL,
    [PREL_CODE_C]             NVARCHAR (10)   NULL,
    [PREL_CODE_D]             NVARCHAR (10)   NULL,
    [PREL_CODE_E]             NVARCHAR (10)   NULL,
    [PREL_CODE_F]             NVARCHAR (10)   NULL,
    [PREL_CODE_G]             NVARCHAR (10)   NULL,
    [PREL_CODE_H]             NVARCHAR (10)   NULL,
    [PREL_CODE_I]             NVARCHAR (10)   NULL,
    [PREL_CODE_J]             NVARCHAR (10)   NULL,
    [PROJECT_ACTIVITY_ID]     INT             NULL,
    [ACCOUNT_STRING]          NVARCHAR (4000) NULL,
    [ORDER_REFERENCE]         NVARCHAR (100)  NULL,
    [VAT_CODE]                NVARCHAR (20)   NULL,
    [FULL_CURR_VAT_AMOUNT]    DECIMAL (18, 2) NULL,
    [FULL_DOM_VAT_AMOUNT]     DECIMAL (18, 2) NULL,
    [CLEARED_CURR_VAT_AMOUNT] DECIMAL (18, 2) NULL,
    [CLEARED_DOM_VAT_AMOUNT]  DECIMAL (18, 2) NULL,
    [WAY_ID]                  NVARCHAR (20)   NULL,
    [ROWTYPE]                 NVARCHAR (2000) NULL,
    [OBJID]                   NVARCHAR (4000) NULL,
    [NCF_REFERENCE]           NVARCHAR (50)   NULL,
    [PAYMENT_ID]              INT             NULL,
    [CANCEL_VOU_DATE]         DATETIME2 (7)   NULL,
    [TRANSACTION_CODE_ID]     NVARCHAR (10)   NULL,
    [CASH_ACCOUNT]            NVARCHAR (20)   NULL,
    [PAYEE_IDENTITY]          NVARCHAR (20)   NULL,
    [ADDRESS_ID]              NVARCHAR (50)   NULL,
    [INVOICE_ID_REF]          INT             NULL,
    [SELF_BILLING_REF]        NVARCHAR (50)   NULL,
    [PAY_REFERENCE]           NVARCHAR (50)   NULL,
    [TAX_CURR_RATE]           INT             NULL,
    [REMARKS]                 NVARCHAR (2000) NULL,
    [BRANCH]                  NVARCHAR (20)   NULL,
    [OBJVERSION]              NVARCHAR (2000) NULL,
    [OBJSTATE]                NVARCHAR (2000) NULL,
    [OBJEVENTS]               NVARCHAR (253)  NULL,
    [STATE]                   NVARCHAR (253)  NULL,
    [BatchID]                 BIGINT          NULL,
    [ProcessLogID]            BIGINT          NULL,
    CONSTRAINT [PK_LEDGER_ITEM] PRIMARY KEY CLUSTERED ([IDENTITY] ASC, [COMPANY] ASC, [PARTY_TYPE_DB] ASC, [LEDGER_ITEM_SERIES_ID] ASC, [LEDGER_ITEM_ID] ASC, [LEDGER_ITEM_VERSION] ASC)
);

