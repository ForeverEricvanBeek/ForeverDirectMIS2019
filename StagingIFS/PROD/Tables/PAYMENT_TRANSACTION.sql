﻿CREATE TABLE [PROD].[PAYMENT_TRANSACTION] (
    [COMPANY]                   NVARCHAR (20)   NOT NULL,
    [SERIES_ID]                 NVARCHAR (20)   NOT NULL,
    [PAYMENT_ID]                INT             NOT NULL,
    [TRANS_ID]                  NVARCHAR (20)   NOT NULL,
    [ROLLEDBACK]                NVARCHAR (5)    NULL,
    [ROLLBACK_OF_SERIES_ID]     NVARCHAR (20)   NULL,
    [ROLLBACK_OF_PAYMENT_ID]    INT             NULL,
    [ROLLBACK_OF_TRANS_ID]      NVARCHAR (20)   NULL,
    [CURR_AMOUNT]               DECIMAL (18, 2) NULL,
    [DOM_AMOUNT]                DECIMAL (18, 2) NULL,
    [CURR_RATE]                 INT             NULL,
    [DIV_FACTOR]                INT             NULL,
    [CURRENCY]                  NVARCHAR (3)    NULL,
    [MATCHING_ID]               INT             NULL,
    [MATCHED_DATE]              DATETIME2 (7)   NULL,
    [MATCH_TRANS]               NVARCHAR (5)    NULL,
    [RECONCILED_ID]             INT             NULL,
    [USER_ID]                   NVARCHAR (20)   NULL,
    [SELF_BILLING_REF]          NVARCHAR (50)   NULL,
    [PAY_REFERENCE]             NVARCHAR (50)   NULL,
    [TAX_CURR_RATE]             INT             NULL,
    [PAY_TAX_ID]                INT             NULL,
    [TAX_INVOICE_SERIES_ID]     NVARCHAR (20)   NULL,
    [TAX_INVOICE_NUMBER]        NVARCHAR (50)   NULL,
    [TAX_INVOICE_DATE]          DATETIME2 (7)   NULL,
    [PAY_RECEIPT_ID]            INT             NULL,
    [TAX_CURR_TYPE]             NVARCHAR (10)   NULL,
    [RECURRING_PAYMENT_ID]      INT             NULL,
    [RECURRING_PAYMENT_ITEM_ID] INT             NULL,
    [NON_IDENTITY_PAY_ID]       INT             NULL,
    [IDENTITY]                  NVARCHAR (20)   NULL,
    [LEDGER_ITEM_ID]            NVARCHAR (50)   NULL,
    [PAYER_IDENTITY]            NVARCHAR (20)   NULL,
    [MIXED_PAYMENT_ID]          INT             NULL,
    [OBJID]                     NVARCHAR (4000) NULL,
    [OBJVERSION]                NVARCHAR (2000) NULL,
    [BatchID]                   BIGINT          NULL,
    [ProcessLogID]              BIGINT          NULL,
    CONSTRAINT [PK_PAYMENT_TRANSACTION] PRIMARY KEY CLUSTERED ([COMPANY] ASC, [SERIES_ID] ASC, [PAYMENT_ID] ASC, [TRANS_ID] ASC)
);

