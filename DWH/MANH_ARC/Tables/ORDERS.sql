﻿CREATE TABLE [MANH_ARC].[ORDERS] (
    [ORDER_ID]                      BIGINT          NOT NULL,
    [TC_ORDER_ID]                   NVARCHAR (50)   NOT NULL,
    [TC_ORDER_ID_U]                 NVARCHAR (50)   NULL,
    [TC_COMPANY_ID]                 INT             NOT NULL,
    [CREATION_TYPE]                 SMALLINT        NOT NULL,
    [BUSINESS_PARTNER_ID]           NVARCHAR (10)   NULL,
    [PARENT_ORDER_ID]               BIGINT          NULL,
    [EXT_PURCHASE_ORDER]            NVARCHAR (50)   NULL,
    [CONS_RUN_ID]                   BIGINT          NULL,
    [O_FACILITY_ALIAS_ID]           NVARCHAR (16)   NULL,
    [O_FACILITY_ID]                 INT             NULL,
    [O_DOCK_ID]                     NVARCHAR (8)    NULL,
    [O_ADDRESS_1]                   NVARCHAR (75)   NULL,
    [O_ADDRESS_2]                   NVARCHAR (75)   NULL,
    [O_ADDRESS_3]                   NVARCHAR (75)   NULL,
    [O_CITY]                        NVARCHAR (40)   NULL,
    [O_STATE_PROV]                  NVARCHAR (3)    NULL,
    [O_POSTAL_CODE]                 NVARCHAR (10)   NULL,
    [O_COUNTY]                      NVARCHAR (40)   NULL,
    [O_COUNTRY_CODE]                NVARCHAR (2)    NULL,
    [D_FACILITY_ALIAS_ID]           NVARCHAR (16)   NULL,
    [D_FACILITY_ID]                 INT             NULL,
    [D_DOCK_ID]                     NVARCHAR (8)    NULL,
    [D_ADDRESS_1]                   NVARCHAR (75)   NULL,
    [D_ADDRESS_2]                   NVARCHAR (75)   NULL,
    [D_ADDRESS_3]                   NVARCHAR (75)   NULL,
    [D_CITY]                        NVARCHAR (40)   NULL,
    [D_STATE_PROV]                  NVARCHAR (3)    NULL,
    [D_POSTAL_CODE]                 NVARCHAR (10)   NULL,
    [D_COUNTY]                      NVARCHAR (40)   NULL,
    [D_COUNTRY_CODE]                NVARCHAR (2)    NULL,
    [BILL_TO_NAME]                  NVARCHAR (91)   NULL,
    [BILL_FACILITY_ALIAS_ID]        NVARCHAR (16)   NULL,
    [BILL_FACILITY_ID]              INT             NULL,
    [BILL_TO_ADDRESS_1]             NVARCHAR (75)   NULL,
    [BILL_TO_ADDRESS_2]             NVARCHAR (75)   NULL,
    [BILL_TO_ADDRESS_3]             NVARCHAR (75)   NULL,
    [BILL_TO_CITY]                  NVARCHAR (50)   NULL,
    [BILL_TO_STATE_PROV]            NVARCHAR (3)    NULL,
    [BILL_TO_COUNTY]                NVARCHAR (40)   NULL,
    [BILL_TO_POSTAL_CODE]           NVARCHAR (10)   NULL,
    [BILL_TO_COUNTRY_CODE]          NVARCHAR (2)    NULL,
    [BILL_TO_PHONE_NUMBER]          NVARCHAR (32)   NULL,
    [BILL_TO_FAX_NUMBER]            NVARCHAR (30)   NULL,
    [BILL_TO_EMAIL]                 NVARCHAR (256)  NULL,
    [PLAN_O_FACILITY_ID]            BIGINT          NULL,
    [PLAN_D_FACILITY_ID]            INT             NULL,
    [PLAN_O_FACILITY_ALIAS_ID]      NVARCHAR (16)   NULL,
    [PLAN_D_FACILITY_ALIAS_ID]      NVARCHAR (16)   NULL,
    [PLAN_LEG_D_ALIAS_ID]           NVARCHAR (16)   NULL,
    [PLAN_LEG_O_ALIAS_ID]           NVARCHAR (16)   NULL,
    [INCOTERM_FACILITY_ID]          INT             NULL,
    [INCOTERM_FACILITY_ALIAS_ID]    NVARCHAR (16)   NULL,
    [INCOTERM_ID]                   BIGINT          NULL,
    [INCOTERM_LOC_AVA_DTTM]         DATETIME2 (7)   NULL,
    [INCOTERM_LOC_AVA_TIME_ZONE_ID] INT             NULL,
    [PICKUP_TZ]                     SMALLINT        NOT NULL,
    [DELIVERY_TZ]                   SMALLINT        NOT NULL,
    [PICKUP_START_DTTM]             DATETIME2 (7)   NULL,
    [PICKUP_END_DTTM]               DATETIME2 (7)   NULL,
    [DELIVERY_START_DTTM]           DATETIME2 (7)   NULL,
    [DELIVERY_END_DTTM]             DATETIME2 (7)   NULL,
    [ORDER_DATE_DTTM]               DATETIME2 (7)   NULL,
    [ORDER_RECON_DTTM]              DATETIME2 (7)   NULL,
    [INBOUND_REGION_ID]             INT             NULL,
    [OUTBOUND_REGION_ID]            INT             NULL,
    [DSG_SERVICE_LEVEL_ID]          BIGINT          NULL,
    [DSG_CARRIER_ID]                BIGINT          NULL,
    [DSG_EQUIPMENT_ID]              BIGINT          NULL,
    [DSG_TRACTOR_EQUIPMENT_ID]      BIGINT          NULL,
    [DSG_MOT_ID]                    BIGINT          NULL,
    [BASELINE_MOT_ID]               BIGINT          NULL,
    [BASELINE_SERVICE_LEVEL_ID]     BIGINT          NULL,
    [PRODUCT_CLASS_ID]              INT             NULL,
    [PROTECTION_LEVEL_ID]           INT             NULL,
    [MERCHANDIZING_DEPARTMENT_ID]   BIGINT          NULL,
    [WAVE_ID]                       BIGINT          NULL,
    [WAVE_OPTION_ID]                BIGINT          NULL,
    [PATH_ID]                       BIGINT          NULL,
    [PATH_SET_ID]                   BIGINT          NULL,
    [DRIVER_TYPE_ID]                BIGINT          NULL,
    [UN_NUMBER_ID]                  BIGINT          NULL,
    [BLOCK_AUTO_CREATE]             SMALLINT        NOT NULL,
    [BLOCK_AUTO_CONSOLIDATE]        SMALLINT        NOT NULL,
    [HAS_ALERTS]                    SMALLINT        NOT NULL,
    [HAS_EM_NOTIFY_FLAG]            SMALLINT        NOT NULL,
    [HAS_IMPORT_ERROR]              SMALLINT        NOT NULL,
    [HAS_NOTES]                     SMALLINT        NOT NULL,
    [HAS_SOFT_CHECK_ERRORS]         SMALLINT        NOT NULL,
    [HAS_SPLIT]                     SMALLINT        NOT NULL,
    [IS_BOOKING_REQUIRED]           SMALLINT        NOT NULL,
    [IS_CANCELLED]                  SMALLINT        NOT NULL,
    [IS_HAZMAT]                     SMALLINT        NOT NULL,
    [IS_IMPORTED]                   SMALLINT        NOT NULL,
    [IS_PARTIALLY_PLANNED]          SMALLINT        NOT NULL,
    [IS_PERISHABLE]                 SMALLINT        NOT NULL,
    [IS_SUSPENDED]                  SMALLINT        NOT NULL,
    [NORMALIZED_BASELINE_COST]      NUMERIC (13, 4) NULL,
    [BASELINE_COST_CURRENCY_CODE]   NVARCHAR (3)    NULL,
    [ORIG_BUDG_COST]                NUMERIC (13, 4) NULL,
    [BUDG_COST]                     NUMERIC (13, 4) NULL,
    [ACTUAL_COST]                   NUMERIC (13, 4) NULL,
    [BASELINE_COST]                 NUMERIC (13, 4) NULL,
    [TRANS_RESP_CODE]               NVARCHAR (3)    NULL,
    [BILLING_METHOD]                SMALLINT        NULL,
    [DROPOFF_PICKUP]                NVARCHAR (5)    NULL,
    [MOVEMENT_OPTION]               SMALLINT        NULL,
    [PRIORITY]                      SMALLINT        NULL,
    [MOVE_TYPE]                     SMALLINT        NULL,
    [SCHED_DOW]                     SMALLINT        NULL,
    [EQUIPMENT_TYPE]                SMALLINT        NULL,
    [DELIVERY_REQ]                  NVARCHAR (3)    NOT NULL,
    [MV_CURRENCY_CODE]              NVARCHAR (3)    NULL,
    [MONETARY_VALUE]                NUMERIC (16, 4) NULL,
    [COMPARTMENT_NO]                SMALLINT        NULL,
    [PACKAGING]                     NVARCHAR (15)   NULL,
    [EST_PALLET_BRIDGED]            NUMERIC (13, 4) NULL,
    [ORDER_LOADING_SEQ]             INT             NULL,
    [REF_FIELD_1]                   NVARCHAR (25)   NULL,
    [REF_FIELD_2]                   NVARCHAR (25)   NULL,
    [REF_FIELD_3]                   NVARCHAR (25)   NULL,
    [CREATED_SOURCE_TYPE]           SMALLINT        NOT NULL,
    [CREATED_SOURCE]                NVARCHAR (25)   NULL,
    [CREATED_DTTM]                  DATETIME2 (7)   NOT NULL,
    [LAST_UPDATED_SOURCE_TYPE]      SMALLINT        NOT NULL,
    [LAST_UPDATED_SOURCE]           NVARCHAR (25)   NULL,
    [LAST_UPDATED_DTTM]             DATETIME2 (7)   NOT NULL,
    [HIBERNATE_VERSION]             FLOAT (53)      NULL,
    [ACTUAL_COST_CURRENCY_CODE]     NVARCHAR (3)    NULL,
    [BUDG_COST_CURRENCY_CODE]       NVARCHAR (3)    NULL,
    [SHIPMENT_ID]                   BIGINT          NULL,
    [BILL_TO_TITLE]                 NVARCHAR (50)   NULL,
    [ORDER_STATUS]                  SMALLINT        NOT NULL,
    [ADDR_CODE]                     NVARCHAR (8)    NULL,
    [ADDR_VALID]                    NVARCHAR (4)    NULL,
    [ADVT_DATE]                     DATETIME2 (7)   NULL,
    [CHUTE_ID]                      NVARCHAR (40)   NULL,
    [COD_FUNDS]                     NVARCHAR (4)    NULL,
    [DC_CTR_NBR]                    NVARCHAR (32)   NULL,
    [DO_STATUS]                     SMALLINT        NOT NULL,
    [DO_TYPE]                       SMALLINT        NULL,
    [DOCS_ONLY_SHPMT]               NVARCHAR (4)    NULL,
    [DUTY_AND_TAX]                  NUMERIC (9, 4)  NULL,
    [DUTY_TAX_ACCT_NBR]             NVARCHAR (40)   NULL,
    [DUTY_TAX_PAYMENT_TYPE]         SMALLINT        NULL,
    [EST_LPN]                       INT             NOT NULL,
    [EST_LPN_BRIDGED]               INT             NOT NULL,
    [EST_PALLET]                    NUMERIC (13, 4) NOT NULL,
    [FTSR_NBR]                      NVARCHAR (128)  NULL,
    [IS_BACK_ORDERED]               NVARCHAR (4)    NOT NULL,
    [LPN_CUBING_INDIC]              SMALLINT        NOT NULL,
    [O_PHONE_NUMBER]                NVARCHAR (32)   NULL,
    [ORDER_PRINT_DTTM]              DATETIME2 (7)   NULL,
    [PALLET_CUBING_INDIC]           SMALLINT        NOT NULL,
    [PRE_PACK_FLAG]                 SMALLINT        NOT NULL,
    [RTE_TYPE_1]                    NVARCHAR (10)   NULL,
    [RTE_TYPE_2]                    NVARCHAR (10)   NULL,
    [SHIP_GROUP_SEQUENCE]           SMALLINT        NOT NULL,
    [SHPNG_CHRG]                    NUMERIC (11, 2) NOT NULL,
    [STAGE_INDIC]                   SMALLINT        NOT NULL,
    [STORE_NBR]                     NVARCHAR (40)   NULL,
    [TOTAL_NBR_OF_LPN]              INT             NOT NULL,
    [TOTAL_NBR_OF_PLT]              INT             NOT NULL,
    [WM_ORDER_STATUS]               INT             NULL,
    [D_NAME]                        NVARCHAR (91)   NULL,
    [O_CONTACT]                     NVARCHAR (91)   NULL,
    [SECONDARY_MAXI_ADDR_NBR]       NVARCHAR (8)    NULL,
    [D_CONTACT]                     NVARCHAR (91)   NULL,
    [AES_ITN]                       NVARCHAR (15)   NULL,
    [BATCH_ID]                      BIGINT          NULL,
    [ORIGIN_SHIP_THRU_FACILITY_ID]  INT             NULL,
    [ORIGIN_SHIP_THRU_FAC_ALIAS_ID] NVARCHAR (16)   NULL,
    [DEST_SHIP_THRU_FACILITY_ID]    INT             NULL,
    [DEST_SHIP_THRU_FAC_ALIAS_ID]   NVARCHAR (16)   NULL,
    [ACTUAL_SHIPPED_DTTM]           DATETIME2 (7)   NULL,
    [BILL_OF_LADING_NUMBER]         NVARCHAR (30)   NULL,
    [BOL_BREAK_ATTR]                NVARCHAR (3)    NULL,
    [D_EMAIL]                       NVARCHAR (256)  NULL,
    [D_FAX_NUMBER]                  NVARCHAR (30)   NULL,
    [D_PHONE_NUMBER]                NVARCHAR (32)   NULL,
    [DYNAMIC_ROUTING_REQD]          NVARCHAR (1)    NULL,
    [INTL_GOODS_DESC]               NVARCHAR (50)   NULL,
    [MAJOR_ORDER_GRP_ATTR]          NVARCHAR (50)   NULL,
    [ORDER_CONSOL_PROFILE]          NVARCHAR (3)    NULL,
    [PACK_SLIP_PRT_CNT]             SMALLINT        NULL,
    [PROD_SCHED_REF_NUMBER]         NVARCHAR (30)   NULL,
    [MUST_RELEASE_BY_DTTM]          DATETIME2 (7)   NULL,
    [CANCEL_DTTM]                   DATETIME2 (7)   NULL,
    [ASSIGNED_STATIC_ROUTE_ID]      NVARCHAR (16)   NULL,
    [DSG_STATIC_ROUTE_ID]           NVARCHAR (16)   NULL,
    [O_FACILITY_NAME]               NVARCHAR (50)   NULL,
    [O_DOCK_DOOR_ID]                BIGINT          NULL,
    [O_FAX_NUMBER]                  NVARCHAR (30)   NULL,
    [O_EMAIL]                       NVARCHAR (256)  NULL,
    [D_FACILITY_NAME]               NVARCHAR (50)   NULL,
    [D_DOCK_DOOR_ID]                BIGINT          NULL,
    [PURCHASE_ORDER_NUMBER]         NVARCHAR (50)   NULL,
    [CUSTOMER_ID]                   BIGINT          NULL,
    [REPL_WAVE_NBR]                 NVARCHAR (15)   NULL,
    [CUBING_STATUS]                 SMALLINT        NULL,
    [SCHED_PICKUP_DTTM]             DATETIME2 (7)   NULL,
    [SCHED_DELIVERY_DTTM]           DATETIME2 (7)   NULL,
    [ZONE_SKIP_HUB_LOCATION_ID]     INT             NULL,
    [BILL_TO_FACILITY_NAME]         NVARCHAR (50)   NULL,
    [FREIGHT_CLASS]                 NUMERIC (5, 1)  NULL,
    [NON_MACHINEABLE]               SMALLINT        NULL,
    [ASSIGNED_MOT_ID]               BIGINT          NULL,
    [ASSIGNED_CARRIER_ID]           BIGINT          NULL,
    [ASSIGNED_SERVICE_LEVEL_ID]     BIGINT          NULL,
    [ASSIGNED_EQUIPMENT_ID]         BIGINT          NULL,
    [DYNAMIC_REQUEST_SENT]          BIGINT          NULL,
    [COMMODITY_CODE_ID]             BIGINT          NULL,
    [TC_SHIPMENT_ID]                NVARCHAR (50)   NULL,
    [IN_TRANSIT_ALLOCATION]         SMALLINT        NOT NULL,
    [RELEASE_DESTINATION]           SMALLINT        NULL,
    [TEMPLATE_ID]                   BIGINT          NULL,
    [COD_AMOUNT]                    NUMERIC (13, 4) NULL,
    [BILL_TO_CONTACT_NAME]          NVARCHAR (50)   NULL,
    [SHIP_GROUP_ID]                 NVARCHAR (15)   NULL,
    [PURCHASE_ORDER_ID]             BIGINT          NULL,
    [DSG_HUB_LOCATION_ID]           INT             NULL,
    [OVERRIDE_BILLING_METHOD]       SMALLINT        NULL,
    [PARENT_TYPE]                   SMALLINT        NOT NULL,
    [ACCT_RCVBL_ACCT_NBR]           NVARCHAR (10)   NULL,
    [ACCT_RCVBL_CODE]               NVARCHAR (2)    NULL,
    [ADVT_CODE]                     NVARCHAR (2)    NULL,
    [IS_CUSTOMER_PICKUP]            NVARCHAR (1)    NULL,
    [IS_DIRECT_ALLOWED]             NVARCHAR (1)    NULL,
    [RTE_ATTR]                      NVARCHAR (30)   NULL,
    [LAST_RUN_ID]                   BIGINT          NULL,
    [PLAN_DUE_DTTM]                 DATETIME2 (7)   NULL,
    [IS_ORDER_RECONCILED]           SMALLINT        NOT NULL,
    [PRTL_SHIP_CONF_FLAG]           SMALLINT        NOT NULL,
    [PRTL_SHIP_CONF_STATUS]         SMALLINT        NULL,
    [ALLOW_PRE_BILLING]             SMALLINT        NOT NULL,
    [LANE_NAME]                     NVARCHAR (50)   NULL,
    [DECLARED_VALUE]                NUMERIC (16, 4) NULL,
    [DV_CURRENCY_CODE]              NVARCHAR (3)    NULL,
    [COD_CURRENCY_CODE]             NVARCHAR (3)    NULL,
    [WEIGHT_UOM_ID_BASE]            INT             NULL,
    [LINE_HAUL_SHIP_VIA]            NVARCHAR (4)    NULL,
    [ORIGINAL_ASSIGNED_SHIP_VIA]    NVARCHAR (4)    NULL,
    [DISTRIBUTION_SHIP_VIA]         NVARCHAR (4)    NULL,
    [DSG_SHIP_VIA]                  NVARCHAR (4)    NULL,
    [TAX_ID]                        NVARCHAR (15)   NULL,
    [ORDER_RECEIVED]                SMALLINT        NOT NULL,
    [IS_ORIGINAL_ORDER]             SMALLINT        NULL,
    [FREIGHT_FORWARDER_ACCT_NBR]    NVARCHAR (10)   NULL,
    [GLOBAL_LOCN_NBR]               NVARCHAR (13)   NULL,
    [IMPORTER_DEFN]                 NVARCHAR (1)    NULL,
    [LANG_ID]                       NVARCHAR (3)    NULL,
    [MAJOR_MINOR_ORDER]             NVARCHAR (1)    NULL,
    [MAJOR_ORDER_CTRL_NBR]          NVARCHAR (10)   NULL,
    [MHE_FLAG]                      NVARCHAR (1)    NULL,
    [MHE_ORD_STATE]                 NVARCHAR (3)    NULL,
    [ORDER_CONSOL_LOCN_ID]          NVARCHAR (10)   NULL,
    [ORDER_TYPE]                    NVARCHAR (20)   NULL,
    [PACK_WAVE_NBR]                 NVARCHAR (15)   NULL,
    [PARTIAL_LPN_OPTION]            NVARCHAR (1)    NULL,
    [PARTIES_RELATED]               NVARCHAR (1)    NULL,
    [PNH_FLAG]                      NVARCHAR (1)    NULL,
    [PRE_STICKER_CODE]              NVARCHAR (1)    NULL,
    [PRIMARY_MAXI_ADDR_NBR]         NVARCHAR (10)   NULL,
    [RTE_SWC_NBR]                   NVARCHAR (10)   NULL,
    [RTE_TO]                        NVARCHAR (10)   NULL,
    [RTE_WAVE_NBR]                  NVARCHAR (12)   NULL,
    [BASELINE_CARRIER_ID]           BIGINT          NULL,
    [COD_RETURN_COMPANY_NAME]       NVARCHAR (16)   NULL,
    [BILL_ACCT_NBR]                 NVARCHAR (23)   NULL,
    [CUST_BROKER_ACCT_NBR]          NVARCHAR (10)   NULL,
    [MANIFEST_NBR]                  NVARCHAR (20)   NULL,
    [DESTINATION_ACTION]            NVARCHAR (2)    NULL,
    [TRANS_PLAN_OWNER]              SMALLINT        NULL,
    [MARK_FOR]                      NVARCHAR (100)  NULL,
    [DELIVERY_OPTIONS]              NVARCHAR (2)    NULL,
    [DWH_CUSTOMER_ID]               NVARCHAR (1000) NULL,
    [Eff_Date]                      DATE            NOT NULL,
    [End_Date]                      DATE            NULL,
    [ActInd]                        CHAR (1)        NULL,
    [IsDeleted]                     CHAR (1)        NULL,
    [BatchID]                       BIGINT          NULL,
    [ProcessLogID]                  BIGINT          NULL,
    CONSTRAINT [PK_MANH_ORDERS] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [ORDER_ID] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];

