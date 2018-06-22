﻿CREATE TABLE [MANH].[LPN_INBOUND] (
    [LPN_ID]                         BIGINT          NOT NULL,
    [TC_LPN_ID]                      NVARCHAR (50)   NOT NULL,
    [BUSINESS_PARTNER_ID]            NVARCHAR (10)   NULL,
    [TC_COMPANY_ID]                  INT             NOT NULL,
    [PARENT_LPN_ID]                  BIGINT          NULL,
    [TC_PARENT_LPN_ID]               NVARCHAR (50)   NULL,
    [LPN_TYPE]                       SMALLINT        NOT NULL,
    [VERSION_NBR]                    BIGINT          NULL,
    [LPN_MONETARY_VALUE]             NUMERIC (11, 2) NULL,
    [LPN_MONETARY_VALUE_CURR_CODE]   NVARCHAR (3)    NULL,
    [TIER_QTY]                       NUMERIC (9, 2)  NULL,
    [STD_LPN_QTY]                    NUMERIC (13, 4) NULL,
    [C_FACILITY_ID]                  BIGINT          NULL,
    [O_FACILITY_ID]                  BIGINT          NULL,
    [O_FACILITY_ALIAS_ID]            NVARCHAR (16)   NULL,
    [FINAL_DEST_FACILITY_ALIAS_ID]   NVARCHAR (16)   NULL,
    [FINAL_DEST_FACILITY_ID]         BIGINT          NULL,
    [LPN_STATUS]                     SMALLINT        NULL,
    [LPN_STATUS_UPDATED_DTTM]        DATETIME2 (7)   NULL,
    [LPN_FACILITY_STATUS]            SMALLINT        NULL,
    [TC_REFERENCE_LPN_ID]            NVARCHAR (50)   NULL,
    [TC_ORDER_ID]                    NVARCHAR (50)   NULL,
    [ORIGINAL_TC_SHIPMENT_ID]        NVARCHAR (20)   NULL,
    [PARCEL_SHIPMENT_NBR]            NVARCHAR (20)   NULL,
    [TRACKING_NBR]                   NVARCHAR (50)   NULL,
    [MANIFEST_NBR]                   NVARCHAR (20)   NULL,
    [SHIP_VIA]                       NVARCHAR (4)    NULL,
    [MASTER_BOL_NBR]                 NVARCHAR (30)   NULL,
    [BOL_NBR]                        NVARCHAR (30)   NULL,
    [INIT_SHIP_VIA]                  NVARCHAR (4)    NULL,
    [PATH_ID]                        BIGINT          NULL,
    [ROUTE_RULE_ID]                  INT             NULL,
    [IDEAL_PICK_DTTM]                DATETIME2 (7)   NULL,
    [REPRINT_COUNT]                  SMALLINT        NULL,
    [LAST_FROZEN_DTTM]               DATETIME2 (7)   NULL,
    [LAST_COUNTED_DTTM]              DATETIME2 (7)   NULL,
    [BASE_CHARGE]                    NUMERIC (9, 2)  NULL,
    [BASE_CHARGE_CURR_CODE]          NVARCHAR (3)    NULL,
    [ADDNL_OPTION_CHARGE]            NUMERIC (9, 2)  NULL,
    [ADDNL_OPTION_CHARGE_CURR_CODE]  NVARCHAR (3)    NULL,
    [INSUR_CHARGE]                   NUMERIC (9, 2)  NULL,
    [INSUR_CHARGE_CURR_CODE]         NVARCHAR (3)    NULL,
    [ACTUAL_CHARGE]                  NUMERIC (9, 2)  NULL,
    [ACTUAL_CHARGE_CURR_CODE]        NVARCHAR (3)    NULL,
    [PRE_BULK_BASE_CHARGE]           NUMERIC (9, 2)  NULL,
    [PRE_BULK_BASE_CHARGE_CURR_CODE] NVARCHAR (3)    NULL,
    [PRE_BULK_ADD_OPT_CHR]           NUMERIC (9, 2)  NULL,
    [PRE_BULK_ADD_OPT_CHR_CURR_CODE] NVARCHAR (3)    NULL,
    [DIST_CHARGE]                    NUMERIC (11, 2) NULL,
    [DIST_CHARGE_CURR_CODE]          NVARCHAR (3)    NULL,
    [FREIGHT_CHARGE]                 NUMERIC (11, 2) NULL,
    [FREIGHT_CHARGE_CURR_CODE]       NVARCHAR (3)    NULL,
    [RECEIVED_TC_SHIPMENT_ID]        NVARCHAR (30)   NULL,
    [MANUFACTURED_DTTM]              DATETIME2 (7)   NULL,
    [MANUFACT_PLANT_FACILITY_ALIAS]  NVARCHAR (16)   NULL,
    [RCVD_DTTM]                      DATETIME2 (7)   NULL,
    [TC_PURCHASE_ORDERS_ID]          NVARCHAR (50)   NULL,
    [PURCHASE_ORDERS_ID]             BIGINT          NULL,
    [TC_SHIPMENT_ID]                 NVARCHAR (50)   NULL,
    [SHIPMENT_ID]                    BIGINT          NULL,
    [TC_ASN_ID]                      NVARCHAR (50)   NULL,
    [ASN_ID]                         BIGINT          NULL,
    [RECEIPT_VARIANCE_INDICATOR]     SMALLINT        NULL,
    [ESTIMATED_VOLUME]               NUMERIC (13, 4) NULL,
    [WEIGHT]                         NUMERIC (16, 4) NULL,
    [ACTUAL_VOLUME]                  NUMERIC (13, 4) NULL,
    [LPN_LABEL_TYPE]                 NVARCHAR (4)    NULL,
    [PACKAGE_TYPE_ID]                INT             NULL,
    [MISC_INSTR_CODE_1]              NVARCHAR (2)    NULL,
    [MISC_INSTR_CODE_2]              NVARCHAR (2)    NULL,
    [MISC_INSTR_CODE_3]              NVARCHAR (2)    NULL,
    [MISC_INSTR_CODE_4]              NVARCHAR (2)    NULL,
    [MISC_INSTR_CODE_5]              NVARCHAR (2)    NULL,
    [MISC_NUM_1]                     NUMERIC (9, 2)  NULL,
    [MISC_NUM_2]                     NUMERIC (9, 2)  NULL,
    [HIBERNATE_VERSION]              INT             NULL,
    [CUBE_UOM]                       NVARCHAR (1)    NULL,
    [ERROR_INDICATOR]                SMALLINT        NOT NULL,
    [WARNING_INDICATOR]              SMALLINT        NOT NULL,
    [QA_FLAG]                        NVARCHAR (1)    NOT NULL,
    [PALLET_OPEN_FLAG]               SMALLINT        NOT NULL,
    [QTY_UOM_ID_BASE]                INT             NULL,
    [WEIGHT_UOM_ID_BASE]             INT             NULL,
    [VOLUME_UOM_ID_BASE]             INT             NULL,
    [SPLIT_LPN_ID]                   INT             NULL,
    [CREATED_SOURCE_TYPE]            SMALLINT        NOT NULL,
    [CREATED_SOURCE]                 NVARCHAR (25)   NULL,
    [CREATED_DTTM]                   DATETIME2 (7)   NOT NULL,
    [EXT_CREATED_DTTM]               DATETIME2 (7)   NULL,
    [LAST_UPDATED_SOURCE_TYPE]       SMALLINT        NOT NULL,
    [LAST_UPDATED_SOURCE]            NVARCHAR (25)   NULL,
    [LAST_UPDATED_DTTM]              DATETIME2 (7)   NOT NULL,
    [CONVEYABLE_LPN_FLAG]            SMALLINT        NULL,
    [ACTIVE_LPN_FLAG]                SMALLINT        NULL,
    [LPN_SHIPPED_FLAG]               SMALLINT        NULL,
    [STD_QTY_FLAG]                   SMALLINT        NULL,
    [C_FACILITY_ALIAS_ID]            NVARCHAR (16)   NULL,
    [PALLET_MASTER_LPN_FLAG]         SMALLINT        NULL,
    [MASTER_LPN_FLAG]                NVARCHAR (1)    NULL,
    [LPN_SIZE_TYPE_ID]               INT             NULL,
    [PICK_SUB_LOCN_ID]               NVARCHAR (10)   NULL,
    [CURR_SUB_LOCN_ID]               NVARCHAR (10)   NULL,
    [PREV_SUB_LOCN_ID]               NVARCHAR (10)   NULL,
    [DEST_SUB_LOCN_ID]               NVARCHAR (10)   NULL,
    [INBOUND_OUTBOUND_INDICATOR]     NVARCHAR (1)    NULL,
    [WORK_ORD_NBR]                   NVARCHAR (12)   NULL,
    [INTERNAL_ORDER_ID]              NVARCHAR (10)   NULL,
    [SHIPPED_DTTM]                   DATETIME2 (7)   NULL,
    [TRAILER_STOP_SEQ_NBR]           SMALLINT        NULL,
    [PACK_WAVE_NBR]                  NVARCHAR (15)   NULL,
    [WAVE_NBR]                       NVARCHAR (12)   NULL,
    [WAVE_SEQ_NBR]                   INT             NULL,
    [WAVE_STAT_CODE]                 SMALLINT        NULL,
    [DIRECTED_QTY]                   NUMERIC (9, 2)  NULL,
    [TRANSITIONAL_INVENTORY_TYPE]    SMALLINT        NULL,
    [PICKER_USERID]                  NVARCHAR (15)   NULL,
    [PACKER_USERID]                  NVARCHAR (15)   NULL,
    [CHUTE_ID]                       NVARCHAR (10)   NULL,
    [CHUTE_ASSIGN_TYPE]              NVARCHAR (3)    NULL,
    [STAGE_INDICATOR]                SMALLINT        NULL,
    [OUT_OF_ZONE_INDICATOR]          NVARCHAR (1)    NULL,
    [LABEL_PRINT_REQD]               NVARCHAR (1)    NULL,
    [CONSUMPTION_SEQUENCE]           NVARCHAR (3)    NULL,
    [CONSUMPTION_PRIORITY]           NVARCHAR (3)    NULL,
    [CONSUMPTION_PRIORITY_DTTM]      DATETIME2 (7)   NULL,
    [PUTAWAY_TYPE]                   NVARCHAR (3)    NULL,
    [RETURN_DISPOSITION_CODE]        NVARCHAR (3)    NULL,
    [FINAL_DISPOSITION_CODE]         NVARCHAR (3)    NULL,
    [LOADED_DTTM]                    DATETIME2 (7)   NULL,
    [LOADER_USERID]                  NVARCHAR (15)   NULL,
    [LOADED_POSN]                    NVARCHAR (1)    NULL,
    [SHIP_BY_DATE]                   DATETIME2 (7)   NULL,
    [PICK_DELIVERY_DURATION]         NUMERIC (5, 2)  NULL,
    [LPN_BREAK_ATTR]                 NVARCHAR (3)    NULL,
    [LPN_PRINT_GROUP_CODE]           NVARCHAR (5)    NULL,
    [SEQ_RULE_PRIORITY]              INT             NULL,
    [SPUR_LANE]                      NVARCHAR (4)    NULL,
    [SPUR_POSITION]                  NVARCHAR (4)    NULL,
    [FIRST_ZONE]                     NVARCHAR (4)    NULL,
    [LAST_ZONE]                      NVARCHAR (4)    NULL,
    [NBR_OF_ZONES]                   SMALLINT        NULL,
    [LPN_DIVERT_CODE]                NVARCHAR (2)    NULL,
    [INTERNAL_ORDER_CONSOL_ATTR]     NVARCHAR (3)    NULL,
    [WHSE_INTERNAL_EVENT_CODE]       NVARCHAR (10)   NULL,
    [SELECTION_RULE_ID]              INT             NULL,
    [VOCO_INTRN_REVERSE_ID]          NVARCHAR (50)   NULL,
    [VOCO_INTRN_REVERSE_PALLET_ID]   NVARCHAR (50)   NULL,
    [LPN_CREATION_CODE]              SMALLINT        NULL,
    [PALLET_X_OF_Y]                  INT             NULL,
    [INCUBATION_DATE]                DATETIME2 (7)   NULL,
    [CONTAINER_TYPE]                 NVARCHAR (3)    NULL,
    [CONTAINER_SIZE]                 NVARCHAR (3)    NULL,
    [LPN_NBR_X_OF_Y]                 INT             NULL,
    [LOAD_SEQUENCE]                  INT             NULL,
    [MASTER_PACK_ID]                 NVARCHAR (20)   NULL,
    [SINGLE_LINE_LPN]                NVARCHAR (1)    NULL,
    [NON_INVENTORY_LPN_FLAG]         SMALLINT        NULL,
    [EPC_MATCH_FLAG]                 NVARCHAR (1)    NULL,
    [AUDITOR_USERID]                 NVARCHAR (15)   NULL,
    [PRINTING_RULE_ID]               INT             NULL,
    [EXPIRATION_DATE]                DATETIME2 (7)   NULL,
    [QUAL_AUD_STAT_CODE]             SMALLINT        NULL,
    [DELVRECIPIENTNAME]              NVARCHAR (140)  NULL,
    [DELVRECEIPTDATETIME]            DATETIME2 (7)   NULL,
    [DELVONTIMEFLAG]                 NVARCHAR (4)    NULL,
    [DELVCOMPLFLAG]                  NVARCHAR (4)    NULL,
    [ITEM_ID]                        INT             NULL,
    [LPN_FACILITY_STAT_UPDATED_DTTM] DATETIME2 (7)   NULL,
    [LPN_DISP_STATUS]                NVARCHAR (12)   NULL,
    [OVERSIZE_LENGTH]                SMALLINT        NULL,
    [BILLING_METHOD]                 INT             NULL,
    [CUSTOMER_ID]                    BIGINT          NULL,
    [IS_ZONE_SKIPPED]                SMALLINT        NULL,
    [ZONESKIP_HUB_FACILITY_ALIAS_ID] NVARCHAR (16)   NULL,
    [ZONESKIP_HUB_FACILITY_ID]       INT             NULL,
    [PLANING_DEST_FACILITY_ALIAS_ID] INT             NULL,
    [PLANING_DEST_FACILITY_ID]       INT             NULL,
    [SCHED_SHIP_DTTM]                DATETIME2 (7)   NULL,
    [DISTRIBUTION_LEG_CARRIER_ID]    BIGINT          NULL,
    [DISTRIBUTION_LEG_MODE_ID]       INT             NULL,
    [DISTRIBUTION_LEV_SVCE_LEVEL_ID] INT             NULL,
    [SERVICE_LEVEL_INDICATOR]        NVARCHAR (2)    NULL,
    [DELIVERY_TYPE]                  INT             NULL,
    [COD_FLAG]                       SMALLINT        NULL,
    [COD_AMOUNT]                     NUMERIC (9, 2)  NULL,
    [COD_PAYMENT_METHOD]             INT             NULL,
    [RATED_WEIGHT]                   NUMERIC (13, 4) NULL,
    [RATE_WEIGHT_TYPE]               SMALLINT        NULL,
    [RATE_ZONE]                      NVARCHAR (25)   NULL,
    [FRT_FORWARDER_ACCT_NBR]         NVARCHAR (50)   NULL,
    [INTL_GOODS_DESC]                NVARCHAR (50)   NULL,
    [SHIPMENT_PRINT_SED]             SMALLINT        NULL,
    [EXPORT_LICENSE_NUMBER]          NVARCHAR (25)   NULL,
    [EXPORT_LICENSE_SYMBOL]          NVARCHAR (25)   NULL,
    [EXPORT_INFO_CODE]               NVARCHAR (25)   NULL,
    [REPRINT_SHIPPING_LABEL]         SMALLINT        NULL,
    [PLAN_LOAD_ID]                   INT             NULL,
    [DOCUMENTS_ONLY]                 SMALLINT        NULL,
    [SCHEDULED_DELIVERY_DTTM]        DATETIME2 (7)   NULL,
    [NON_MACHINEABLE]                SMALLINT        NULL,
    [D_FACILITY_ID]                  BIGINT          NULL,
    [D_FACILITY_ALIAS_ID]            NVARCHAR (16)   NULL,
    [VENDOR_LPN_NBR]                 NVARCHAR (30)   NULL,
    [PLANNED_TC_ASN_ID]              NVARCHAR (50)   NULL,
    [ESTIMATED_WEIGHT]               NUMERIC (13, 4) NULL,
    [ORDER_ID]                       BIGINT          NULL,
    [MARK_FOR]                       NVARCHAR (16)   NULL,
    [CROSSDOCK_TC_ORDER_ID]          NVARCHAR (50)   NULL,
    [PHYSICAL_ENTITY_CODE]           NVARCHAR (4)    NULL,
    [PROCESS_IMMEDIATE_NEEDS]        NVARCHAR (1)    NULL,
    [LENGTH]                         NUMERIC (16, 4) NULL,
    [WIDTH]                          NUMERIC (16, 4) NULL,
    [HEIGHT]                         NUMERIC (16, 4) NULL,
    [TOTAL_LPN_QTY]                  NUMERIC (13, 4) NULL,
    [STATIC_ROUTE_ID]                INT             NULL,
    [HAS_ALERTS]                     SMALLINT        NULL,
    [ORDER_SPLIT_ID]                 BIGINT          NULL,
    [MHE_LOADED]                     NVARCHAR (1)    NOT NULL,
    [ITEM_NAME]                      NVARCHAR (100)  NULL,
    [ALT_TRACKING_NBR]               NVARCHAR (50)   NULL,
    [RECEIPT_TYPE]                   SMALLINT        NULL,
    [VARIANCE_TYPE]                  SMALLINT        NULL,
    [Eff_Date]                       DATE            NOT NULL,
    [End_Date]                       DATE            NULL,
    [ActInd]                         CHAR (1)        NULL,
    [IsDeleted]                      CHAR (1)        NULL,
    [BatchID]                        BIGINT          NULL,
    [ProcessLogID]                   BIGINT          NULL,
    CONSTRAINT [PK_MANH_LPN_INBOUND] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [LPN_ID] ASC)
);

