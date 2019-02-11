﻿CREATE TABLE [MANH_ARC].[ORDER_LINE_ITEM] (
    [ORDER_ID]                    BIGINT          NOT NULL,
    [LINE_ITEM_ID]                BIGINT          NOT NULL,
    [PARENT_LINE_ITEM_ID]         BIGINT          NULL,
    [TC_COMPANY_ID]               INT             NULL,
    [COMMODITY_CLASS]             NVARCHAR (10)   NULL,
    [REF_FIELD1]                  NVARCHAR (25)   NULL,
    [REF_FIELD2]                  NVARCHAR (25)   NULL,
    [REF_FIELD3]                  NVARCHAR (25)   NULL,
    [EXT_SYS_LINE_ITEM_ID]        NVARCHAR (25)   NULL,
    [MASTER_ORDER_ID]             BIGINT          NULL,
    [MO_LINE_ITEM_ID]             BIGINT          NULL,
    [IS_HAZMAT]                   SMALLINT        NOT NULL,
    [IS_STACKABLE]                SMALLINT        NOT NULL,
    [HAS_ERRORS]                  SMALLINT        NOT NULL,
    [ORIG_BUDG_COST]              NUMERIC (13, 4) NULL,
    [BUDG_COST_CURRENCY_CODE]     NVARCHAR (3)    NULL,
    [BUDG_COST]                   NUMERIC (13, 4) NULL,
    [ACTUAL_COST_CURRENCY_CODE]   NVARCHAR (3)    NULL,
    [TOTAL_MONETARY_VALUE]        NUMERIC (13, 4) NULL,
    [UNIT_MONETARY_VALUE]         NUMERIC (13, 4) NULL,
    [UNIT_TAX_AMOUNT]             NUMERIC (16, 4) NULL,
    [RTS_ID]                      BIGINT          NULL,
    [RTS_LINE_ITEM_ID]            BIGINT          NULL,
    [STD_PACK_QTY]                NUMERIC (13, 4) NULL,
    [PRODUCT_CLASS_ID]            INT             NULL,
    [PROTECTION_LEVEL_ID]         INT             NULL,
    [PACKAGE_TYPE_ID]             INT             NULL,
    [COMMODITY_CODE_ID]           BIGINT          NULL,
    [MV_SIZE_UOM_ID]              INT             NULL,
    [QTY_UOM_ID_BASE]             INT             NULL,
    [MV_CURRENCY_CODE]            NVARCHAR (3)    NULL,
    [SHIPPED_QTY]                 NUMERIC (13, 4) NULL,
    [RECEIVED_QTY]                NUMERIC (13, 4) NULL,
    [PRIORITY]                    BIGINT          NULL,
    [MERCHANDIZING_DEPARTMENT_ID] BIGINT          NULL,
    [UN_NUMBER_ID]                BIGINT          NULL,
    [PICKUP_REFERENCE_NUMBER]     NVARCHAR (30)   NULL,
    [DELIVERY_REFERENCE_NUMBER]   NVARCHAR (30)   NULL,
    [CNTRY_OF_ORGN]               NVARCHAR (4)    NULL,
    [PROD_STAT]                   NVARCHAR (3)    NULL,
    [STACK_RANK]                  SMALLINT        NULL,
    [STACK_LENGTH_VALUE]          NUMERIC (16, 4) NULL,
    [STACK_LENGTH_STANDARD_UOM]   SMALLINT        NULL,
    [STACK_WIDTH_VALUE]           NUMERIC (16, 4) NULL,
    [STACK_WIDTH_STANDARD_UOM]    SMALLINT        NULL,
    [STACK_HEIGHT_VALUE]          NUMERIC (16, 4) NULL,
    [STACK_HEIGHT_STANDARD_UOM]   SMALLINT        NULL,
    [STACK_DIAMETER_VALUE]        NUMERIC (16, 4) NULL,
    [STACK_DIAMETER_STANDARD_UOM] SMALLINT        NULL,
    [CREATED_SOURCE_TYPE]         SMALLINT        NOT NULL,
    [CREATED_SOURCE]              NVARCHAR (25)   NULL,
    [CREATED_DTTM]                DATETIME2 (7)   NOT NULL,
    [LAST_UPDATED_SOURCE_TYPE]    SMALLINT        NOT NULL,
    [LAST_UPDATED_SOURCE]         NVARCHAR (25)   NULL,
    [LAST_UPDATED_DTTM]           DATETIME2 (7)   NOT NULL,
    [HIBERNATE_VERSION]           FLOAT (53)      NULL,
    [CUBE_MULTIPLE_QTY]           NUMERIC (13, 4) NULL,
    [DO_DTL_STATUS]               SMALLINT        NULL,
    [INTERNAL_ORDER_SEQ_NBR]      INT             NULL,
    [IS_EMERGENCY]                NVARCHAR (16)   NULL,
    [LPN_SIZE]                    NUMERIC (13, 4) NULL,
    [MANUFACTURING_DTTM]          DATETIME2 (7)   NULL,
    [ORDER_LINE_ID]               BIGINT          NULL,
    [PACK_RATE]                   NUMERIC (13, 4) NULL,
    [ALLOCATED_QTY]               NUMERIC (13, 4) NOT NULL,
    [PLANNED_SHIP_DATE]           DATETIME2 (7)   NULL,
    [PPACK_QTY]                   NUMERIC (13, 4) NOT NULL,
    [STD_BUNDLE_QTY]              NUMERIC (13, 4) NULL,
    [STD_LPN_QTY]                 NUMERIC (13, 4) NULL,
    [STD_LPN_VOL]                 NUMERIC (13, 4) NULL,
    [STD_LPN_WT]                  NUMERIC (13, 4) NULL,
    [UNIT_COST]                   NUMERIC (16, 4) NULL,
    [UNIT_PRICE_AMOUNT]           NUMERIC (13, 4) NULL,
    [UNIT_VOL]                    NUMERIC (13, 4) NULL,
    [UNIT_WT]                     NUMERIC (13, 4) NULL,
    [USER_CANCELED_QTY]           NUMERIC (13, 4) NULL,
    [WAVE_PROC_TYPE]              SMALLINT        NULL,
    [DELIVERY_END_DTTM]           DATETIME2 (7)   NULL,
    [DELIVERY_START_DTTM]         DATETIME2 (7)   NULL,
    [EVENT_CODE]                  NVARCHAR (10)   NULL,
    [REASON_CODE]                 NVARCHAR (2)    NULL,
    [EXP_INFO_CODE]               NVARCHAR (2)    NULL,
    [PARTL_FILL]                  NVARCHAR (1)    NULL,
    [LINE_TYPE]                   NVARCHAR (1)    NULL,
    [REPL_PROC_TYPE]              SMALLINT        NULL,
    [ORDER_QTY]                   NUMERIC (13, 4) NULL,
    [ORIG_ORDER_QTY]              NUMERIC (13, 4) NULL,
    [RTL_TO_BE_DISTROED_QTY]      NUMERIC (9, 2)  NULL,
    [PRICE]                       NUMERIC (13, 4) NULL,
    [RETAIL_PRICE]                NUMERIC (16, 4) NULL,
    [UNITS_PAKD]                  NUMERIC (13, 4) NULL,
    [MINOR_ORDER_NBR]             NVARCHAR (10)   NULL,
    [ITEM_ID]                     INT             NULL,
    [TC_ORDER_LINE_ID]            NVARCHAR (30)   NOT NULL,
    [ACTUAL_SHIPPED_DTTM]         DATETIME2 (7)   NULL,
    [QTY_UOM_ID]                  BIGINT          NULL,
    [PICKUP_END_DTTM]             DATETIME2 (7)   NULL,
    [PURCHASE_ORDER_LINE_NUMBER]  NVARCHAR (30)   NULL,
    [PICKUP_START_DTTM]           DATETIME2 (7)   NULL,
    [REFERENCE_LINE_ITEM_ID]      BIGINT          NULL,
    [REFERENCE_ORDER_ID]          BIGINT          NULL,
    [REPL_WAVE_RUN]               NVARCHAR (1)    NULL,
    [STD_PALLET_QTY]              NUMERIC (13, 4) NULL,
    [STD_SUB_PACK_QTY]            NUMERIC (13, 4) NULL,
    [STORE_DEPT]                  NVARCHAR (12)   NULL,
    [ALLOC_TYPE]                  NVARCHAR (3)    NULL,
    [BATCH_NBR]                   NVARCHAR (15)   NULL,
    [BATCH_REQUIREMENT_TYPE]      NVARCHAR (4)    NULL,
    [CHUTE_ASSIGN_TYPE]           NVARCHAR (3)    NULL,
    [CUSTOM_TAG]                  NVARCHAR (8)    NULL,
    [CUSTOMER_ITEM]               NVARCHAR (30)   NULL,
    [INTERNAL_ORDER_ID]           NVARCHAR (30)   NULL,
    [INVN_TYPE]                   NVARCHAR (1)    NULL,
    [ITEM_ATTR_1]                 NVARCHAR (10)   NULL,
    [ITEM_ATTR_2]                 NVARCHAR (10)   NULL,
    [ITEM_ATTR_3]                 NVARCHAR (10)   NULL,
    [ITEM_ATTR_4]                 NVARCHAR (10)   NULL,
    [ITEM_ATTR_5]                 NVARCHAR (10)   NULL,
    [LPN_BRK_ATTRIB]              NVARCHAR (3)    NULL,
    [MERCH_GRP]                   NVARCHAR (3)    NULL,
    [MERCH_TYPE]                  NVARCHAR (3)    NULL,
    [PACK_ZONE]                   NVARCHAR (4)    NULL,
    [PALLET_TYPE]                 NVARCHAR (12)   NULL,
    [PICK_LOCN_ASSIGN_TYPE]       NVARCHAR (3)    NULL,
    [PICK_LOCN_ID]                NVARCHAR (10)   NULL,
    [PPACK_GRP_CODE]              NVARCHAR (2)    NULL,
    [PRICE_TKT_TYPE]              NVARCHAR (3)    NULL,
    [SERIAL_NUMBER_REQUIRED_FLAG] NVARCHAR (1)    NULL,
    [SKU_GTIN]                    NVARCHAR (25)   NULL,
    [SKU_SUB_CODE_ID]             NVARCHAR (3)    NULL,
    [SKU_SUB_CODE_VALUE]          NVARCHAR (20)   NULL,
    [VAS_PROCESS_TYPE]            NVARCHAR (4)    NULL,
    [SUBSTITUTED_PARENT_LINE_ID]  INT             NULL,
    [IS_CANCELLED]                NVARCHAR (1)    NULL,
    [ITEM_NAME]                   NVARCHAR (100)  NULL,
    [ALLOC_LINE_ID]               INT             NULL,
    [ALLOCATION_SOURCE_ID]        NVARCHAR (50)   NULL,
    [ALLOCATION_SOURCE_LINE_ID]   NVARCHAR (150)  NULL,
    [ALLOCATION_SOURCE]           SMALLINT        NULL,
    [SHELF_DAYS]                  INT             NULL,
    [FULFILLMENT_TYPE]            NVARCHAR (1)    NULL,
    [WAVE_NBR]                    NVARCHAR (12)   NULL,
    [SHIP_WAVE_NBR]               NVARCHAR (12)   NULL,
    [REPL_WAVE_NBR]               NVARCHAR (12)   NULL,
    [SINGLE_UNIT_FLAG]            NVARCHAR (1)    NULL,
    [ACTUAL_COST]                 NUMERIC (13, 4) NULL,
    [QTY_CONV_FACTOR]             NUMERIC (17, 8) NOT NULL,
    [PLANNED_WEIGHT]              NUMERIC (13, 4) NULL,
    [RECEIVED_WEIGHT]             NUMERIC (13, 4) NULL,
    [SHIPPED_WEIGHT]              NUMERIC (13, 4) NULL,
    [WEIGHT_UOM_ID_BASE]          INT             NULL,
    [WEIGHT_UOM_ID]               INT             NULL,
    [PLANNED_VOLUME]              NUMERIC (13, 4) NULL,
    [RECEIVED_VOLUME]             NUMERIC (13, 4) NULL,
    [SHIPPED_VOLUME]              NUMERIC (13, 4) NULL,
    [VOLUME_UOM_ID_BASE]          INT             NULL,
    [VOLUME_UOM_ID]               INT             NULL,
    [SIZE1_UOM_ID]                INT             NULL,
    [SIZE1_VALUE]                 NUMERIC (13, 4) NULL,
    [RECEIVED_SIZE1]              NUMERIC (13, 4) NULL,
    [SHIPPED_SIZE1]               NUMERIC (13, 4) NULL,
    [SIZE2_UOM_ID]                INT             NULL,
    [SIZE2_VALUE]                 NUMERIC (13, 4) NULL,
    [RECEIVED_SIZE2]              NUMERIC (13, 4) NULL,
    [SHIPPED_SIZE2]               NUMERIC (13, 4) NULL,
    [LPN_TYPE]                    NVARCHAR (3)    NULL,
    [ORDER_CONSOL_ATTR]           NVARCHAR (3)    NULL,
    [SKU_BREAK_ATTR]              NVARCHAR (15)   NULL,
    [PURCHASE_ORDER_NUMBER]       NVARCHAR (50)   NULL,
    [EXT_PURCHASE_ORDER]          NVARCHAR (50)   NULL,
    [CRITCL_DIM_1]                NUMERIC (7, 2)  NULL,
    [CRITCL_DIM_2]                NUMERIC (7, 2)  NULL,
    [CRITCL_DIM_3]                NUMERIC (7, 2)  NULL,
    [ASSORT_NBR]                  NVARCHAR (12)   NULL,
    [DESCRIPTION]                 NVARCHAR (65)   NULL,
    [ORIGINAL_ORDERED_ITEM_ID]    INT             NULL,
    [SUBSTITUTION_TYPE]           NVARCHAR (50)   NULL,
    [Eff_Date]                    DATE            NOT NULL,
    [End_Date]                    DATE            NULL,
    [ActInd]                      CHAR (1)        NULL,
    [IsDeleted]                   CHAR (1)        NULL,
    [BatchID]                     BIGINT          NULL,
    [ProcessLogID]                BIGINT          NULL,
    CONSTRAINT [PK_MANH_ORDER_LINE_ITEM] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [LINE_ITEM_ID] ASC, [ORDER_ID] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];





