﻿CREATE TABLE [IFS].[CUSTOMER_ORDER] (
    [ORDER_NO]                      NVARCHAR (12)   NOT NULL,
    [AUTHORIZE_CODE]                NVARCHAR (20)   NULL,
    [BILL_ADDR_NO]                  NVARCHAR (50)   NULL,
    [CONTRACT]                      NVARCHAR (5)    NULL,
    [COUNTRY_CODE]                  NVARCHAR (2)    NULL,
    [CURRENCY_CODE]                 NVARCHAR (3)    NULL,
    [CUSTOMER_NO]                   NVARCHAR (20)   NULL,
    [CUSTOMER_NO_PAY]               NVARCHAR (20)   NULL,
    [CUSTOMER_NO_PAY_ADDR_NO]       NVARCHAR (50)   NULL,
    [DELIVERY_TERMS]                NVARCHAR (3)    NULL,
    [DISTRICT_CODE]                 NVARCHAR (10)   NULL,
    [LANGUAGE_CODE]                 NVARCHAR (2)    NULL,
    [MARKET_CODE]                   NVARCHAR (10)   NULL,
    [NOTE_ID]                       INT             NULL,
    [ORDER_CODE]                    NVARCHAR (3)    NULL,
    [ORDER_ID]                      NVARCHAR (3)    NULL,
    [PAY_TERM_ID]                   NVARCHAR (200)  NULL,
    [PRE_ACCOUNTING_ID]             INT             NULL,
    [PRINT_CONTROL_CODE]            NVARCHAR (10)   NULL,
    [REGION_CODE]                   NVARCHAR (10)   NULL,
    [SALESMAN_CODE]                 NVARCHAR (20)   NULL,
    [SHIP_ADDR_NO]                  NVARCHAR (50)   NULL,
    [SHIP_VIA_CODE]                 NVARCHAR (3)    NULL,
    [ADDR_FLAG]                     NVARCHAR (200)  NULL,
    [ADDR_FLAG_DB]                  NVARCHAR (20)   NULL,
    [CALC_DISC_BONUS_FLAG]          NVARCHAR (200)  NULL,
    [CALC_DISC_BONUS_FLAG_DB]       NVARCHAR (20)   NULL,
    [CR_STOP]                       NVARCHAR (200)  NULL,
    [CR_STOP_DB]                    NVARCHAR (20)   NULL,
    [CUSTOMER_PO_NO]                NVARCHAR (50)   NULL,
    [CUST_REF]                      NVARCHAR (30)   NULL,
    [DATE_ENTERED]                  DATETIME2 (7)   NULL,
    [DELIVERY_LEADTIME]             INT             NULL,
    [LABEL_NOTE]                    NVARCHAR (50)   NULL,
    [NOTE_TEXT]                     NVARCHAR (2000) NULL,
    [ORDER_CONF]                    NVARCHAR (200)  NULL,
    [ORDER_CONF_DB]                 NVARCHAR (20)   NULL,
    [ORDER_CONF_FLAG]               NVARCHAR (200)  NULL,
    [ORDER_CONF_FLAG_DB]            NVARCHAR (20)   NULL,
    [PACK_LIST_FLAG]                NVARCHAR (200)  NULL,
    [PACK_LIST_FLAG_DB]             NVARCHAR (20)   NULL,
    [PICK_LIST_FLAG]                NVARCHAR (200)  NULL,
    [PICK_LIST_FLAG_DB]             NVARCHAR (20)   NULL,
    [VAT]                           NVARCHAR (200)  NULL,
    [VAT_DB]                        NVARCHAR (20)   NULL,
    [WANTED_DELIVERY_DATE]          DATETIME2 (7)   NULL,
    [INTERNAL_PO_NO]                NVARCHAR (12)   NULL,
    [ROUTE_ID]                      NVARCHAR (12)   NULL,
    [AGREEMENT_ID]                  NVARCHAR (10)   NULL,
    [FORWARD_AGENT_ID]              NVARCHAR (20)   NULL,
    [INTERNAL_DELIVERY_TYPE]        NVARCHAR (200)  NULL,
    [INTERNAL_DELIVERY_TYPE_DB]     NVARCHAR (20)   NULL,
    [EXTERNAL_REF]                  NVARCHAR (25)   NULL,
    [PROJECT_ID]                    NVARCHAR (10)   NULL,
    [STAGED_BILLING]                NVARCHAR (200)  NULL,
    [STAGED_BILLING_DB]             NVARCHAR (20)   NULL,
    [SM_CONNECTION]                 NVARCHAR (200)  NULL,
    [SM_CONNECTION_DB]              NVARCHAR (20)   NULL,
    [SCHEDULING_CONNECTION]         NVARCHAR (200)  NULL,
    [SCHEDULING_CONNECTION_DB]      NVARCHAR (20)   NULL,
    [PRIORITY]                      INT             NULL,
    [INTRASTAT_EXEMPT]              NVARCHAR (200)  NULL,
    [INTRASTAT_EXEMPT_DB]           NVARCHAR (20)   NULL,
    [ADDITIONAL_DISCOUNT]           INT             NULL,
    [PAY_TERM_BASE_DATE]            DATETIME2 (7)   NULL,
    [SUMMARIZED_SOURCE_LINES]       NVARCHAR (200)  NULL,
    [SUMMARIZED_SOURCE_LINES_DB]    NVARCHAR (20)   NULL,
    [CASE_ID]                       INT             NULL,
    [TASK_ID]                       INT             NULL,
    [CONFIRM_DELIVERIES]            NVARCHAR (200)  NULL,
    [CONFIRM_DELIVERIES_DB]         NVARCHAR (20)   NULL,
    [CHECK_SALES_GRP_DELIV_CONF]    NVARCHAR (200)  NULL,
    [CHECK_SALES_GRP_DELIV_CONF_DB] NVARCHAR (20)   NULL,
    [DELAY_COGS_TO_DELIV_CONF]      NVARCHAR (200)  NULL,
    [DELAY_COGS_TO_DELIV_CONF_DB]   NVARCHAR (20)   NULL,
    [CANCEL_REASON]                 NVARCHAR (10)   NULL,
    [JINSUI_INVOICE]                NVARCHAR (200)  NULL,
    [JINSUI_INVOICE_DB]             NVARCHAR (20)   NULL,
    [ADV_PAY_BLOCK]                 NVARCHAR (200)  NULL,
    [ADV_PAY_BLOCK_DB]              NVARCHAR (20)   NULL,
    [BLOCKED_REASON]                NVARCHAR (30)   NULL,
    [SALES_CONTRACT_NO]             NVARCHAR (15)   NULL,
    [CONTRACT_REV_SEQ]              INT             NULL,
    [CONTRACT_LINE_NO]              INT             NULL,
    [CONTRACT_ITEM_NO]              INT             NULL,
    [DEFAULT_CHARGES]               NVARCHAR (50)   NULL,
    [RELEASED_FROM_CREDIT_CHECK]    NVARCHAR (200)  NULL,
    [RELEASED_FROM_CREDIT_CHECK_DB] NVARCHAR (20)   NULL,
    [PROPOSED_PREPAYMENT_AMOUNT]    INT             NULL,
    [PREPAYMENT_APPROVED]           NVARCHAR (5)    NULL,
    [PREPAYMENT_APPROVED_DB]        NVARCHAR (20)   NULL,
    [BACKORDER_OPTION]              NVARCHAR (200)  NULL,
    [BACKORDER_OPTION_DB]           NVARCHAR (20)   NULL,
    [EXPECTED_PREPAYMENT_DATE]      DATETIME2 (7)   NULL,
    [SHIPMENT_CREATION]             NVARCHAR (200)  NULL,
    [SHIPMENT_CREATION_DB]          NVARCHAR (25)   NULL,
    [USE_PRE_SHIP_DEL_NOTE]         NVARCHAR (200)  NULL,
    [USE_PRE_SHIP_DEL_NOTE_DB]      NVARCHAR (20)   NULL,
    [PICK_INVENTORY_TYPE]           NVARCHAR (200)  NULL,
    [PICK_INVENTORY_TYPE_DB]        NVARCHAR (7)    NULL,
    [VAT_NO]                        NVARCHAR (50)   NULL,
    [TEXT_ID$]                      NVARCHAR (50)   NULL,
    [CLASSIFICATION_STANDARD]       NVARCHAR (25)   NULL,
    [MSG_SEQUENCE_NO]               INT             NULL,
    [MSG_VERSION_NO]                INT             NULL,
    [CURRENCY_RATE_TYPE]            NVARCHAR (10)   NULL,
    [DEL_TERMS_LOCATION]            NVARCHAR (100)  NULL,
    [INTERNAL_REF]                  NVARCHAR (30)   NULL,
    [INTERNAL_PO_LABEL_NOTE]        NVARCHAR (50)   NULL,
    [REBATE_CUSTOMER]               NVARCHAR (20)   NULL,
    [ZONE_DEFINITION_ID]            NVARCHAR (15)   NULL,
    [ZONE_ID]                       NVARCHAR (15)   NULL,
    [FREIGHT_PRICE_LIST_NO]         NVARCHAR (10)   NULL,
    [SUMMARIZED_FREIGHT_CHARGES]    NVARCHAR (200)  NULL,
    [SUMMARIZED_FREIGHT_CHARGES_DB] NVARCHAR (20)   NULL,
    [SUMMARIZED_PACKSIZE_CHG]       NVARCHAR (200)  NULL,
    [SUMMARIZED_PACKSIZE_CHG_DB]    NVARCHAR (20)   NULL,
    [APPLY_FIX_DELIV_FREIGHT]       NVARCHAR (200)  NULL,
    [APPLY_FIX_DELIV_FREIGHT_DB]    NVARCHAR (20)   NULL,
    [FIX_DELIV_FREIGHT]             INT             NULL,
    [PRINT_DELIVERED_LINES]         NVARCHAR (200)  NULL,
    [PRINT_DELIVERED_LINES_DB]      NVARCHAR (20)   NULL,
    [COMPANY]                       NVARCHAR (20)   NULL,
    [C_DELIVERY_COUNTRY]            NVARCHAR (2)    NULL,
    [C_PHONE]                       NVARCHAR (200)  NULL,
    [C_EMAIL]                       NVARCHAR (200)  NULL,
    [STATE]                         NVARCHAR (4000) NULL,
    [OBJID]                         NVARCHAR (100)  NULL,
    [OBJVERSION]                    BIGINT          NULL,
    [Eff_Date]                      DATE            NOT NULL,
    [End_Date]                      DATE            NULL,
    [ActInd]                        CHAR (1)        NULL,
    [IsDeleted]                     CHAR (1)        NULL,
    [BatchID]                       BIGINT          NULL,
    [ProcessLogID]                  BIGINT          NULL,
    CONSTRAINT [PK_CUSTOMER_ORDER] PRIMARY KEY CLUSTERED ([ORDER_NO] ASC, [Eff_Date] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_IFS]
) ON [DWH_IFS];











