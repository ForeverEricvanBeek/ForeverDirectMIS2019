﻿CREATE TABLE [IFS].[MIXED_PAYMENT_LUMP_SUM] (
    [COMPANY]                     NVARCHAR (20)   NOT NULL,
    [MIXED_PAYMENT_ID]            INT             NOT NULL,
    [LUMP_SUM_TRANS_ID]           INT             NOT NULL,
    [LUMP_SUM_TRANS_NO]           INT             NULL,
    [LUMP_SUM_TRANS_DATE]         DATETIME2 (7)   NULL,
    [CURRENCY_RATE]               INT             NULL,
    [DIV_FACTOR]                  INT             NULL,
    [CURR_AMOUNT]                 DECIMAL (18, 2) NULL,
    [DEBIT_CURR_AMOUNT]           DECIMAL (18, 2) NULL,
    [CREDIT_CURR_AMOUNT]          DECIMAL (18, 2) NULL,
    [DOM_AMOUNT]                  DECIMAL (18, 2) NULL,
    [DEBIT_DOM_AMOUNT]            DECIMAL (18, 2) NULL,
    [CREDIT_DOM_AMOUNT]           DECIMAL (18, 2) NULL,
    [CASH_ACC_AMOUNT]             DECIMAL (18, 2) NULL,
    [TEXT]                        NVARCHAR (200)  NULL,
    [COMPLETELY_MATCHED]          NVARCHAR (5)    NULL,
    [UNMATCHED_AMOUNT]            INT             NULL,
    [SHORT_NAME]                  NVARCHAR (4000) NULL,
    [ORDER_ID]                    NVARCHAR (20)   NULL,
    [MIXED_PAYMENT_TRANS_TYPE]    NVARCHAR (4000) NULL,
    [MIXED_PAYMENT_TRANS_TYPE_DB] NVARCHAR (20)   NULL,
    [WAY_ID]                      NVARCHAR (20)   NULL,
    [PRE_ACCOUNT_STRING]          NVARCHAR (4000) NULL,
    [IS_ACCOUNT_STRING]           NVARCHAR (4000) NULL,
    [IS_PRE_ACCOUNT_STRING]       NVARCHAR (4000) NULL,
    [IDENTITY]                    NVARCHAR (20)   NULL,
    [PAYER_IDENTITY]              NVARCHAR (20)   NULL,
    [IDENTITY_NAME]               NVARCHAR (4000) NULL,
    [PAYER_IDENTITY_NAME]         NVARCHAR (4000) NULL,
    [PARTY_TYPE]                  NVARCHAR (4000) NULL,
    [PARTY_TYPE_DB]               NVARCHAR (20)   NULL,
    [CURRENCY]                    NVARCHAR (3)    NULL,
    [PREL_PROJECT_ACTIVITY_ID]    INT             NULL,
    [PREL_CODE_A]                 NVARCHAR (20)   NULL,
    [PREL_CODE_B]                 NVARCHAR (20)   NULL,
    [PREL_CODE_C]                 NVARCHAR (20)   NULL,
    [PREL_CODE_D]                 NVARCHAR (20)   NULL,
    [PREL_CODE_E]                 NVARCHAR (20)   NULL,
    [PREL_CODE_F]                 NVARCHAR (20)   NULL,
    [PREL_CODE_G]                 NVARCHAR (20)   NULL,
    [PREL_CODE_H]                 NVARCHAR (20)   NULL,
    [PREL_CODE_I]                 NVARCHAR (20)   NULL,
    [PREL_CODE_J]                 NVARCHAR (20)   NULL,
    [LEDGER_ITEM_SERIES_ID]       NVARCHAR (20)   NULL,
    [LEDGER_ITEM_ID]              NVARCHAR (50)   NULL,
    [LEDGER_ITEM_VERSION]         INT             NULL,
    [PROPOSAL_ID]                 INT             NULL,
    [MATCHED_PAY_AMOUNT]          INT             NULL,
    [MATCHED_DOM_AMOUNT]          INT             NULL,
    [COMPRESSED_LEDGER_TRANS]     NVARCHAR (4000) NULL,
    [CODE_A]                      NVARCHAR (4000) NULL,
    [CODE_B]                      NVARCHAR (4000) NULL,
    [CODE_C]                      NVARCHAR (4000) NULL,
    [CODE_D]                      NVARCHAR (4000) NULL,
    [CODE_E]                      NVARCHAR (4000) NULL,
    [CODE_F]                      NVARCHAR (4000) NULL,
    [CODE_G]                      NVARCHAR (4000) NULL,
    [CODE_H]                      NVARCHAR (4000) NULL,
    [CODE_I]                      NVARCHAR (4000) NULL,
    [CODE_J]                      NVARCHAR (4000) NULL,
    [OPTIONAL_CODE]               NVARCHAR (4000) NULL,
    [PROJECT_ACTIVITY_ID]         INT             NULL,
    [PROCESS_CODE]                NVARCHAR (4000) NULL,
    [PAYMENT_IN_ADVANCE]          NVARCHAR (5)    NULL,
    [ORDER_REFERENCE]             NVARCHAR (100)  NULL,
    [VAT_CODE]                    NVARCHAR (20)   NULL,
    [VAT_CURR_AMOUNT]             INT             NULL,
    [VAT_DOM_AMOUNT]              INT             NULL,
    [TRANSACTION_CODE_ID]         NVARCHAR (10)   NULL,
    [CURRENCY_TYPE]               NVARCHAR (10)   NULL,
    [TAX_DIRECTION]               NVARCHAR (4000) NULL,
    [ADD_INTERNAL]                NVARCHAR (4000) NULL,
    [INTERNAL_SEQ]                INT             NULL,
    [TAX_CURR_RATE]               INT             NULL,
    [TAX_INVOICE_SERIES_ID]       NVARCHAR (20)   NULL,
    [TAX_INVOICE_NUMBER]          NVARCHAR (50)   NULL,
    [TAX_INVOICE_DATE]            DATETIME2 (7)   NULL,
    [BRANCH]                      NVARCHAR (20)   NULL,
    [CONTRACT_NO]                 NVARCHAR (15)   NULL,
    [TAX_CURR_TYPE]               NVARCHAR (10)   NULL,
    [MATCHING_CANCELLED]          NVARCHAR (5)    NULL,
    [ORDER_ITEM_ID]               NVARCHAR (20)   NULL,
    [NON_IDENTITY_PAY_ID]         INT             NULL,
    [OBJID]                       NVARCHAR (4000) NULL,
    [OBJVERSION]                  NVARCHAR (2000) NULL,
    [Eff_Date]                    DATE            NOT NULL,
    [End_Date]                    DATE            NULL,
    [ActInd]                      CHAR (1)        NULL,
    [IsDeleted]                   CHAR (1)        NULL,
    [BatchID]                     BIGINT          NULL,
    [ProcessLogID]                BIGINT          NULL,
    CONSTRAINT [PK_MIXED_PAYMENT_LUMP_SUM] PRIMARY KEY CLUSTERED ([COMPANY] ASC, [MIXED_PAYMENT_ID] ASC, [LUMP_SUM_TRANS_ID] ASC, [Eff_Date] ASC) ON [DWH_IFS]
) ON [DWH_IFS];

