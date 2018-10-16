﻿CREATE TABLE [IFS].[IDENTITY_INVOICE_INFO] (
    [COMPANY]                    NVARCHAR (20)   NOT NULL,
    [IDENTITY]                   NVARCHAR (20)   NOT NULL,
    [PARTY_TYPE]                 NVARCHAR (4000) NULL,
    [PARTY_TYPE_DB]              NVARCHAR (20)   NOT NULL,
    [INVOICE_FEE]                NVARCHAR (5)    NULL,
    [DEF_LANGUAGE]               NVARCHAR (4000) NULL,
    [DEF_LANGUAGE_DB]            NVARCHAR (2)    NULL,
    [EXPIRE_DATE]                DATETIME2 (7)   NULL,
    [NATIONAL_BANK_CODE]         NVARCHAR (20)   NULL,
    [GROUP_ID]                   NVARCHAR (20)   NULL,
    [DEF_AUTHORIZER]             NVARCHAR (20)   NULL,
    [PAY_TERM_ID]                NVARCHAR (20)   NULL,
    [DEF_VAT_CODE]               NVARCHAR (20)   NULL,
    [VAT_FREE_VAT_CODE]          NVARCHAR (20)   NULL,
    [DEF_CURRENCY]               NVARCHAR (3)    NULL,
    [VAT]                        NVARCHAR (5)    NULL,
    [PAYM_DEV_DAYS]              INT             NULL,
    [IDENTITY_TYPE]              NVARCHAR (4000) NULL,
    [IDENTITY_TYPE_DB]           NVARCHAR (20)   NULL,
    [AUTO_AUTH_FINAL_ENTRY]      NVARCHAR (5)    NULL,
    [DEF_PRELIMINARY_CODE]       NVARCHAR (20)   NULL,
    [AUTOMATIC_INVOICE]          NVARCHAR (1)    NULL,
    [AUTOMATIC_EDI_APPROVAL]     NVARCHAR (5)    NULL,
    [APPROVAL_USER_ID]           NVARCHAR (20)   NULL,
    [LOAD_TYPE]                  NVARCHAR (20)   NULL,
    [VAT_NO]                     NVARCHAR (50)   NULL,
    [PERCENT_TOLERANCE]          INT             NULL,
    [AMOUNT_TOLERANCE]           INT             NULL,
    [NCF_REFERENCE_CHECK]        NVARCHAR (5)    NULL,
    [TAX_EXEMPT]                 NVARCHAR (5)    NULL,
    [TAX_EXEMPT_VALID_FROM]      DATETIME2 (7)   NULL,
    [TAX_EXEMPT_VALID_TO]        DATETIME2 (7)   NULL,
    [SECOND_TIN]                 NVARCHAR (5)    NULL,
    [REPORT_AND_WITHHOLD]        NVARCHAR (4000) NULL,
    [REPORT_AND_WITHHOLD_DB]     NVARCHAR (20)   NULL,
    [SUPPLIER_TAX_OFFICE_ID]     NVARCHAR (20)   NULL,
    [AUTO_CREATION_TAX_LINES]    NVARCHAR (5)    NULL,
    [NUMERATION_GROUP]           NVARCHAR (20)   NULL,
    [TAX_BOOK_ID]                NVARCHAR (20)   NULL,
    [TAX_BOOK_TYPE]              INT             NULL,
    [TAX_STRUCTURE_ID]           NVARCHAR (20)   NULL,
    [PRINT_TAX_CODE_TEXT]        NVARCHAR (5)    NULL,
    [NO_INVOICE_COPIES]          INT             NULL,
    [TAX_REGIME]                 NVARCHAR (4000) NULL,
    [TAX_REGIME_DB]              NVARCHAR (20)   NULL,
    [TAX_ID_TYPE]                NVARCHAR (10)   NULL,
    [DEF_MAN_SUPP_INV_TYPE]      NVARCHAR (20)   NULL,
    [DEF_AUTO_INVOICE_TYPE]      NVARCHAR (20)   NULL,
    [DEF_REC_MAN_SUPP_INV_TYPE]  NVARCHAR (20)   NULL,
    [LIABILITY_TYPE]             NVARCHAR (20)   NULL,
    [INTERNAL_INCOME_TYPE]       INT             NULL,
    [INCOME_TYPE_ID]             NVARCHAR (4000) NULL,
    [CURRENCY_CODE]              NVARCHAR (4000) NULL,
    [COUNTRY_CODE]               NVARCHAR (4000) NULL,
    [WITHHOLDING_BASE_AMOUNT]    NVARCHAR (4000) NULL,
    [WITHHOLDING_BASE_AMOUNT_DB] NVARCHAR (20)   NULL,
    [INVOICE_RECIPIENT]          NVARCHAR (20)   NULL,
    [INVOICING_SUPPLIER]         NVARCHAR (20)   NULL,
    [MATCHING_LEVEL]             NVARCHAR (4000) NULL,
    [MATCHING_LEVEL_DB]          NVARCHAR (20)   NULL,
    [ALLOW_TOLERANCE]            NVARCHAR (5)    NULL,
    [CREATE_TOLERANCE_POSTING]   NVARCHAR (5)    NULL,
    [ALLOW_QUANTITY_DIFF]        NVARCHAR (5)    NULL,
    [DEFAULT_CURRENCY_RATE_TYPE] NVARCHAR (10)   NULL,
    [TAX_CERTIFICATE_FORM]       NVARCHAR (4000) NULL,
    [TAX_CERTIFICATE_FORM_DB]    NVARCHAR (20)   NULL,
    [IS_NOTE]                    NVARCHAR (4000) NULL,
    [DELIV_TYPE_ID]              NVARCHAR (20)   NULL,
    [SUP_VAT_FREE_VAT_CODE]      NVARCHAR (20)   NULL,
    [C_W9_RECEIPT_DATE]          DATETIME2 (7)   NULL,
    [C_1099_RECIPIENT]           NVARCHAR (100)  NULL,
    [OBJID]                      NVARCHAR (4000) NULL,
    [OBJVERSION]                 NVARCHAR (2000) NULL,
    [Eff_Date]                   DATE            NOT NULL,
    [End_Date]                   DATE            NULL,
    [ActInd]                     CHAR (1)        NULL,
    [IsDeleted]                  CHAR (1)        NULL,
    [BatchID]                    BIGINT          NULL,
    [ProcessLogID]               BIGINT          NULL,
    CONSTRAINT [PK_IDENTITY_INVOICE_INFO] PRIMARY KEY CLUSTERED ([COMPANY] ASC, [Eff_Date] ASC, [IDENTITY] ASC, [PARTY_TYPE_DB] ASC) ON [DWH_IFS]
) ON [DWH_IFS];



