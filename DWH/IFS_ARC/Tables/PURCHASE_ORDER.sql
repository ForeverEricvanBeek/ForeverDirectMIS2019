﻿CREATE TABLE [IFS_ARC].[PURCHASE_ORDER] (
    [ORDER_NO]                    NVARCHAR (12)   NOT NULL,
    [ADDR_NO]                     NVARCHAR (50)   NULL,
    [AUTHORIZE_CODE]              NVARCHAR (20)   NULL,
    [AUTHORIZE_ID]                NVARCHAR (20)   NULL,
    [BLANKET_ORDER]               NVARCHAR (12)   NULL,
    [BUYER_CODE]                  NVARCHAR (20)   NULL,
    [CONTRACT]                    NVARCHAR (5)    NULL,
    [CURRENCY_CODE]               NVARCHAR (3)    NULL,
    [DELIVERY_ADDRESS]            NVARCHAR (50)   NULL,
    [DELIVERY_TERMS]              NVARCHAR (3)    NULL,
    [LANGUAGE_CODE]               NVARCHAR (4)    NULL,
    [NOTE_ID]                     INT             NULL,
    [PRE_ACCOUNTING_ID]           INT             NULL,
    [SHIP_VIA_CODE]               NVARCHAR (3)    NULL,
    [VENDOR_NO]                   NVARCHAR (20)   NULL,
    [CHANGE_DATE]                 DATETIME2 (7)   NULL,
    [CONTACT]                     NVARCHAR (100)  NULL,
    [DATE_ENTERED]                DATETIME2 (7)   NULL,
    [LABEL_NOTE]                  NVARCHAR (50)   NULL,
    [NOTE_TEXT]                   NVARCHAR (2000) NULL,
    [ORDER_CODE]                  NVARCHAR (20)   NULL,
    [ORDER_DATE]                  DATETIME2 (7)   NULL,
    [PICK_LIST_FLAG]              NVARCHAR (4000) NULL,
    [PICK_LIST_FLAG_DB]           NVARCHAR (1)    NULL,
    [PRINTED_FLAG]                NVARCHAR (4000) NULL,
    [PRINTED_FLAG_DB]             NVARCHAR (1)    NULL,
    [REVISION]                    INT             NULL,
    [VENDOR_CO_NO]                NVARCHAR (15)   NULL,
    [WANTED_RECEIPT_DATE]         DATETIME2 (7)   NULL,
    [RECIPIENT_NAME]              NVARCHAR (100)  NULL,
    [COUNTRY_CODE]                NVARCHAR (3)    NULL,
    [COUNTRY_CODE_DB]             NVARCHAR (3)    NULL,
    [CUSTOMER_PO_NO]              NVARCHAR (50)   NULL,
    [COMPANY]                     NVARCHAR (4000) NULL,
    [PAY_TERM_ID]                 NVARCHAR (20)   NULL,
    [ORDER_SENT]                  NVARCHAR (4000) NULL,
    [ORDER_SENT_DB]               NVARCHAR (20)   NULL,
    [CHANGE_REQUEST_SENT]         NVARCHAR (4000) NULL,
    [CHANGE_REQUEST_SENT_DB]      NVARCHAR (20)   NULL,
    [APPROVAL_RULE]               NVARCHAR (10)   NULL,
    [FORWARDER_ID]                NVARCHAR (20)   NULL,
    [BLANKET_DATE]                NVARCHAR (4000) NULL,
    [BLANKET_DATE_DB]             NVARCHAR (20)   NULL,
    [SCHEDULE_AGREEMENT_ORDER]    NVARCHAR (4000) NULL,
    [SCHEDULE_AGREEMENT_ORDER_DB] NVARCHAR (20)   NULL,
    [INTERNAL_DESTINATION]        NVARCHAR (2000) NULL,
    [DESTINATION_ID]              NVARCHAR (30)   NULL,
    [ADDRESS1]                    NVARCHAR (50)   NULL,
    [ADDRESS2]                    NVARCHAR (50)   NULL,
    [C_ADDRESS3]                  NVARCHAR (50)   NULL,
    [C_ADDRESS4]                  NVARCHAR (50)   NULL,
    [ZIP_CODE]                    NVARCHAR (35)   NULL,
    [CITY]                        NVARCHAR (35)   NULL,
    [ADDR_STATE]                  NVARCHAR (35)   NULL,
    [COUNTY]                      NVARCHAR (35)   NULL,
    [PAY_TAX]                     NVARCHAR (4000) NULL,
    [PAY_TAX_DB]                  NVARCHAR (5)    NULL,
    [TAX_EXEMPT]                  NVARCHAR (4000) NULL,
    [TAX_EXEMPT_DB]               NVARCHAR (5)    NULL,
    [REFERENCE]                   NVARCHAR (30)   NULL,
    [ADDR_FLAG]                   NVARCHAR (4000) NULL,
    [ADDR_FLAG_DB]                NVARCHAR (1)    NULL,
    [CENTRAL_ORDER_FLAG]          NVARCHAR (4000) NULL,
    [CENTRAL_ORDER_FLAG_DB]       NVARCHAR (20)   NULL,
    [CONSOLIDATED_FLAG]           NVARCHAR (4000) NULL,
    [CONSOLIDATED_FLAG_DB]        NVARCHAR (20)   NULL,
    [DOCUMENT_ADDRESS_ID]         NVARCHAR (50)   NULL,
    [DOC_ADDR_NO]                 NVARCHAR (50)   NULL,
    [INVOICING_SUPPLIER]          NVARCHAR (20)   NULL,
    [INTRASTAT_EXEMPT]            NVARCHAR (4000) NULL,
    [INTRASTAT_EXEMPT_DB]         NVARCHAR (20)   NULL,
    [CANCEL_REASON]               NVARCHAR (10)   NULL,
    [TEXT_ID$]                    NVARCHAR (50)   NULL,
    [ORDERS_SEQUENCE_NO]          INT             NULL,
    [ORDERS_VERSION_NO]           INT             NULL,
    [ORDCHG_SEQUENCE_NO]          INT             NULL,
    [ORDCHG_VERSION_NO]           INT             NULL,
    [DEL_TERMS_LOCATION]          NVARCHAR (100)  NULL,
    [CASE_ID]                     INT             NULL,
    [TASK_ID]                     INT             NULL,
    [C_INTFACE_DATE]              DATETIME2 (7)   NULL,
    [OBJID]                       NVARCHAR (4000) NULL,
    [OBJVERSION]                  NVARCHAR (2000) NULL,
    [OBJSTATE]                    NVARCHAR (20)   NULL,
    [OBJEVENTS]                   NVARCHAR (4000) NULL,
    [STATE]                       NVARCHAR (4000) NULL,
    [Eff_Date]                    DATE            NOT NULL,
    [End_Date]                    DATE            NULL,
    [ActInd]                      CHAR (1)        NULL,
    [IsDeleted]                   CHAR (1)        NULL,
    [BatchID]                     BIGINT          NULL,
    [ProcessLogID]                BIGINT          NULL,
    CONSTRAINT [PK_PURCHASE_ORDER] PRIMARY KEY CLUSTERED ([ORDER_NO] ASC, [Eff_Date] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];





