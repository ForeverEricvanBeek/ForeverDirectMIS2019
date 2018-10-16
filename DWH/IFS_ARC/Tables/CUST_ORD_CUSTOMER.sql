﻿CREATE TABLE [IFS_ARC].[CUST_ORD_CUSTOMER] (
    [CUSTOMER_NO]                   NVARCHAR (20)   NOT NULL,
    [CUSTOMER_NO_PAY]               NVARCHAR (20)   NULL,
    [CUST_GRP]                      NVARCHAR (10)   NULL,
    [CUST_PRICE_GROUP_ID]           NVARCHAR (10)   NULL,
    [SALESMAN_CODE]                 NVARCHAR (20)   NULL,
    [MARKET_CODE]                   NVARCHAR (10)   NULL,
    [PRINT_CONTROL_CODE]            NVARCHAR (10)   NULL,
    [BONUS_CLASS]                   NVARCHAR (4)    NULL,
    [BONUS_RATE]                    NUMERIC (18, 2) NULL,
    [BONUS_SALES]                   INT             NULL,
    [CR_STOP]                       NVARCHAR (4000) NULL,
    [CR_STOP_DB]                    NVARCHAR (1)    NULL,
    [CUST_REF]                      NVARCHAR (25)   NULL,
    [CYCLE_PERIOD]                  INT             NULL,
    [DATE_DEL]                      DATETIME2 (7)   NULL,
    [INVOICE_SORT]                  NVARCHAR (4000) NULL,
    [INVOICE_SORT_DB]               NVARCHAR (2)    NULL,
    [LAST_IVC_DATE]                 DATETIME2 (7)   NULL,
    [NOTE_TEXT]                     NVARCHAR (2000) NULL,
    [ORDER_CONF_FLAG]               NVARCHAR (4000) NULL,
    [ORDER_CONF_FLAG_DB]            NVARCHAR (1)    NULL,
    [PACK_LIST_FLAG]                NVARCHAR (4000) NULL,
    [PACK_LIST_FLAG_DB]             NVARCHAR (1)    NULL,
    [ACQUISITION_SITE]              NVARCHAR (5)    NULL,
    [CATEGORY]                      NVARCHAR (4000) NULL,
    [CATEGORY_DB]                   NVARCHAR (2)    NULL,
    [CURRENCY_CODE]                 NVARCHAR (3)    NULL,
    [ORDER_ID]                      NVARCHAR (3)    NULL,
    [NAME]                          NVARCHAR (4000) NULL,
    [EDI_AUTO_ORDER_APPROVAL]       NVARCHAR (4000) NULL,
    [EDI_AUTO_ORDER_APPROVAL_DB]    NVARCHAR (3)    NULL,
    [EDI_AUTHORIZE_CODE]            NVARCHAR (20)   NULL,
    [EDI_SITE]                      NVARCHAR (5)    NULL,
    [EDI_AUTO_APPROVAL_USER]        NVARCHAR (30)   NULL,
    [TEMPLATE_ID]                   NVARCHAR (12)   NULL,
    [DISCOUNT]                      INT             NULL,
    [DISCOUNT_TYPE]                 NVARCHAR (25)   NULL,
    [MIN_SALES_AMOUNT]              INT             NULL,
    [NOTE_ID]                       INT             NULL,
    [TEMPLATE_CUSTOMER_DESC]        NVARCHAR (35)   NULL,
    [TEMPLATE_CUSTOMER]             NVARCHAR (4000) NULL,
    [TEMPLATE_CUSTOMER_DB]          NVARCHAR (20)   NULL,
    [QUICK_REGISTERED_CUSTOMER]     NVARCHAR (4000) NULL,
    [QUICK_REGISTERED_CUSTOMER_DB]  NVARCHAR (20)   NULL,
    [COMMISSION_RECEIVER]           NVARCHAR (4000) NULL,
    [COMMISSION_RECEIVER_DB]        NVARCHAR (20)   NULL,
    [CONFIGURATOR_CUSTOMER]         NVARCHAR (4000) NULL,
    [CONFIGURATOR_CUSTOMER_DB]      NVARCHAR (25)   NULL,
    [NO_DELNOTE_COPIES]             INT             NULL,
    [CUST_PART_ACQ_VAL_LEVEL]       NVARCHAR (4000) NULL,
    [CUST_PART_ACQ_VAL_LEVEL_DB]    NVARCHAR (20)   NULL,
    [CUST_PART_OWNER_TRANSFER]      NVARCHAR (4000) NULL,
    [CUST_PART_OWNER_TRANSFER_DB]   NVARCHAR (20)   NULL,
    [SUMMARIZED_SOURCE_LINES]       NVARCHAR (4000) NULL,
    [SUMMARIZED_SOURCE_LINES_DB]    NVARCHAR (20)   NULL,
    [SEND_CHANGE_MESSAGE]           NVARCHAR (4000) NULL,
    [SEND_CHANGE_MESSAGE_DB]        NVARCHAR (20)   NULL,
    [REPLICATE_DOC_TEXT]            NVARCHAR (4000) NULL,
    [REPLICATE_DOC_TEXT_DB]         NVARCHAR (20)   NULL,
    [FORWARD_AGENT_ID]              NVARCHAR (20)   NULL,
    [AUTO_DESPATCH_ADV_SEND]        NVARCHAR (1)    NULL,
    [MATCH_TYPE]                    NVARCHAR (4000) NULL,
    [MATCH_TYPE_DB]                 NVARCHAR (15)   NULL,
    [PRINT_AMOUNTS_INCL_TAX]        NVARCHAR (4000) NULL,
    [PRINT_AMOUNTS_INCL_TAX_DB]     NVARCHAR (20)   NULL,
    [CONFIRM_DELIVERIES]            NVARCHAR (4000) NULL,
    [CONFIRM_DELIVERIES_DB]         NVARCHAR (20)   NULL,
    [CHECK_SALES_GRP_DELIV_CONF]    NVARCHAR (4000) NULL,
    [CHECK_SALES_GRP_DELIV_CONF_DB] NVARCHAR (20)   NULL,
    [UPDATE_PRICE_FROM_SBI]         NVARCHAR (4000) NULL,
    [UPDATE_PRICE_FROM_SBI_DB]      NVARCHAR (20)   NULL,
    [REC_ADV_AUTO_MATCH_DIFF]       NVARCHAR (4000) NULL,
    [REC_ADV_AUTO_MATCH_DIFF_DB]    NVARCHAR (20)   NULL,
    [REC_ADV_AUTO_MATCHING]         NVARCHAR (4000) NULL,
    [REC_ADV_AUTO_MATCHING_DB]      NVARCHAR (20)   NULL,
    [REC_ADV_MATCHING_OPTION]       NVARCHAR (4000) NULL,
    [REC_ADV_MATCHING_OPTION_DB]    NVARCHAR (25)   NULL,
    [RECEIVING_ADVICE_TYPE]         NVARCHAR (4000) NULL,
    [RECEIVING_ADVICE_TYPE_DB]      NVARCHAR (30)   NULL,
    [SELF_BILLING_MATCH_OPTION]     NVARCHAR (4000) NULL,
    [SELF_BILLING_MATCH_OPTION_DB]  NVARCHAR (30)   NULL,
    [SBI_AUTO_APPROVAL_USER]        NVARCHAR (30)   NULL,
    [REC_ADV_AUTO_APPROVAL_USER]    NVARCHAR (30)   NULL,
    [ADV_INV_FULL_PAY]              NVARCHAR (4000) NULL,
    [ADV_INV_FULL_PAY_DB]           NVARCHAR (20)   NULL,
    [AUTOMATIC_ORDER_RELEASE]       NVARCHAR (4000) NULL,
    [AUTOMATIC_ORDER_RELEASE_DB]    NVARCHAR (20)   NULL,
    [CREDIT_CONTROL_GROUP_ID]       NVARCHAR (10)   NULL,
    [BACKORDER_OPTION]              NVARCHAR (4000) NULL,
    [BACKORDER_OPTION_DB]           NVARCHAR (40)   NULL,
    [PRIORITY]                      INT             NULL,
    [RECEIVE_PACK_SIZE_CHG]         NVARCHAR (4000) NULL,
    [RECEIVE_PACK_SIZE_CHG_DB]      NVARCHAR (20)   NULL,
    [SUMMARIZED_FREIGHT_CHARGES]    NVARCHAR (4000) NULL,
    [SUMMARIZED_FREIGHT_CHARGES_DB] NVARCHAR (20)   NULL,
    [SUMMARIZED_PACKSIZE_CHG]       NVARCHAR (4000) NULL,
    [SUMMARIZED_PACKSIZE_CHG_DB]    NVARCHAR (20)   NULL,
    [PRINT_DELIVERED_LINES]         NVARCHAR (4000) NULL,
    [PRINT_DELIVERED_LINES_DB]      NVARCHAR (5)    NULL,
    [OBJID]                         NVARCHAR (4000) NULL,
    [OBJVERSION]                    NVARCHAR (2000) NULL,
    [Eff_Date]                      DATE            NOT NULL,
    [End_Date]                      DATE            NULL,
    [ActInd]                        CHAR (1)        NULL,
    [IsDeleted]                     CHAR (1)        NULL,
    [BatchID]                       BIGINT          NULL,
    [ProcessLogID]                  BIGINT          NULL,
    CONSTRAINT [PK_CUST_ORD_CUSTOMER] PRIMARY KEY CLUSTERED ([CUSTOMER_NO] ASC, [Eff_Date] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];

