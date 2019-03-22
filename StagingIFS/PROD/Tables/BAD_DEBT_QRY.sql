﻿CREATE TABLE [PROD].[BAD_DEBT_QRY] (
    [COMPANY]                  NVARCHAR (20)   NOT NULL,
    [PARTY_TYPE]               NVARCHAR (4000) NULL,
    [PARTY_TYPE_DB]            NVARCHAR (20)   NOT NULL,
    [SERIES_ID]                NVARCHAR (20)   NOT NULL,
    [INVOICE_NO]               NVARCHAR (50)   NOT NULL,
    [LEDGER_ITEM_VERSION]      INT             NOT NULL,
    [IDENTITY]                 NVARCHAR (20)   NULL,
    [INVOICE_ID]               INT             NULL,
    [NAME]                     NVARCHAR (100)  NULL,
    [INVOICE_DATE]             DATETIME2 (7)   NULL,
    [PAY_TERM_BASE_DATE]       DATETIME2 (7)   NULL,
    [DUE_DATE]                 DATETIME2 (7)   NULL,
    [PAY_PLAN]                 NVARCHAR (4000) NULL,
    [CANCELLED]                NVARCHAR (5)    NULL,
    [LEDGER_STATUS_TYPE]       NVARCHAR (4000) NULL,
    [LEDGER_STATUS_TYPE_DB]    NVARCHAR (20)   NULL,
    [CURRENCY]                 NVARCHAR (3)    NULL,
    [INVOICE_AMOUNT]           DECIMAL (18, 2) NULL,
    [INV_DOM_AMOUNT]           DECIMAL (18, 2) NULL,
    [OPEN_AMOUNT]              INT             NULL,
    [OPEN_DOM_AMOUNT]          INT             NULL,
    [VOUCHER_TYPE_REF]         NVARCHAR (3)    NULL,
    [VOUCHER_NO_REF]           INT             NULL,
    [PAYER_IDENTITY]           NVARCHAR (20)   NULL,
    [WAY_PAY_ID]               NVARCHAR (4000) NULL,
    [STATE]                    NVARCHAR (30)   NULL,
    [REASON_CODE_EXIST]        NVARCHAR (4000) NULL,
    [NCF_REFERENCE]            NVARCHAR (50)   NULL,
    [OFFSET_POSSIBILITY]       NVARCHAR (4000) NULL,
    [NETTING_POSSIBILITY]      NVARCHAR (4000) NULL,
    [BAD_DEBT_LEVEL]           NVARCHAR (20)   NULL,
    [BAD_DEBT_PROV_AMT]        INT             NULL,
    [BAD_DEBT_PROV_AMT_IN_ACC] INT             NULL,
    [OBJSTATE]                 NVARCHAR (2000) NULL,
    [OBJID]                    NVARCHAR (4000) NULL,
    [OBJVERSION]               NVARCHAR (2000) NULL,
    [BatchID]                  BIGINT          NULL,
    [ProcessLogID]             BIGINT          NULL,
    CONSTRAINT [PK_BAD_DEBT_QRY] PRIMARY KEY CLUSTERED ([COMPANY] ASC, [PARTY_TYPE_DB] ASC, [SERIES_ID] ASC, [INVOICE_NO] ASC, [LEDGER_ITEM_VERSION] ASC)
);
