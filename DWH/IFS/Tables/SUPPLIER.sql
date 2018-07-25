﻿CREATE TABLE [IFS].[SUPPLIER] (
    [VENDOR_NO]                    NVARCHAR (20)   NOT NULL,
    [VENDOR_NAME]                  NVARCHAR (4000) NULL,
    [BUYER_CODE]                   NVARCHAR (20)   NULL,
    [CURRENCY_CODE]                NVARCHAR (3)    NULL,
    [SUPP_GRP]                     NVARCHAR (10)   NULL,
    [ADDITIONAL_COST_AMOUNT]       INT             NULL,
    [CONTACT]                      NVARCHAR (30)   NULL,
    [CR_CHECK]                     NVARCHAR (4000) NULL,
    [CR_CHECK_DB]                  NVARCHAR (1)    NULL,
    [CR_DATE]                      DATETIME2 (7)   NULL,
    [DATE_DEL]                     DATETIME2 (7)   NULL,
    [DISCOUNT]                     INT             NULL,
    [NOTE_TEXT]                    NVARCHAR (2000) NULL,
    [OUR_CUSTOMER_NO]              NVARCHAR (20)   NULL,
    [PACK_LIST_FLAG]               NVARCHAR (4000) NULL,
    [PACK_LIST_FLAG_DB]            NVARCHAR (1)    NULL,
    [PURCH_ORDER_FLAG]             NVARCHAR (4000) NULL,
    [PURCH_ORDER_FLAG_DB]          NVARCHAR (1)    NULL,
    [QC_APPROVAL]                  NVARCHAR (4000) NULL,
    [QC_APPROVAL_DB]               NVARCHAR (1)    NULL,
    [QC_DATE]                      DATETIME2 (7)   NULL,
    [ORD_CONF_REM_INTERVAL]        INT             NULL,
    [DELIVERY_REM_INTERVAL]        INT             NULL,
    [DAYS_BEFORE_DELIVERY]         INT             NULL,
    [DAYS_BEFORE_ARRIVAL]          INT             NULL,
    [ORD_CONF_REMINDER]            NVARCHAR (4000) NULL,
    [ORD_CONF_REMINDER_DB]         NVARCHAR (20)   NULL,
    [DELIVERY_REMINDER]            NVARCHAR (4000) NULL,
    [DELIVERY_REMINDER_DB]         NVARCHAR (20)   NULL,
    [CATEGORY]                     NVARCHAR (4000) NULL,
    [CATEGORY_DB]                  NVARCHAR (20)   NULL,
    [ACQUISITION_SITE]             NVARCHAR (5)    NULL,
    [COMPANY]                      NVARCHAR (4000) NULL,
    [PAY_TERM_ID]                  NVARCHAR (20)   NULL,
    [EDI_AUTO_ORDER_APPROVAL]      NVARCHAR (4000) NULL,
    [EDI_AUTO_ORDER_APPROVAL_DB]   NVARCHAR (3)    NULL,
    [EDI_AUTO_APPROVAL_USER]       NVARCHAR (30)   NULL,
    [QC_TYPE]                      NVARCHAR (25)   NULL,
    [ENVIRONMENT_DATE]             DATETIME2 (7)   NULL,
    [ENVIRONMENT_TYPE]             NVARCHAR (25)   NULL,
    [ENVIRONMENTAL_APPROVAL]       NVARCHAR (4000) NULL,
    [ENVIRONMENTAL_APPROVAL_DB]    NVARCHAR (20)   NULL,
    [CUSTOMER_NO]                  NVARCHAR (20)   NULL,
    [NOTE_ID]                      INT             NULL,
    [SUPPLIER_TEMPLATE_DESC]       NVARCHAR (100)  NULL,
    [TEMPLATE_SUPPLIER]            NVARCHAR (4000) NULL,
    [TEMPLATE_SUPPLIER_DB]         NVARCHAR (20)   NULL,
    [QUICK_REGISTERED_SUPPLIER]    NVARCHAR (4000) NULL,
    [QUICK_REGISTERED_SUPPLIER_DB] NVARCHAR (20)   NULL,
    [BLANKET_DATE]                 NVARCHAR (4000) NULL,
    [BLANKET_DATE_DB]              NVARCHAR (20)   NULL,
    [EXPRESS_ORDER_ALLOWED]        NVARCHAR (4000) NULL,
    [EXPRESS_ORDER_ALLOWED_DB]     NVARCHAR (20)   NULL,
    [EDI_PRI_CAT_APP_USER]         NVARCHAR (30)   NULL,
    [PRICAT_AUTOMATIC_APPROVAL]    NVARCHAR (4000) NULL,
    [PRICAT_AUTOMATIC_APPROVAL_DB] NVARCHAR (20)   NULL,
    [AUTOMATIC_REPL_CHANGE]        NVARCHAR (4000) NULL,
    [AUTOMATIC_REPL_CHANGE_DB]     NVARCHAR (20)   NULL,
    [SEND_CHANGE_MESSAGE]          NVARCHAR (4000) NULL,
    [SEND_CHANGE_MESSAGE_DB]       NVARCHAR (20)   NULL,
    [RECEIPT_REF_REMINDER]         NVARCHAR (4000) NULL,
    [RECEIPT_REF_REMINDER_DB]      NVARCHAR (20)   NULL,
    [PRINT_AMOUNTS_INCL_TAX]       NVARCHAR (4000) NULL,
    [PRINT_AMOUNTS_INCL_TAX_DB]    NVARCHAR (20)   NULL,
    [CLOSING_DAY]                  INT             NULL,
    [END_OF_MONTH]                 NVARCHAR (4000) NULL,
    [END_OF_MONTH_DB]              NVARCHAR (20)   NULL,
    [RECEIVING_ADVICE_TYPE]        NVARCHAR (4000) NULL,
    [RECEIVING_ADVICE_TYPE_DB]     NVARCHAR (30)   NULL,
    [PAY_TAX]                      NVARCHAR (4000) NULL,
    [PAY_TAX_DB]                   NVARCHAR (20)   NULL,
    [REC_ADV_SELF_BILLING]         NVARCHAR (4000) NULL,
    [REC_ADV_SELF_BILLING_DB]      NVARCHAR (20)   NULL,
    [CLASSIFICATION_STANDARD]      NVARCHAR (25)   NULL,
    [C_LOCAL_SUPPLIER]             NVARCHAR (4000) NULL,
    [C_LOCAL_SUPPLIER_DB]          NVARCHAR (5)    NULL,
    [OBJID]                        NVARCHAR (4000) NULL,
    [OBJVERSION]                   NVARCHAR (2000) NULL,
    [Eff_Date]                     DATE            NOT NULL,
    [End_Date]                     DATE            NULL,
    [ActInd]                       CHAR (1)        NULL,
    [IsDeleted]                    CHAR (1)        NULL,
    [BatchID]                      BIGINT          NULL,
    [ProcessLogID]                 BIGINT          NULL,
    CONSTRAINT [PK_SUPPLIER] PRIMARY KEY CLUSTERED ([VENDOR_NO] ASC, [Eff_Date] ASC)
);

