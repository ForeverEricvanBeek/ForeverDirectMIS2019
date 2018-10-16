﻿CREATE TABLE [IFS].[INVOICE] (
    [COMPANY]                NVARCHAR (20)   NOT NULL,
    [IDENTITY]               NVARCHAR (20)   NULL,
    [PARTY_TYPE]             NVARCHAR (4000) NULL,
    [PARTY_TYPE_DB]          NVARCHAR (20)   NULL,
    [INVOICE_ID]             INT             NOT NULL,
    [SERIES_ID]              NVARCHAR (20)   NULL,
    [INVOICE_NO]             NVARCHAR (50)   NULL,
    [INVOICE_DATE]           DATETIME2 (7)   NULL,
    [DUE_DATE]               DATETIME2 (7)   NULL,
    [CASH]                   NVARCHAR (5)    NULL,
    [COLLECT]                NVARCHAR (5)    NULL,
    [CREATOR]                NVARCHAR (30)   NULL,
    [DELIVERY_DATE]          DATETIME2 (7)   NULL,
    [ARRIVAL_DATE]           DATETIME2 (7)   NULL,
    [CURR_RATE]              INT             NULL,
    [DIV_FACTOR]             INT             NULL,
    [DB_HEAD_DATA]           NVARCHAR (2000) NULL,
    [INT_ALLOWED]            NVARCHAR (5)    NULL,
    [INVOICE_TYPE]           NVARCHAR (20)   NULL,
    [PAY_TERM_ID]            NVARCHAR (20)   NULL,
    [SERIES_REFERENCE]       NVARCHAR (20)   NULL,
    [NUMBER_REFERENCE]       NVARCHAR (50)   NULL,
    [DELIVERY_IDENTITY]      NVARCHAR (200)  NULL,
    [DELIVERY_ADDRESS_ID]    NVARCHAR (50)   NULL,
    [INVOICE_ADDRESS_ID]     NVARCHAR (50)   NULL,
    [CREATORS_REFERENCE]     NVARCHAR (100)  NULL,
    [NATIONAL_BANK_CODE]     NVARCHAR (20)   NULL,
    [NATURE_OF_BUSINESS]     NVARCHAR (100)  NULL,
    [CODE_A]                 NVARCHAR (10)   NULL,
    [CODE_B]                 NVARCHAR (10)   NULL,
    [CODE_C]                 NVARCHAR (10)   NULL,
    [CODE_D]                 NVARCHAR (10)   NULL,
    [CODE_E]                 NVARCHAR (10)   NULL,
    [CODE_F]                 NVARCHAR (10)   NULL,
    [CODE_G]                 NVARCHAR (10)   NULL,
    [CODE_H]                 NVARCHAR (10)   NULL,
    [CODE_I]                 NVARCHAR (10)   NULL,
    [CODE_J]                 NVARCHAR (10)   NULL,
    [PROJECT_ACTIVITY_ID]    INT             NULL,
    [AFF_BASE_LEDG_POST]     NVARCHAR (5)    NULL,
    [AFF_LINE_POST]          NVARCHAR (5)    NULL,
    [PRELIM_CODE]            NVARCHAR (20)   NULL,
    [CREATION_DATE]          DATETIME2 (7)   NULL,
    [DB_PRE_ACC_CODE_STRING] NVARCHAR (2000) NULL,
    [JOUR_NO_PRINT]          INT             NULL,
    [JOUR_NO_VOUCHER]        INT             NULL,
    [PAYMENT_ADDRESS_ID]     NVARCHAR (50)   NULL,
    [WAY_PAY_ID]             NVARCHAR (20)   NULL,
    [CANCELED_TIME]          DATETIME2 (7)   NULL,
    [VOUCHER_NO_REF]         INT             NULL,
    [VOUCHER_TYPE_REF]       NVARCHAR (3)    NULL,
    [VOUCHER_DATE_REF]       DATETIME2 (7)   NULL,
    [ACCOUNTING_YEAR_REF]    INT             NULL,
    [LANGUAGE_CODE]          NVARCHAR (20)   NULL,
    [PO_REF_NUMBER]          NVARCHAR (4000) NULL,
    [PL_PAY_DATE]            DATETIME2 (7)   NULL,
    [NET_CURR_AMOUNT]        INT             NULL,
    [NET_DOM_AMOUNT]         INT             NULL,
    [VAT_CURR_AMOUNT]        INT             NULL,
    [VAT_DOM_AMOUNT]         INT             NULL,
    [CURRENCY]               NVARCHAR (3)    NULL,
    [C1]                     NVARCHAR (100)  NULL,
    [C2]                     NVARCHAR (100)  NULL,
    [C3]                     NVARCHAR (100)  NULL,
    [C4]                     NVARCHAR (100)  NULL,
    [C5]                     NVARCHAR (100)  NULL,
    [C6]                     NVARCHAR (100)  NULL,
    [C7]                     NVARCHAR (100)  NULL,
    [C8]                     NVARCHAR (100)  NULL,
    [C9]                     NVARCHAR (100)  NULL,
    [C10]                    NVARCHAR (100)  NULL,
    [C11]                    NVARCHAR (100)  NULL,
    [C12]                    NVARCHAR (100)  NULL,
    [C13]                    NVARCHAR (100)  NULL,
    [N1]                     INT             NULL,
    [N2]                     BIGINT          NULL,
    [N3]                     BIGINT          NULL,
    [N4]                     INT             NULL,
    [N5]                     INT             NULL,
    [D1]                     DATETIME2 (7)   NULL,
    [D2]                     DATETIME2 (7)   NULL,
    [D3]                     DATETIME2 (7)   NULL,
    [D4]                     DATETIME2 (7)   NULL,
    [CHK_HANDLING_CODE]      NVARCHAR (20)   NULL,
    [SENT]                   NVARCHAR (5)    NULL,
    [MULTI_COMPANY_INVOICE]  NVARCHAR (5)    NULL,
    [CREATE_STATE_DB]        NVARCHAR (20)   NULL,
    [TRANSFER_STATUS]        NVARCHAR (4000) NULL,
    [TRANSFER_STATUS_DB]     NVARCHAR (100)  NULL,
    [OK_CREATE_VOUCHER]      NVARCHAR (5)    NULL,
    [MULTI_INVOICE_VOUCHER]  NVARCHAR (5)    NULL,
    [VOUCHER_FINAL_POST]     NVARCHAR (5)    NULL,
    [VOUCHER_VAT_ONLY]       NVARCHAR (5)    NULL,
    [PROPOSED_VOUCHER_GROUP] NVARCHAR (10)   NULL,
    [AUTOMATIC_INVOICE]      NVARCHAR (5)    NULL,
    [TRANSFER_ERROR]         NVARCHAR (200)  NULL,
    [TRANSFER_IDENTITY]      NVARCHAR (100)  NULL,
    [INVOICE_VERSION]        INT             NULL,
    [PAYER_IDENTITY]         NVARCHAR (20)   NULL,
    [DEDUCTION_GROUP]        NVARCHAR (20)   NULL,
    [GROSS_UP]               NVARCHAR (5)    NULL,
    [NCF_REFERENCE]          NVARCHAR (50)   NULL,
    [BRANCH]                 NVARCHAR (20)   NULL,
    [PAY_TERM_BASE_DATE]     DATETIME2 (7)   NULL,
    [ADV_INV]                NVARCHAR (5)    NULL,
    [INVOICE_RECIPIENT]      NVARCHAR (20)   NULL,
    [PROPOSAL_EXIST]         NVARCHAR (5)    NULL,
    [RECEIPT_REF]            NVARCHAR (2000) NULL,
    [BATCH_ID]               NVARCHAR (50)   NULL,
    [SELF_BILLING_REF]       NVARCHAR (50)   NULL,
    [BANK_ACCOUNT]           NVARCHAR (50)   NULL,
    [TAX_CURR_RATE]          INT             NULL,
    [TAX_INVOICE_SERIES_ID]  NVARCHAR (20)   NULL,
    [TAX_INVOICE_NUMBER]     NVARCHAR (50)   NULL,
    [TAX_INVOICE_DATE]       DATETIME2 (7)   NULL,
    [JS_INVOICE_STATE_DB]    NVARCHAR (3)    NULL,
    [PRICE_ADJUSTMENT]       NVARCHAR (5)    NULL,
    [ORIGINAL_RESULT_KEY]    INT             NULL,
    [DEBIT_INVOICE_ID]       INT             NULL,
    [TAX_CURR_TYPE]          NVARCHAR (10)   NULL,
    [CORRECTION_INVOICE_ID]  INT             NULL,
    [SUB_CON_NO]             NVARCHAR (4000) NULL,
    [MSG_SEQUENCE_NO]        INT             NULL,
    [MSG_VERSION_NO]         INT             NULL,
    [MEDIA_CODE]             NVARCHAR (30)   NULL,
    [SEND_STATUS]            NVARCHAR (4000) NULL,
    [SEND_STATUS_DB]         NVARCHAR (20)   NULL,
    [SEND_TIME]              DATETIME2 (7)   NULL,
    [SEND_ERROR]             NVARCHAR (2000) NULL,
    [ATTACHMENTS]            NVARCHAR (5)    NULL,
    [SEND_FLAG_ATTR]         NVARCHAR (2000) NULL,
    [TEXT_ID_CUS$]           NVARCHAR (50)   NULL,
    [TEXT_ID_SUP$]           NVARCHAR (50)   NULL,
    [OLD_ADV_INV]            NVARCHAR (5)    NULL,
    [LOAD_TYPE]              NVARCHAR (20)   NULL,
    [OBJID]                  NVARCHAR (4000) NULL,
    [OBJVERSION]             NVARCHAR (2000) NULL,
    [OBJSTATE]               NVARCHAR (30)   NULL,
    [STATE]                  NVARCHAR (253)  NULL,
    [Eff_Date]               DATE            NOT NULL,
    [End_Date]               DATE            NULL,
    [ActInd]                 CHAR (1)        NULL,
    [IsDeleted]              CHAR (1)        NULL,
    [BatchID]                BIGINT          NULL,
    [ProcessLogID]           BIGINT          NULL,
    CONSTRAINT [PK_INVOICE] PRIMARY KEY CLUSTERED ([COMPANY] ASC, [Eff_Date] ASC, [INVOICE_ID] ASC) ON [DWH_IFS]
) ON [DWH_IFS];





