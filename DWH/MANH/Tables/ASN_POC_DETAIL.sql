﻿CREATE TABLE [MANH].[ASN_POC_DETAIL] (
    [ASN_POC_DETAIL_ID]            BIGINT          NOT NULL,
    [ASN_ID]                       BIGINT          NOT NULL,
    [TC_PURCHASE_ORDERS_ID]        NVARCHAR (50)   NULL,
    [PURCHASE_ORDERS_ID]           BIGINT          NULL,
    [SKU_ID]                       INT             NULL,
    [SKU_NAME]                     NVARCHAR (100)  NULL,
    [SKU_ATTR_1]                   NVARCHAR (10)   NULL,
    [SKU_ATTR_2]                   NVARCHAR (10)   NULL,
    [SKU_ATTR_3]                   NVARCHAR (10)   NULL,
    [SKU_ATTR_4]                   NVARCHAR (10)   NULL,
    [SKU_ATTR_5]                   NVARCHAR (10)   NULL,
    [BUSINESS_PARTNER_ID]          NVARCHAR (10)   NULL,
    [PACKAGE_TYPE_ID]              INT             NULL,
    [PACKAGE_TYPE_DESC]            NVARCHAR (50)   NULL,
    [PACKAGE_TYPE_INSTANCE]        NVARCHAR (50)   NULL,
    [EPC_TRACKING_RFID_VALUE]      NVARCHAR (32)   NULL,
    [ORDER_TYPE_DESC]              NVARCHAR (4)    NULL,
    [GTIN]                         NVARCHAR (25)   NULL,
    [SHIPPED_QTY]                  NUMERIC (13, 2) NULL,
    [STD_PACK_QTY]                 NUMERIC (13, 4) NULL,
    [STD_CASE_QTY]                 NUMERIC (9, 2)  NULL,
    [ASN_POC_DETAIL_STATUS]        SMALLINT        NOT NULL,
    [RECEIVED_QTY]                 NUMERIC (13, 2) NULL,
    [STD_SUB_PACK_QTY]             NUMERIC (13, 4) NULL,
    [LPN_PER_TIER]                 INT             NULL,
    [TIER_PER_PALLET]              INT             NULL,
    [MFG_PLNT]                     NVARCHAR (3)    NULL,
    [MFG_DATE]                     DATETIME2 (7)   NULL,
    [SHIP_BY_DATE]                 DATETIME2 (7)   NULL,
    [EXPIRE_DATE]                  DATETIME2 (7)   NULL,
    [INCUBATION_DATE]              DATETIME2 (7)   NULL,
    [EPC_REQ_ON_ALL_CASES]         NVARCHAR (1)    NULL,
    [WEIGHT_UOM_ID_BASE]           INT             NULL,
    [REGION_ID]                    INT             NULL,
    [IS_ASSOCIATED_TO_OUTBOUND]    SMALLINT        NOT NULL,
    [IS_CANCELLED]                 SMALLINT        NOT NULL,
    [IS_CLOSED]                    SMALLINT        NOT NULL,
    [INVN_TYPE]                    NVARCHAR (1)    NULL,
    [PROD_STAT]                    NVARCHAR (3)    NULL,
    [BATCH_NBR]                    NVARCHAR (15)   NULL,
    [CNTRY_OF_ORGN]                NVARCHAR (4)    NULL,
    [SHIPPED_LPN_COUNT]            INT             NULL,
    [RECEIVED_LPN_COUNT]           INT             NULL,
    [UNITS_ASSIGNED_TO_LPN]        INT             NULL,
    [PROC_IMMD_NEEDS]              NVARCHAR (1)    NULL,
    [QUALITY_CHECK_HOLD_UPON_RCPT] NVARCHAR (1)    NULL,
    [REFERENCE_ORDER_NBR]          NVARCHAR (12)   NULL,
    [ACTUAL_WEIGHT]                NUMERIC (13, 4) NULL,
    [ACTUAL_WEIGHT_PACK_COUNT]     NUMERIC (13, 4) NULL,
    [NBR_OF_PACK_FOR_CATCH_WT]     NUMERIC (13, 4) NULL,
    [PUTWY_TYPE]                   NVARCHAR (3)    NULL,
    [RETAIL_PRICE]                 NUMERIC (16, 4) NULL,
    [PRICE_TIX_AVAIL]              SMALLINT        NOT NULL,
    [CREATED_SOURCE_TYPE]          SMALLINT        NOT NULL,
    [CREATED_SOURCE]               NVARCHAR (25)   NULL,
    [CREATED_DTTM]                 DATETIME2 (7)   NOT NULL,
    [LAST_UPDATED_SOURCE_TYPE]     SMALLINT        NOT NULL,
    [LAST_UPDATED_SOURCE]          NVARCHAR (25)   NULL,
    [LAST_UPDATED_DTTM]            DATETIME2 (7)   NOT NULL,
    [HIBERNATE_VERSION]            BIGINT          NULL,
    [TC_COMPANY_ID]                INT             NOT NULL,
    [TC_PO_LINE_ID]                NVARCHAR (30)   NULL,
    [INVENTORY_SEGMENT_ID]         BIGINT          NULL,
    [PPACK_GRP_CODE]               NVARCHAR (2)    NULL,
    [CUT_NBR]                      NVARCHAR (12)   NULL,
    [QTY_CONV_FACTOR]              NUMERIC (17, 8) NOT NULL,
    [QTY_UOM_ID]                   BIGINT          NULL,
    [WEIGHT_UOM_ID]                INT             NULL,
    [QTY_UOM_ID_BASE]              INT             NULL,
    [TC_ORDER_ID]                  NVARCHAR (50)   NULL,
    [ORDER_ID]                     BIGINT          NULL,
    [TC_ORDER_LINE_ID]             NVARCHAR (30)   NULL,
    [ORDER_LINE_ITEM_ID]           BIGINT          NULL,
    [SEQ_NBR]                      NVARCHAR (30)   NULL,
    [EXP_RECEIVE_CONDITION_CODE]   NVARCHAR (10)   NULL,
    [ORA_ROWSCN]                   BIGINT          NULL,
    [BatchID]                      BIGINT          NULL,
    [ProcessLogID]                 BIGINT          NULL,
    CONSTRAINT [PK_MANH_ASN_POC_DETAIL] PRIMARY KEY CLUSTERED ([ASN_ID] ASC, [ASN_POC_DETAIL_ID] ASC) ON [DWH_MANH]
) ON [DWH_MANH];



