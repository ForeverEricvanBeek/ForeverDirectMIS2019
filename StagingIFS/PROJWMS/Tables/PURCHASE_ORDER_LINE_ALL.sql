﻿CREATE TABLE [PROJWMS].[PURCHASE_ORDER_LINE_ALL] (
    [ORDER_NO]                 NVARCHAR (12)   NOT NULL,
    [LINE_NO]                  NVARCHAR (4)    NOT NULL,
    [RELEASE_NO]               NVARCHAR (4)    NOT NULL,
    [BLANKET_ORDER]            NVARCHAR (12)   NULL,
    [BLANKET_LINE]             INT             NULL,
    [ASSORTMENT]               NVARCHAR (20)   NULL,
    [BUYER_CODE]               NVARCHAR (4000) NULL,
    [BUY_UNIT_MEAS]            NVARCHAR (10)   NULL,
    [CONTRACT]                 NVARCHAR (5)    NULL,
    [CURRENCY_CODE]            NVARCHAR (3)    NULL,
    [DEMAND_OPERATION_NO]      NVARCHAR (12)   NULL,
    [DEMAND_ORDER_CODE]        NVARCHAR (1)    NULL,
    [DEMAND_ORDER_NO]          NVARCHAR (12)   NULL,
    [DEMAND_ORDER_TYPE]        NVARCHAR (3)    NULL,
    [DEMAND_RELEASE]           NVARCHAR (12)   NULL,
    [DEMAND_SEQUENCE_NO]       NVARCHAR (4)    NULL,
    [ENG_CHG_LEVEL]            NVARCHAR (2)    NULL,
    [INSPECTION_CODE]          NVARCHAR (20)   NULL,
    [NOTE_ID]                  INT             NULL,
    [ORDER_CODE]               NVARCHAR (3)    NULL,
    [PART_NO]                  NVARCHAR (25)   NULL,
    [PRE_ACCOUNTING_ID]        INT             NULL,
    [PRICE_UNIT_MEAS]          NVARCHAR (10)   NULL,
    [QC_CODE]                  NVARCHAR (20)   NULL,
    [REQUISITION_NO]           NVARCHAR (12)   NULL,
    [REQ_LINE]                 NVARCHAR (4)    NULL,
    [REQ_RELEASE]              NVARCHAR (4)    NULL,
    [UNIT_MEAS]                NVARCHAR (10)   NULL,
    [ADDITIONAL_COST_AMOUNT]   DECIMAL (18, 2) NULL,
    [BUY_QTY_DUE]              INT             NULL,
    [BUY_UNIT_PRICE]           DECIMAL (18, 2) NULL,
    [CLOSE_CODE]               NVARCHAR (4000) NULL,
    [CLOSE_CODE_DB]            NVARCHAR (1)    NULL,
    [CLOSE_TOLERANCE]          INT             NULL,
    [CONV_FACTOR]              INT             NULL,
    [CURRENCY_RATE]            INT             NULL,
    [DATE_ENTERED]             DATETIME2 (7)   NULL,
    [DEMAND_CODE]              NVARCHAR (4000) NULL,
    [DEMAND_CODE_DB]           NVARCHAR (3)    NULL,
    [DESCRIPTION]              NVARCHAR (4000) NULL,
    [DISCOUNT]                 INT             NULL,
    [FBUY_UNIT_PRICE]          DECIMAL (18, 2) NULL,
    [LAST_ACTIVITY_DATE]       DATETIME2 (7)   NULL,
    [NOTE_TEXT]                NVARCHAR (2000) NULL,
    [ORIGINAL_QTY]             INT             NULL,
    [PLANNED_DELIVERY_DATE]    DATETIME2 (7)   NULL,
    [PLANNED_RECEIPT_DATE]     DATETIME2 (7)   NULL,
    [PRICE_CONV_FACTOR]        INT             NULL,
    [PROMISED_DELIVERY_DATE]   DATETIME2 (7)   NULL,
    [QTY_ON_ORDER]             INT             NULL,
    [REVISED_QTY]              INT             NULL,
    [SAMPLE_PERCENT]           DECIMAL (18, 4) NULL,
    [SAMPLE_QTY]               INT             NULL,
    [WANTED_DELIVERY_DATE]     DATETIME2 (7)   NULL,
    [DELIVERY_CONTROL_CODE]    NVARCHAR (4)    NULL,
    [STAT_GRP]                 NVARCHAR (4000) NULL,
    [HIDE_PRICE]               NVARCHAR (4000) NULL,
    [HIDE_PRICE_DB]            NVARCHAR (1)    NULL,
    [VENDOR_NO]                NVARCHAR (20)   NULL,
    [REPLACES_ORDER_NO]        NVARCHAR (12)   NULL,
    [REPLACES_LINE_NO]         NVARCHAR (4)    NULL,
    [REPLACES_RELEASE_NO]      NVARCHAR (4)    NULL,
    [REPLACES_RECEIPT_NO]      INT             NULL,
    [AUTHORIZE_CODE]           NVARCHAR (20)   NULL,
    [DIM_QUALITY]              NVARCHAR (4000) NULL,
    [TYPE_DESIGNATION]         NVARCHAR (4000) NULL,
    [RECEIVE_CASE]             NVARCHAR (4000) NULL,
    [RECEIVE_CASE_DB]          NVARCHAR (20)   NULL,
    [QTY_TO_INSPECT]           INT             NULL,
    [PROCESS_TYPE]             NVARCHAR (3)    NULL,
    [PROJECT_ID]               NVARCHAR (10)   NULL,
    [ACTIVITY_SEQ]             INT             NULL,
    [PURCHASE_PAYMENT_TYPE]    NVARCHAR (4000) NULL,
    [PURCHASE_PAYMENT_TYPE_DB] NVARCHAR (20)   NULL,
    [AUTOMATIC_INVOICE]        NVARCHAR (4000) NULL,
    [AUTOMATIC_INVOICE_DB]     NVARCHAR (20)   NULL,
    [ORD_CONF_REMINDER]        NVARCHAR (4000) NULL,
    [ORD_CONF_REMINDER_DB]     NVARCHAR (20)   NULL,
    [DELIVERY_REMINDER]        NVARCHAR (4000) NULL,
    [DELIVERY_REMINDER_DB]     NVARCHAR (20)   NULL,
    [LAST_ORD_CONF_REMINDER]   DATETIME2 (7)   NULL,
    [LAST_DELIVERY_REMINDER]   DATETIME2 (7)   NULL,
    [ORD_CONF_REM_NUM]         INT             NULL,
    [DELIVERY_REM_NUM]         INT             NULL,
    [DESPATCH_QTY]             INT             NULL,
    [DESPATCH_DATE]            DATETIME2 (7)   NULL,
    [DELNOTE_NO]               NVARCHAR (50)   NULL,
    [TECHNICAL_COORDINATOR_ID] NVARCHAR (20)   NULL,
    [REQUISITIONER_CODE]       NVARCHAR (4000) NULL,
    [CONFIGURATION_ID]         NVARCHAR (50)   NULL,
    [PURCHASE_MODIFIED]        NVARCHAR (4000) NULL,
    [PURCHASE_MODIFIED_DB]     NVARCHAR (10)   NULL,
    [TAXABLE]                  NVARCHAR (4000) NULL,
    [TAXABLE_DB]               NVARCHAR (5)    NULL,
    [TAX_EXEMPT]               NVARCHAR (4000) NULL,
    [TAX_EXEMPT_DB]            NVARCHAR (5)    NULL,
    [PAY_TAX]                  NVARCHAR (4000) NULL,
    [PAY_TAX_DB]               NVARCHAR (5)    NULL,
    [FEE_CODE]                 NVARCHAR (20)   NULL,
    [TAX_AMOUNT]               DECIMAL (18, 2) NULL,
    [TAX_SHIP_ADDRESS]         NVARCHAR (4000) NULL,
    [CONDITION_CODE]           NVARCHAR (10)   NULL,
    [SERIAL_NO]                NVARCHAR (50)   NULL,
    [LOT_BATCH_NO]             NVARCHAR (20)   NULL,
    [SERVICE_TYPE]             NVARCHAR (20)   NULL,
    [IS_EXCHANGE_PART]         NVARCHAR (5)    NULL,
    [ORIGINAL_PART_NO]         NVARCHAR (25)   NULL,
    [PART_OWNERSHIP_DB]        NVARCHAR (20)   NULL,
    [PART_OWNERSHIP]           NVARCHAR (4000) NULL,
    [OWNING_CUSTOMER_NO]       NVARCHAR (20)   NULL,
    [CORE_DEPOSIT]             INT             NULL,
    [CORE_DEPOSIT_BASE]        INT             NULL,
    [EXCHANGE_ITEM_DB]         NVARCHAR (20)   NULL,
    [EXCHANGE_ITEM]            NVARCHAR (4000) NULL,
    [DEFAULT_ADDR_FLAG]        NVARCHAR (20)   NULL,
    [ADDRESS_ID]               NVARCHAR (50)   NULL,
    [ADDR_FLAG]                NVARCHAR (20)   NULL,
    [DESTINATION_ID]           NVARCHAR (30)   NULL,
    [SHIP_VIA_CODE]            NVARCHAR (3)    NULL,
    [DELIVERY_TERMS]           NVARCHAR (3)    NULL,
    [FORWARDER_ID]             NVARCHAR (20)   NULL,
    [REFERENCE_ID]             NVARCHAR (35)   NULL,
    [DOCK_CODE]                NVARCHAR (35)   NULL,
    [SUB_DOCK_CODE]            NVARCHAR (35)   NULL,
    [LOCATION_NO]              NVARCHAR (35)   NULL,
    [PURCHASE_SITE]            NVARCHAR (5)    NULL,
    [MANUFACTURER_ID]          NVARCHAR (20)   NULL,
    [MANUFACTURER_PART_NO]     NVARCHAR (80)   NULL,
    [DELIVER_TO_CUSTOMER_NO]   NVARCHAR (20)   NULL,
    [EAN_LOCATION_DEL_ADDR]    NVARCHAR (100)  NULL,
    [INVOICING_SUPPLIER]       NVARCHAR (20)   NULL,
    [INTRASTAT_EXEMPT]         NVARCHAR (4000) NULL,
    [INTRASTAT_EXEMPT_DB]      NVARCHAR (20)   NULL,
    [INPUT_QTY]                INT             NULL,
    [INPUT_UNIT_MEAS]          NVARCHAR (50)   NULL,
    [INPUT_CONV_FACTOR]        INT             NULL,
    [INPUT_VARIABLE_VALUES]    NVARCHAR (50)   NULL,
    [OBJID]                    NVARCHAR (4000) NULL,
    [OBJVERSION]               NVARCHAR (2000) NULL,
    [OBJSTATE]                 NVARCHAR (20)   NULL,
    [OBJEVENTS]                NVARCHAR (4000) NULL,
    [STATE]                    NVARCHAR (4000) NULL,
    [CANCEL_REASON]            NVARCHAR (10)   NULL,
    [ROWTYPE]                  NVARCHAR (30)   NULL,
    [OVER_DELIVERY_TOLERANCE]  INT             NULL,
    [DEL_TERMS_LOCATION]       NVARCHAR (100)  NULL,
    [INTERNAL_CONTROL_TIME]    INT             NULL,
    [WEIGHT_NET]               DECIMAL (18, 4) NULL,
    [VOLUME_NET]               DECIMAL (18, 4) NULL,
    [BatchID]                  BIGINT          NULL,
    [ProcessLogID]             BIGINT          NULL,
    CONSTRAINT [PK_PURCHASE_ORDER_LINE_ALL] PRIMARY KEY CLUSTERED ([ORDER_NO] ASC, [LINE_NO] ASC, [RELEASE_NO] ASC)
);

