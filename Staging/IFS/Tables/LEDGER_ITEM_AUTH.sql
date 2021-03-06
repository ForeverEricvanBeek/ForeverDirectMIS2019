﻿CREATE TABLE [IFS].[LEDGER_ITEM_AUTH] (
    [COMPANY]                  NVARCHAR (20)   NOT NULL,
    [IDENTITY]                 NVARCHAR (20)   NOT NULL,
    [PARTY_TYPE]               NVARCHAR (20)   NOT NULL,
    [LEDGER_ITEM_SERIES_ID]    NVARCHAR (20)   NOT NULL,
    [LEDGER_ITEM_ID]           NVARCHAR (50)   NOT NULL,
    [LEDGER_ITEM_VERSION]      INT             NOT NULL,
    [ROWVERSION]               INT             NULL,
    [ROWTYPE]                  NVARCHAR (2000) NULL,
    [ROWSTATE]                 NVARCHAR (2000) NULL,
    [FULL_CURR_AMOUNT]         INT             NULL,
    [FULL_DOM_AMOUNT]          INT             NULL,
    [CLEARED_CURR_AMOUNT]      INT             NULL,
    [CLEARED_DOM_AMOUNT]       INT             NULL,
    [CURRENCY]                 NVARCHAR (3)    NULL,
    [CURR_RATE]                INT             NULL,
    [DIV_FACTOR]               INT             NULL,
    [LEDGER_STATUS_TYPE]       NVARCHAR (20)   NULL,
    [SERIES_ID]                NVARCHAR (20)   NULL,
    [PAYMENT_ID]               INT             NULL,
    [TRANS_ID]                 NVARCHAR (20)   NULL,
    [PARKED_PAY_TYPE]          NVARCHAR (20)   NULL,
    [PREL_CODE_A]              NVARCHAR (10)   NULL,
    [PREL_CODE_B]              NVARCHAR (10)   NULL,
    [PREL_CODE_C]              NVARCHAR (10)   NULL,
    [PREL_CODE_D]              NVARCHAR (10)   NULL,
    [PREL_CODE_E]              NVARCHAR (10)   NULL,
    [PREL_CODE_F]              NVARCHAR (10)   NULL,
    [PREL_CODE_G]              NVARCHAR (10)   NULL,
    [PREL_CODE_H]              NVARCHAR (10)   NULL,
    [PREL_CODE_I]              NVARCHAR (10)   NULL,
    [PREL_CODE_J]              NVARCHAR (10)   NULL,
    [PREL_PROJECT_ACTIVITY_ID] INT             NULL,
    [CODE_A]                   NVARCHAR (10)   NULL,
    [CODE_B]                   NVARCHAR (10)   NULL,
    [CODE_C]                   NVARCHAR (10)   NULL,
    [CODE_D]                   NVARCHAR (10)   NULL,
    [CODE_E]                   NVARCHAR (10)   NULL,
    [CODE_F]                   NVARCHAR (10)   NULL,
    [CODE_G]                   NVARCHAR (10)   NULL,
    [CODE_H]                   NVARCHAR (10)   NULL,
    [CODE_I]                   NVARCHAR (10)   NULL,
    [CODE_J]                   NVARCHAR (10)   NULL,
    [PROJECT_ACTIVITY_ID]      INT             NULL,
    [FULLY_PAID_VOUCHER_DATE]  DATETIME2 (7)   NULL,
    [INVOICE_ID]               INT             NULL,
    [DUE_DATE]                 DATETIME2 (7)   NULL,
    [WAY_ID]                   NVARCHAR (20)   NULL,
    [PAYER_IDENTITY]           NVARCHAR (20)   NULL,
    [PAYEE_IDENTITY]           NVARCHAR (20)   NULL,
    [DEDUCTION_GROUP]          NVARCHAR (20)   NULL,
    [ADDRESS_ID]               NVARCHAR (50)   NULL,
    [VOUCHER_TEXT]             NVARCHAR (200)  NULL,
    [CUSTOMER_REFERENCE]       NVARCHAR (20)   NULL,
    [VOUCHER_DATE]             DATETIME2 (7)   NULL,
    [USER_GROUP]               NVARCHAR (30)   NULL,
    [VOUCHER_TYPE]             NVARCHAR (3)    NULL,
    [CASH_ACCOUNT]             NVARCHAR (20)   NULL,
    [CANCEL_DATE]              DATETIME2 (7)   NULL,
    [PAYMENT_ON_ACCOUNT_TYPE]  NVARCHAR (20)   NULL,
    [AUTO_CASH_CHECK]          INT             NULL,
    [CLEAR_DATE]               DATETIME2 (7)   NULL,
    [PRINT_DATE]               DATETIME2 (7)   NULL,
    [VOID_DATE]                DATETIME2 (7)   NULL,
    [DIRECT_CHECK_PAY]         NVARCHAR (5)    NULL,
    [CHECK_MESSAGE]            NVARCHAR (200)  NULL,
    [ORDER_REFERENCE]          NVARCHAR (100)  NULL,
    [VAT_CODE]                 NVARCHAR (20)   NULL,
    [FULL_CURR_VAT_AMOUNT]     INT             NULL,
    [FULL_DOM_VAT_AMOUNT]      INT             NULL,
    [CLEARED_CURR_VAT_AMOUNT]  INT             NULL,
    [CLEARED_DOM_VAT_AMOUNT]   INT             NULL,
    [IS_UPGRADED]              NVARCHAR (5)    NULL,
    [BANK_NO]                  NVARCHAR (200)  NULL,
    [BANK_ACCOUNT_NO]          NVARCHAR (200)  NULL,
    [REPRINT_REFERENCE]        NVARCHAR (50)   NULL,
    [NCF_REFERENCE]            NVARCHAR (50)   NULL,
    [TRANSACTION_CODE_ID]      NVARCHAR (10)   NULL,
    [ES_REPORT_TYPE]           NVARCHAR (20)   NULL,
    [CHARGE_IDENTITY]          NVARCHAR (20)   NULL,
    [COUNTRY_CODE]             NVARCHAR (20)   NULL,
    [PAY_IDENTITY_TYPE]        NVARCHAR (20)   NULL,
    [CONDITION_IDENTITY]       NVARCHAR (20)   NULL,
    [BOE_ISSUE_CITY]           NVARCHAR (20)   NULL,
    [BOE_ISSUE_CITY_NO]        NVARCHAR (35)   NULL,
    [TRANSFER_PROPOSAL_ID]     INT             NULL,
    [CANCEL_VOU_DATE]          DATETIME2 (7)   NULL,
    [INVOICE_ID_REF]           INT             NULL,
    [SELF_BILLING_REF]         NVARCHAR (50)   NULL,
    [TAX_CURR_RATE]            INT             NULL,
    [STAMP_DUTY_AMOUNT]        INT             NULL,
    [BILL_TYPE]                NVARCHAR (50)   NULL,
    [ENDORSED]                 NVARCHAR (5)    NULL,
    [REMARKS]                  NVARCHAR (2000) NULL,
    [BRANCH]                   NVARCHAR (20)   NULL,
    [RECONCILED]               NVARCHAR (5)    NULL,
    [CASH_MATCH_ONE_STEP]      NVARCHAR (5)    NULL,
    [CONTRACT_NO]              NVARCHAR (15)   NULL,
    [BAD_DEBT_LEVEL]           NVARCHAR (20)   NULL,
    [BAD_DEBT_PROV_AMT]        INT             NULL,
    [BAD_DEBT_PROV_AMT_IN_ACC] INT             NULL,
    [CHECK_RECIPIENT]          NVARCHAR (20)   NULL,
    [PO_REF_NUMBER]            NVARCHAR (4000) NULL,
    [PARTY_TYPE_CL]            NVARCHAR (4000) NULL,
    [PARTY_NAME]               NVARCHAR (4000) NULL,
    [IS_INVOICE_DB]            NVARCHAR (5)    NULL,
    [IS_INVOICE]               NVARCHAR (4000) NULL,
    [PARKED_PAY_TYPE_CL]       NVARCHAR (4000) NULL,
    [PARKED_PAY_TYPE_CL2]      NVARCHAR (4000) NULL,
    [PARKED_PAY_TYPE_DB]       NVARCHAR (20)   NULL,
    [GET_DUE_DATE]             DATETIME2 (7)   NULL,
    [GET_LEDGER_DATE]          DATETIME2 (7)   NULL,
    [OBJID]                    NVARCHAR (4000) NULL,
    [OBJVERSION]               NVARCHAR (2000) NULL,
    [OBJSTATE]                 NVARCHAR (2000) NULL,
    [BatchID]                  BIGINT          NULL,
    [ProcessLogID]             BIGINT          NULL,
    CONSTRAINT [PK_LEDGER_ITEM_AUTH] PRIMARY KEY CLUSTERED ([IDENTITY] ASC, [COMPANY] ASC, [PARTY_TYPE] ASC, [LEDGER_ITEM_SERIES_ID] ASC, [LEDGER_ITEM_ID] ASC, [LEDGER_ITEM_VERSION] ASC)
);

