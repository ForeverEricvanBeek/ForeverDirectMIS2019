﻿CREATE TABLE [IFS].[PURCHASE_ORDER_LINE] (
    [ORDER_NO]                 NVARCHAR (12)   NOT NULL,
    [LINE_NO]                  NVARCHAR (4)    NOT NULL,
    [RELEASE_NO]               NVARCHAR (4)    NOT NULL,
    [BLANKET_LINE]             INT             NULL,
    [ADDITIONAL_COST_AMOUNT]   INT             NULL,
    [BUY_QTY_DUE]              INT             NULL,
    [BUY_UNIT_PRICE]           DECIMAL (18, 2) NULL,
    [CLOSE_TOLERANCE]          INT             NULL,
    [CONV_FACTOR]              INT             NULL,
    [CURRENCY_RATE]            INT             NULL,
    [DATE_ENTERED]             DATETIME2 (7)   NULL,
    [DESCRIPTION]              NVARCHAR (4000) NULL,
    [DISCOUNT]                 INT             NULL,
    [FBUY_UNIT_PRICE]          DECIMAL (18, 2) NULL,
    [LAST_ACTIVITY_DATE]       DATETIME2 (7)   NULL,
    [NOTE_TEXT]                NVARCHAR (2000) NULL,
    [PLANNED_DELIVERY_DATE]    DATETIME2 (7)   NULL,
    [PROMISED_DELIVERY_DATE]   DATETIME2 (7)   NULL,
    [WANTED_DELIVERY_DATE]     DATETIME2 (7)   NULL,
    [NOTE_ID]                  INT             NULL,
    [PLANNED_RECEIPT_DATE]     DATETIME2 (7)   NULL,
    [CLOSE_CODE]               NVARCHAR (4000) NULL,
    [CLOSE_CODE_DB]            NVARCHAR (1)    NULL,
    [PRE_ACCOUNTING_ID]        INT             NULL,
    [CONTRACT]                 NVARCHAR (5)    NULL,
    [BUY_UNIT_MEAS]            NVARCHAR (10)   NULL,
    [BLANKET_ORDER]            NVARCHAR (12)   NULL,
    [PRICE_CONV_FACTOR]        INT             NULL,
    [DEMAND_CODE]              NVARCHAR (4000) NULL,
    [DEMAND_CODE_DB]           NVARCHAR (3)    NULL,
    [CURRENCY_CODE]            NVARCHAR (3)    NULL,
    [INSPECTION_CODE]          NVARCHAR (20)   NULL,
    [DELIVERY_CONTROL_CODE]    NVARCHAR (4)    NULL,
    [LAST_ORD_CONF_REMINDER]   DATETIME2 (7)   NULL,
    [LAST_DELIVERY_REMINDER]   DATETIME2 (7)   NULL,
    [ORD_CONF_REM_NUM]         INT             NULL,
    [DELIVERY_REM_NUM]         INT             NULL,
    [ORD_CONF_REMINDER]        NVARCHAR (4000) NULL,
    [ORD_CONF_REMINDER_DB]     NVARCHAR (20)   NULL,
    [DELIVERY_REMINDER]        NVARCHAR (4000) NULL,
    [DELIVERY_REMINDER_DB]     NVARCHAR (20)   NULL,
    [REPLACES_ORDER_NO]        NVARCHAR (12)   NULL,
    [REPLACES_LINE_NO]         NVARCHAR (4)    NULL,
    [REPLACES_RELEASE_NO]      NVARCHAR (4)    NULL,
    [REPLACES_RECEIPT_NO]      INT             NULL,
    [RECEIVE_CASE]             NVARCHAR (4000) NULL,
    [RECEIVE_CASE_DB]          NVARCHAR (20)   NULL,
    [PROCESS_TYPE]             NVARCHAR (3)    NULL,
    [PURCHASE_PAYMENT_TYPE]    NVARCHAR (4000) NULL,
    [PURCHASE_PAYMENT_TYPE_DB] NVARCHAR (20)   NULL,
    [PROJECT_ID]               NVARCHAR (10)   NULL,
    [ACTIVITY_SEQ]             INT             NULL,
    [AUTOMATIC_INVOICE]        NVARCHAR (4000) NULL,
    [AUTOMATIC_INVOICE_DB]     NVARCHAR (20)   NULL,
    [DEMAND_OPERATION_NO]      NVARCHAR (12)   NULL,
    [DEMAND_ORDER_CODE]        NVARCHAR (1)    NULL,
    [DEMAND_ORDER_NO]          NVARCHAR (12)   NULL,
    [DEMAND_ORDER_TYPE]        NVARCHAR (3)    NULL,
    [DEMAND_RELEASE]           NVARCHAR (12)   NULL,
    [DEMAND_SEQUENCE_NO]       NVARCHAR (4)    NULL,
    [CURRENCY_TYPE]            NVARCHAR (10)   NULL,
    [DESPATCH_QTY]             INT             NULL,
    [DESPATCH_DATE]            DATETIME2 (7)   NULL,
    [DELNOTE_NO]               NVARCHAR (50)   NULL,
    [ASSORTMENT]               NVARCHAR (20)   NULL,
    [TECHNICAL_COORDINATOR_ID] NVARCHAR (20)   NULL,
    [TAX_EXEMPT]               NVARCHAR (4000) NULL,
    [TAX_EXEMPT_DB]            NVARCHAR (5)    NULL,
    [TAX_AMOUNT]               DECIMAL (18, 2) NULL,
    [ORIGINAL_QTY]             INT             NULL,
    [DEFECT_PART_KEY_REF]      NVARCHAR (60)   NULL,
    [ADDR_FLAG]                NVARCHAR (4000) NULL,
    [ADDR_FLAG_DB]             NVARCHAR (20)   NULL,
    [DEFAULT_ADDR_FLAG]        NVARCHAR (4000) NULL,
    [DEFAULT_ADDR_FLAG_DB]     NVARCHAR (20)   NULL,
    [DESTINATION_ID]           NVARCHAR (30)   NULL,
    [SHIP_VIA_CODE]            NVARCHAR (3)    NULL,
    [DELIVERY_TERMS]           NVARCHAR (3)    NULL,
    [ADDRESS_ID]               NVARCHAR (50)   NULL,
    [COMPANY]                  NVARCHAR (20)   NULL,
    [FORWARDER_ID]             NVARCHAR (20)   NULL,
    [PAY_TAX]                  NVARCHAR (4000) NULL,
    [PAY_TAX_DB]               NVARCHAR (5)    NULL,
    [INTERNAL_DEST_DESC]       NVARCHAR (2000) NULL,
    [PURCHASE_SITE]            NVARCHAR (5)    NULL,
    [FREEZE_FLAG]              NVARCHAR (4000) NULL,
    [FREEZE_FLAG_DB]           NVARCHAR (20)   NULL,
    [INVOICING_SUPPLIER]       NVARCHAR (20)   NULL,
    [INTRASTAT_EXEMPT]         NVARCHAR (4000) NULL,
    [INTRASTAT_EXEMPT_DB]      NVARCHAR (20)   NULL,
    [FEE_CODE]                 NVARCHAR (20)   NULL,
    [CANCEL_REASON]            NVARCHAR (10)   NULL,
    [TAXABLE]                  NVARCHAR (4000) NULL,
    [TAXABLE_DB]               NVARCHAR (5)    NULL,
    [INVENTORY_PART]           NVARCHAR (4000) NULL,
    [INVENTORY_PART_DB]        NVARCHAR (20)   NULL,
    [PART_NO]                  NVARCHAR (25)   NULL,
    [REQUISITION_NO]           NVARCHAR (12)   NULL,
    [DEL_TERMS_LOCATION]       NVARCHAR (100)  NULL,
    [OVER_DELIVERY_TOLERANCE]  INT             NULL,
    [OBJID]                    NVARCHAR (4000) NULL,
    [OBJVERSION]               NVARCHAR (2000) NULL,
    [OBJSTATE]                 NVARCHAR (20)   NULL,
    [OBJEVENTS]                NVARCHAR (4000) NULL,
    [STATE]                    NVARCHAR (4000) NULL,
    [BatchID]                  BIGINT          NULL,
    [ProcessLogID]             BIGINT          NULL
);



