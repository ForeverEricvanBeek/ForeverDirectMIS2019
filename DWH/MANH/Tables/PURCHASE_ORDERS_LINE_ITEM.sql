﻿CREATE TABLE [MANH].[PURCHASE_ORDERS_LINE_ITEM] (
    [PURCHASE_ORDERS_ID]            INT             NOT NULL,
    [PURCHASE_ORDERS_LINE_ITEM_ID]  INT             NOT NULL,
    [TC_COMPANY_ID]                 INT             NULL,
    [BUSINESS_PARTNER_ID]           NVARCHAR (10)   NULL,
    [EXT_SYS_LINE_ITEM_ID]          NVARCHAR (25)   NULL,
    [DESCRIPTION]                   NVARCHAR (100)  NULL,
    [O_FACILITY_ID]                 INT             NULL,
    [O_FACILITY_ALIAS_ID]           NVARCHAR (16)   NULL,
    [D_FACILITY_ID]                 INT             NULL,
    [D_FACILITY_ALIAS_ID]           NVARCHAR (16)   NULL,
    [D_NAME]                        NVARCHAR (50)   NULL,
    [D_LAST_NAME]                   NVARCHAR (40)   NULL,
    [D_ADDRESS_1]                   NVARCHAR (75)   NULL,
    [D_ADDRESS_2]                   NVARCHAR (75)   NULL,
    [D_ADDRESS_3]                   NVARCHAR (75)   NULL,
    [D_CITY]                        NVARCHAR (40)   NULL,
    [D_STATE_PROV]                  NVARCHAR (3)    NULL,
    [D_POSTAL_CODE]                 NVARCHAR (10)   NULL,
    [D_COUNTY]                      NVARCHAR (40)   NULL,
    [D_COUNTRY_CODE]                NVARCHAR (2)    NULL,
    [D_PHONE_NUMBER]                NVARCHAR (32)   NULL,
    [D_FAX_NUMBER]                  NVARCHAR (20)   NULL,
    [D_EMAIL]                       NVARCHAR (256)  NULL,
    [BILL_FACILITY_ALIAS_ID]        NVARCHAR (16)   NULL,
    [BILL_FACILITY_ID]              INT             NULL,
    [BILL_TO_ADDRESS_1]             NVARCHAR (75)   NULL,
    [BILL_TO_ADDRESS_2]             NVARCHAR (75)   NULL,
    [BILL_TO_ADDRESS_3]             NVARCHAR (75)   NULL,
    [BILL_TO_CITY]                  NVARCHAR (50)   NULL,
    [BILL_TO_STATE_PROV]            NVARCHAR (3)    NULL,
    [BILL_TO_COUNTY]                NVARCHAR (50)   NULL,
    [BILL_TO_POSTAL_CODE]           NVARCHAR (10)   NULL,
    [BILL_TO_COUNTRY_CODE]          NVARCHAR (2)    NULL,
    [BILL_TO_PHONE_NUMBER]          NVARCHAR (32)   NULL,
    [BILL_TO_FAX_NUMBER]            NVARCHAR (32)   NULL,
    [BILL_TO_EMAIL]                 NVARCHAR (256)  NULL,
    [STORE_FACILITY_ALIAS_ID]       NVARCHAR (16)   NULL,
    [STORE_FACILITY_ID]             INT             NULL,
    [SKU_ID]                        INT             NULL,
    [SKU]                           NVARCHAR (100)  NULL,
    [SKU_GTIN]                      NVARCHAR (25)   NULL,
    [SKU_SUB_CODE_ID]               INT             NULL,
    [SKU_SUB_CODE_VALUE]            NVARCHAR (50)   NULL,
    [SKU_ATTR_1]                    NVARCHAR (10)   NULL,
    [SKU_ATTR_2]                    NVARCHAR (10)   NULL,
    [SKU_ATTR_3]                    NVARCHAR (10)   NULL,
    [SKU_ATTR_4]                    NVARCHAR (10)   NULL,
    [SKU_ATTR_5]                    NVARCHAR (10)   NULL,
    [ORIG_BUDG_COST]                DECIMAL (13, 4) NULL,
    [MV_CURRENCY_CODE]              NVARCHAR (3)    NULL,
    [TOTAL_MONETARY_VALUE]          DECIMAL (13, 4) NULL,
    [UNIT_MONETARY_VALUE]           DECIMAL (13, 4) NULL,
    [UNIT_TAX_AMOUNT]               DECIMAL (16, 4) NULL,
    [COMMODITY_CODE_ID]             INT             NULL,
    [UN_NUMBER_ID]                  INT             NULL,
    [EPC_TRACKING_RFID_VALUE]       NVARCHAR (32)   NULL,
    [PROD_SCHED_REF_NUMBER]         NVARCHAR (30)   NULL,
    [PICKUP_REFERENCE_NUMBER]       NVARCHAR (30)   NULL,
    [DELIVERY_REFERENCE_NUMBER]     NVARCHAR (30)   NULL,
    [PROTECTION_LEVEL_ID]           INT             NULL,
    [PACKAGE_TYPE_ID]               INT             NULL,
    [PRODUCT_CLASS_ID]              INT             NULL,
    [DSG_SERVICE_LEVEL_ID]          INT             NULL,
    [TOTAL_SIZE_ON_ORDERS]          DECIMAL (13, 4) NULL,
    [STD_INBD_LPN_QTY]              DECIMAL (13, 4) NULL,
    [ALLOCATED_QTY]                 DECIMAL (13, 4) NULL,
    [RELEASED_QTY]                  DECIMAL (13, 4) NULL,
    [CANCELLED_QTY]                 DECIMAL (13, 4) NULL,
    [PPACK_QTY]                     DECIMAL (13, 4) NULL,
    [STD_PACK_QTY]                  DECIMAL (13, 4) NULL,
    [STD_LPN_QTY]                   DECIMAL (13, 4) NULL,
    [STD_SUB_PACK_QTY]              DECIMAL (13, 4) NULL,
    [STD_BUNDL_QTY]                 DECIMAL (13, 4) NULL,
    [STD_PLT_QTY]                   DECIMAL (13, 4) NULL,
    [DELIVERY_TZ]                   INT             NOT NULL,
    [PICKUP_TZ]                     INT             NOT NULL,
    [PICKUP_START_DTTM]             DATETIME2 (7)   NULL,
    [PICKUP_END_DTTM]               DATETIME2 (7)   NULL,
    [DELIVERY_START_DTTM]           DATETIME2 (7)   NULL,
    [DELIVERY_END_DTTM]             DATETIME2 (7)   NULL,
    [REQ_DLVR_DTTM]                 DATETIME2 (7)   NULL,
    [MUST_DLVR_DTTM]                DATETIME2 (7)   NULL,
    [COMM_DLVR_DTTM]                DATETIME2 (7)   NULL,
    [COMM_SHIP_DTTM]                DATETIME2 (7)   NULL,
    [PROMISED_DLVR_DTTM]            DATETIME2 (7)   NULL,
    [SHIP_BY_DATE]                  DATETIME2 (7)   NULL,
    [IS_READY_TO_SHIP]              INT             NOT NULL,
    [IS_HAZMAT]                     INT             NOT NULL,
    [IS_CANCELLED]                  INT             NOT NULL,
    [IS_CLOSED]                     INT             NOT NULL,
    [IS_BONDED]                     INT             NOT NULL,
    [IS_DELETED]                    INT             NOT NULL,
    [HAS_ERRORS]                    INT             NOT NULL,
    [IS_FLOWTHROU]                  INT             NOT NULL,
    [IS_NEVER_OUT]                  INT             NOT NULL,
    [IS_QUANTITY_LOCKED]            INT             NOT NULL,
    [IS_VARIABLE_WEIGHT]            INT             NOT NULL,
    [HAS_ROUTING_REQUEST]           INT             NOT NULL,
    [ALLOW_SUBSTITUTION]            INT             NOT NULL,
    [EXPIRE_DATE_REQD]              INT             NOT NULL,
    [APPLY_PROMOTIONAL]             INT             NOT NULL,
    [PRE_PACK_FLAG]                 INT             NOT NULL,
    [PROCESS_FLAG]                  INT             NOT NULL,
    [ON_HOLD]                       INT             NOT NULL,
    [IS_ASSOCIATED_TO_OUTBOUND]     INT             NOT NULL,
    [MV_SIZE_UOM_ID]                INT             NULL,
    [QTY_UOM_ID_BASE]               INT             NULL,
    [SHIPPED_QTY]                   DECIMAL (13, 4) NULL,
    [RECEIVED_QTY]                  DECIMAL (13, 4) NULL,
    [INVN_TYPE]                     NVARCHAR (1)    NULL,
    [PROD_STAT]                     NVARCHAR (3)    NULL,
    [BATCH_NBR]                     NVARCHAR (15)   NULL,
    [CNTRY_OF_ORGN]                 NVARCHAR (4)    NULL,
    [PPACK_GRP_CODE]                NVARCHAR (8)    NULL,
    [ASSORT_NBR]                    NVARCHAR (12)   NULL,
    [MERCHANDIZING_DEPARTMENT_ID]   INT             NULL,
    [MERCH_TYPE]                    NVARCHAR (3)    NULL,
    [MERCH_GRP]                     NVARCHAR (3)    NULL,
    [STORE_DEPT]                    NVARCHAR (3)    NULL,
    [SHELF_DAYS]                    INT             NULL,
    [FRT_CLASS]                     NVARCHAR (5)    NULL,
    [GROUP_ID]                      INT             NULL,
    [SUB_GROUP_ID]                  INT             NULL,
    [ALLOC_TMPL_ID]                 INT             NULL,
    [RELEASE_TMPL_ID]               INT             NULL,
    [WORKFLOW_ID]                   INT             NULL,
    [VARIANT_VALUE]                 NVARCHAR (20)   NULL,
    [PROCESS_TYPE]                  NVARCHAR (20)   NULL,
    [PRIORITY]                      INT             NULL,
    [STD_INBD_LPN_VOL]              DECIMAL (13, 4) NULL,
    [STD_INBD_LPN_WT]               DECIMAL (13, 4) NULL,
    [OUTBD_LPN_BRK_ATTRIB]          NVARCHAR (5)    NULL,
    [DOM_ORDER_LINE_STATUS]         INT             NULL,
    [EFFECTIVE_RANK]                NVARCHAR (100)  NULL,
    [ORIG_ORD_LINE_NBR]             INT             NULL,
    [SO_LN_FULFILL_OPTION]          INT             NULL,
    [SUPPLY_ASN_DTL_ID]             INT             NULL,
    [SUPPLY_ASN_ID]                 NVARCHAR (50)   NULL,
    [SUPPLY_PO_ID]                  NVARCHAR (50)   NULL,
    [CREATED_SOURCE_TYPE]           INT             NOT NULL,
    [CREATED_SOURCE]                NVARCHAR (25)   NULL,
    [CREATED_DTTM]                  DATETIME2 (7)   NOT NULL,
    [LAST_UPDATED_SOURCE_TYPE]      INT             NOT NULL,
    [LAST_UPDATED_SOURCE]           NVARCHAR (25)   NULL,
    [LAST_UPDATED_DTTM]             DATETIME2 (7)   NOT NULL,
    [ACTUAL_COST]                   DECIMAL (13, 4) NULL,
    [ACTUAL_CURRENCY_CODE]          NVARCHAR (3)    NULL,
    [BUDGETED_COST]                 DECIMAL (13, 4) NULL,
    [BUDGETED_COST_CURRENCY_CODE]   NVARCHAR (3)    NULL,
    [DSG_MOT_ID]                    INT             NULL,
    [EXPIRE_DTTM]                   DATETIME2 (7)   NULL,
    [IS_LOCKED]                     INT             NOT NULL,
    [INBD_LPN_ID]                   INT             NULL,
    [INBD_LPNS_RCVD]                INT             NULL,
    [NET_NEEDS]                     DECIMAL (13, 4) NULL,
    [OUTBD_LPN_EPC_TYPE]            INT             NULL,
    [OUTBD_LPN_SIZE]                NVARCHAR (1)    NULL,
    [OUTBD_LPN_TYPE]                NVARCHAR (3)    NULL,
    [DSG_CARRIER_ID]                INT             NULL,
    [DSG_CARRIER_CODE]              NVARCHAR (8)    NULL,
    [LPN_SIZE]                      DECIMAL (16, 4) NULL,
    [ORDER_CONSOL_ATTR]             NVARCHAR (3)    NULL,
    [PROC_IMMD_NEEDS]               NVARCHAR (1)    NULL,
    [MFG_PLANT]                     NVARCHAR (3)    NULL,
    [MFG_DATE]                      DATETIME2 (7)   NULL,
    [PURCHASE_ORDERS_LINE_STATUS]   INT             NULL,
    [HIBERNATE_VERSION]             INT             NULL,
    [STACK_LENGTH_VALUE]            DECIMAL (16, 4) NULL,
    [STACK_LENGTH_STANDARD_UOM]     INT             NULL,
    [STACK_WIDTH_VALUE]             DECIMAL (16, 4) NULL,
    [STACK_WIDTH_STANDARD_UOM]      INT             NULL,
    [STACK_HEIGHT_VALUE]            DECIMAL (16, 4) NULL,
    [STACK_HEIGHT_STANDARD_UOM]     INT             NULL,
    [STACK_DIAMETER_VALUE]          DECIMAL (16, 4) NULL,
    [STACK_DIAMETER_STANDARD_UOM]   INT             NULL,
    [COMMODITY_CLASS]               INT             NULL,
    [TC_PO_LINE_ID]                 NVARCHAR (30)   NULL,
    [DOM_SUB_SKU_ID]                INT             NULL,
    [SUPPLY_CONS_PO_ID]             NVARCHAR (30)   NULL,
    [SUPPLY_PO_LINE_ID]             NVARCHAR (30)   NULL,
    [PARENT_PO_LINE_ITEM_ID]        INT             NULL,
    [PARENT_TC_PO_LINE_ID]          NVARCHAR (30)   NULL,
    [ROOT_LINE_ITEM_ID]             INT             NULL,
    [ORDER_QTY]                     DECIMAL (13, 4) NULL,
    [WF_NODE_ID]                    INT             NULL,
    [WF_PROCESS_STATE]              INT             NULL,
    [ALLOC_FINALIZER]               NVARCHAR (20)   NULL,
    [QTY_UOM_ID]                    INT             NULL,
    [INVENTORY_SEGMENT_ID]          INT             NULL,
    [CUST_SKU]                      NVARCHAR (30)   NULL,
    [PLT_TYPE]                      NVARCHAR (3)    NULL,
    [PACKAGE_TYPE_INSTANCE]         NVARCHAR (100)  NULL,
    [ACCEPTED_DTTM]                 DATETIME2 (7)   NULL,
    [IS_DO_CREATED]                 INT             NOT NULL,
    [RECEIVED_WEIGHT]               DECIMAL (13, 4) NULL,
    [PACKED_SIZE_VALUE]             DECIMAL (13, 4) NULL,
    [PLANNED_WEIGHT]                DECIMAL (13, 4) NULL,
    [SHIPPED_WEIGHT]                DECIMAL (13, 4) NULL,
    [WEIGHT_UOM_ID_BASE]            INT             NULL,
    [WEIGHT_UOM_ID]                 INT             NULL,
    [PLANNED_VOLUME]                DECIMAL (13, 4) NULL,
    [RECEIVED_VOLUME]               DECIMAL (13, 4) NULL,
    [SHIPPED_VOLUME]                DECIMAL (13, 4) NULL,
    [VOLUME_UOM_ID_BASE]            INT             NULL,
    [VOLUME_UOM_ID]                 INT             NULL,
    [SIZE1_UOM_ID]                  INT             NULL,
    [SIZE1_VALUE]                   DECIMAL (13, 4) NULL,
    [RECEIVED_SIZE1]                DECIMAL (13, 4) NULL,
    [SHIPPED_SIZE1]                 DECIMAL (13, 4) NULL,
    [SIZE2_UOM_ID]                  INT             NULL,
    [SIZE2_VALUE]                   DECIMAL (13, 4) NULL,
    [RECEIVED_SIZE2]                DECIMAL (13, 4) NULL,
    [SHIPPED_SIZE2]                 DECIMAL (13, 4) NULL,
    [QTY_CONV_FACTOR]               DECIMAL (17, 8) NOT NULL,
    [ORIG_ORDER_QTY]                DECIMAL (13, 4) NULL,
    [RETAIL_PRICE]                  DECIMAL (16, 4) NULL,
    [DSG_SHIP_VIA]                  NVARCHAR (50)   NULL,
    [LINE_TOTAL]                    DECIMAL (13, 4) NULL,
    [IS_GIFT]                       NVARCHAR (50)   NULL,
    [ADDR_VALID]                    NVARCHAR (50)   NULL,
    [REASON_ID]                     INT             NULL,
    [HAS_CHILD]                     NVARCHAR (50)   NULL,
    [NEW_LINE_TYPE]                 INT             NULL,
    [REQ_CAPACITY_PER_UNIT]         INT             NULL,
    [MERGE_FACILITY]                INT             NULL,
    [MERGE_FACILITY_ALIAS_ID]       NVARCHAR (16)   NULL,
    [ORDER_FULFILLMENT_OPTION]      NVARCHAR (2)    NULL,
    [REF_FIELD_1]                   NVARCHAR (25)   NULL,
    [REF_FIELD_2]                   NVARCHAR (25)   NULL,
    [REF_FIELD_3]                   NVARCHAR (25)   NULL,
    [IS_RETURNABLE]                 INT             NOT NULL,
    [BACK_ORD_REASON]               NVARCHAR (2)    NULL,
    [FREIGHT_REVENUE_CURRENCY_CODE] NVARCHAR (3)    NULL,
    [FREIGHT_REVENUE]               DECIMAL (13, 4) NULL,
    [PRICE_OVERRIDE]                INT             NOT NULL,
    [ORIGINAL_PRICE]                DECIMAL (13, 4) NULL,
    [EXT_CREATED_DTTM]              DATETIME2 (7)   NULL,
    [REASON_CODES_GROUP_ID]         INT             NULL,
    [OVER_SHIP_PCT]                 INT             NULL,
    [IS_EXCHANGEABLE]               INT             NOT NULL,
    [ORIGINAL_PO_LINE_ITEM_ID]      INT             NULL,
    [RMA_LINE_STATUS]               INT             NULL,
    [OVER_PACK_PCT]                 INT             NULL,
    [ALLOW_RESIDUAL_PACK]           INT             NULL,
    [HAS_COMP_ITEM]                 INT             NOT NULL,
    [INV_DISPOSITION]               NVARCHAR (15)   NULL,
    [EXT_PLAN_ID]                   NVARCHAR (50)   NULL,
    [TAX_INCLUDED]                  INT             NULL,
    [RETURN_ACTION_TYPE]            INT             NULL,
    [REF_FIELD4]                    NVARCHAR (25)   NULL,
    [REF_FIELD5]                    NVARCHAR (25)   NULL,
    [REF_FIELD6]                    NVARCHAR (25)   NULL,
    [REF_FIELD7]                    NVARCHAR (25)   NULL,
    [REF_FIELD8]                    NVARCHAR (25)   NULL,
    [REF_FIELD9]                    NVARCHAR (25)   NULL,
    [REF_FIELD10]                   NVARCHAR (25)   NULL,
    [REF_NUM1]                      DECIMAL (13, 5) NULL,
    [REF_NUM2]                      DECIMAL (13, 5) NULL,
    [REF_NUM3]                      DECIMAL (13, 5) NULL,
    [REF_NUM4]                      DECIMAL (13, 5) NULL,
    [REF_NUM5]                      DECIMAL (13, 5) NULL,
    [REF_BOOLEAN1]                  INT             NULL,
    [REF_BOOLEAN2]                  INT             NULL,
    [REF_SYSCODE1]                  NVARCHAR (15)   NULL,
    [REF_SYSCODE2]                  NVARCHAR (15)   NULL,
    [REF_SYSCODE3]                  NVARCHAR (15)   NULL,
    [Eff_Date]                      DATE            NOT NULL,
    [End_Date]                      DATE            NULL,
    [ActInd]                        CHAR (1)        NULL,
    [IsDeleted]                     CHAR (1)        NULL,
    [BatchID]                       BIGINT          NULL,
    [ProcessLogID]                  BIGINT          NULL,
    CONSTRAINT [PK_MANH_PURCHASE_ORDERS_LINE_ITEM] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [PURCHASE_ORDERS_ID] ASC, [PURCHASE_ORDERS_LINE_ITEM_ID] ASC)
);

