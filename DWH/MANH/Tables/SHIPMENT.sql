﻿CREATE TABLE [MANH].[SHIPMENT] (
    [SHIPMENT_ID]                    BIGINT          NOT NULL,
    [TC_COMPANY_ID]                  INT             NOT NULL,
    [RS_AREA_ID]                     INT             NULL,
    [TC_SHIPMENT_ID]                 NVARCHAR (50)   NOT NULL,
    [PP_SHIPMENT_ID]                 BIGINT          NULL,
    [SHIPMENT_STATUS]                SMALLINT        NOT NULL,
    [UPDATE_SENT]                    SMALLINT        NOT NULL,
    [BUSINESS_PROCESS]               NCHAR (4)       NOT NULL,
    [CREATION_TYPE]                  SMALLINT        NOT NULL,
    [CONS_RUN_ID]                    BIGINT          NULL,
    [IS_CANCELLED]                   SMALLINT        NOT NULL,
    [RS_TYPE]                        NVARCHAR (4)    NULL,
    [RS_CONFIG_ID]                   INT             NULL,
    [RS_CONFIG_CYCLE_ID]             INT             NULL,
    [CONFIG_CYCLE_SEQ]               SMALLINT        NULL,
    [CYCLE_DEADLINE_DTTM]            DATETIME2 (7)   NULL,
    [CYCLE_EXECUTION_DTTM]           DATETIME2 (7)   NOT NULL,
    [LAST_RS_NOTIFICATION_DTTM]      DATETIME2 (7)   NULL,
    [CFMF_STATUS]                    SMALLINT        NULL,
    [AVAILABLE_DTTM]                 DATETIME2 (7)   NULL,
    [CMID]                           BIGINT          NULL,
    [CM_DISCOUNT]                    NUMERIC (13, 3) NULL,
    [O_FACILITY_NUMBER]              INT             NULL,
    [O_FACILITY_ID]                  NVARCHAR (16)   NULL,
    [O_ADDRESS]                      NVARCHAR (255)  NULL,
    [O_CITY]                         NVARCHAR (40)   NULL,
    [O_STATE_PROV]                   NVARCHAR (3)    NULL,
    [O_POSTAL_CODE]                  NVARCHAR (10)   NULL,
    [O_COUNTY]                       NVARCHAR (40)   NULL,
    [O_COUNTRY_CODE]                 NVARCHAR (2)    NULL,
    [D_FACILITY_NUMBER]              INT             NULL,
    [D_FACILITY_ID]                  NVARCHAR (16)   NULL,
    [D_ADDRESS]                      NVARCHAR (255)  NULL,
    [D_CITY]                         NVARCHAR (40)   NULL,
    [D_STATE_PROV]                   NVARCHAR (3)    NULL,
    [D_POSTAL_CODE]                  NVARCHAR (10)   NULL,
    [D_COUNTY]                       NVARCHAR (40)   NULL,
    [D_COUNTRY_CODE]                 NVARCHAR (2)    NULL,
    [DISTANCE]                       NUMERIC (9, 2)  NULL,
    [DIRECT_DISTANCE]                NUMERIC (9, 2)  NULL,
    [OUT_OF_ROUTE_DISTANCE]          NUMERIC (9, 2)  NULL,
    [DISTANCE_UOM]                   NVARCHAR (2)    NULL,
    [BUSINESS_PARTNER_ID]            NVARCHAR (10)   NULL,
    [COMMODITY_CLASS]                INT             NULL,
    [IS_HAZMAT]                      SMALLINT        NOT NULL,
    [IS_PERISHABLE]                  SMALLINT        NOT NULL,
    [BILLING_METHOD]                 SMALLINT        NULL,
    [DSG_CARRIER_CODE]               NVARCHAR (8)    NULL,
    [REC_CMID]                       BIGINT          NULL,
    [REC_CM_SHIPMENT_ID]             BIGINT          NULL,
    [ASSIGNED_CARRIER_CODE]          NVARCHAR (8)    NULL,
    [SHIPMENT_REF_ID]                NVARCHAR (50)   NULL,
    [BILL_TO_CODE]                   NVARCHAR (100)  NULL,
    [BILL_TO_TITLE]                  NVARCHAR (50)   NULL,
    [BILL_TO_NAME]                   NVARCHAR (100)  NULL,
    [BILL_TO_ADDRESS]                NVARCHAR (250)  NULL,
    [BILL_TO_CITY]                   NVARCHAR (50)   NULL,
    [BILL_TO_STATE_PROV]             NVARCHAR (3)    NULL,
    [BILL_TO_POSTAL_CODE]            NVARCHAR (10)   NULL,
    [BILL_TO_COUNTRY_CODE]           NVARCHAR (2)    NULL,
    [BILL_TO_PHONE_NUMBER]           NVARCHAR (32)   NULL,
    [PURCHASE_ORDER]                 NVARCHAR (50)   NULL,
    [PRO_NUMBER]                     NVARCHAR (50)   NULL,
    [TRANS_RESP_CODE]                NVARCHAR (3)    NULL,
    [BASELINE_COST]                  NUMERIC (13, 2) NULL,
    [ESTIMATED_COST]                 NUMERIC (13, 2) NULL,
    [LINEHAUL_COST]                  NUMERIC (13, 2) NULL,
    [ACCESSORIAL_COST]               NUMERIC (13, 2) NULL,
    [STOP_COST]                      NUMERIC (13, 2) NULL,
    [TOTAL_COST]                     NUMERIC (13, 2) NULL,
    [ESTIMATED_SAVINGS]              NUMERIC (13, 2) NULL,
    [SPOT_CHARGE]                    NUMERIC (13, 2) NULL,
    [CURRENCY_CODE]                  NVARCHAR (3)    NULL,
    [PICKUP_START_DTTM]              DATETIME2 (7)   NULL,
    [PICKUP_END_DTTM]                DATETIME2 (7)   NULL,
    [DELIVERY_START_DTTM]            DATETIME2 (7)   NULL,
    [DELIVERY_END_DTTM]              DATETIME2 (7)   NULL,
    [NUM_STOPS]                      SMALLINT        NULL,
    [NUM_DOCKS]                      SMALLINT        NOT NULL,
    [ON_TIME_INDICATOR]              SMALLINT        NULL,
    [HAS_NOTES]                      SMALLINT        NOT NULL,
    [HAS_ALERTS]                     SMALLINT        NOT NULL,
    [HAS_IMPORT_ERROR]               SMALLINT        NOT NULL,
    [HAS_SOFT_CHECK_ERROR]           SMALLINT        NOT NULL,
    [HAS_TRACKING_MSG]               SMALLINT        NOT NULL,
    [TRACKING_MSG_PROBLEM]           SMALLINT        NOT NULL,
    [REC_LINEHAUL_COST]              NUMERIC (13, 2) NULL,
    [REC_ACCESSORIAL_COST]           NUMERIC (13, 2) NULL,
    [REC_TOTAL_COST]                 NUMERIC (13, 2) NULL,
    [CYCLE_RESP_DEADLINE_TZ]         SMALLINT        NOT NULL,
    [TENDER_RESP_DEADLINE_TZ]        SMALLINT        NOT NULL,
    [PICKUP_TZ]                      SMALLINT        NULL,
    [DELIVERY_TZ]                    SMALLINT        NULL,
    [ASSIGNED_LANE_ID]               INT             NULL,
    [ASSIGNED_LANE_DETAIL_ID]        BIGINT          NULL,
    [REC_SPOT_CHARGE]                NUMERIC (13, 2) NULL,
    [REC_LANE_ID]                    INT             NULL,
    [REC_LANE_DETAIL_ID]             BIGINT          NULL,
    [TENDER_DTTM]                    DATETIME2 (7)   NULL,
    [O_STOP_LOCATION_NAME]           NVARCHAR (50)   NULL,
    [D_STOP_LOCATION_NAME]           NVARCHAR (50)   NULL,
    [ASSIGNED_CM_SHIPMENT_ID]        BIGINT          NULL,
    [REC_CM_DISCOUNT]                NUMERIC (13, 2) NULL,
    [REC_STOP_COST]                  NUMERIC (13, 2) NULL,
    [LAST_SELECTOR_RUN_DTTM]         DATETIME2 (7)   NULL,
    [LAST_CM_OPTION_GEN_DTTM]        DATETIME2 (7)   NULL,
    [IS_CM_OPTION_GEN_ACTIVE]        SMALLINT        NOT NULL,
    [RS_CYCLE_REMAINING]             SMALLINT        NOT NULL,
    [IS_TIME_FEAS_ENABLED]           SMALLINT        NOT NULL,
    [EXT_SYS_SHIPMENT_ID]            NVARCHAR (50)   NULL,
    [EXTRACTION_DTTM]                DATETIME2 (7)   NULL,
    [ASSIGNED_BROKER_CARRIER_CODE]   NVARCHAR (8)    NULL,
    [USE_BROKER_AS_CARRIER]          SMALLINT        NULL,
    [BROKER_REF]                     NVARCHAR (255)  NULL,
    [RATING_QUALIFIER]               SMALLINT        NOT NULL,
    [STATUS_CHANGE_DTTM]             DATETIME2 (7)   NULL,
    [BUDG_TOTAL_COST]                NUMERIC (13, 2) NULL,
    [MARGIN]                         NUMERIC (13, 2) NULL,
    [NORMALIZED_MARGIN]              NUMERIC (13, 2) NULL,
    [NORMALIZED_TOTAL_COST]          NUMERIC (13, 2) NULL,
    [BUDG_NORMALIZED_TOTAL_COST]     NUMERIC (13, 2) NULL,
    [REC_BUDG_LINEHAUL_COST]         NUMERIC (13, 2) NULL,
    [REC_BUDG_STOP_COST]             NUMERIC (13, 2) NULL,
    [REC_BUDG_CM_DISCOUNT]           NUMERIC (13, 2) NULL,
    [REC_BUDG_ACCESSORIAL_COST]      NUMERIC (13, 2) NULL,
    [REC_BUDG_TOTAL_COST]            NUMERIC (13, 2) NULL,
    [REC_MARGIN]                     NUMERIC (13, 2) NULL,
    [REC_NORMALIZED_MARGIN]          NUMERIC (13, 2) NULL,
    [REC_NORMALIZED_TOTAL_COST]      NUMERIC (13, 2) NULL,
    [REC_BUDG_NORMALIZED_TOTAL_COST] NUMERIC (13, 2) NULL,
    [BUDG_CURRENCY_CODE]             NVARCHAR (3)    NULL,
    [SPOT_CHARGE_CURRENCY_CODE]      NVARCHAR (3)    NULL,
    [REC_CURRENCY_CODE]              NVARCHAR (3)    NULL,
    [REC_BUDG_CURRENCY_CODE]         NVARCHAR (3)    NULL,
    [REC_SPOT_CHARGE_CURRENCY_CODE]  NVARCHAR (3)    NULL,
    [RATING_LANE_ID]                 INT             NULL,
    [REC_RATING_LANE_ID]             INT             NULL,
    [REC_BUDG_RATING_LANE_ID]        BIGINT          NULL,
    [RATING_LANE_DETAIL_ID]          BIGINT          NULL,
    [REC_RATING_LANE_DETAIL_ID]      BIGINT          NULL,
    [REC_BUDG_RATING_LANE_DETAIL_ID] BIGINT          NULL,
    [BUDG_CM_DISCOUNT]               NUMERIC (13, 2) NULL,
    [NORMALIZED_BASELINE_COST]       NUMERIC (13, 2) NULL,
    [BASELINE_COST_CURRENCY_CODE]    NVARCHAR (3)    NULL,
    [REPORTED_COST]                  NUMERIC (13, 2) NULL,
    [TRACTOR_NUMBER]                 NVARCHAR (50)   NULL,
    [IS_AUTO_DELIVERED]              SMALLINT        NOT NULL,
    [SHIPMENT_TYPE]                  NVARCHAR (3)    NOT NULL,
    [ORIG_BUDG_TOTAL_COST]           NUMERIC (13, 2) NULL,
    [ACCESSORIAL_COST_TO_CARRIER]    NUMERIC (13, 2) NULL,
    [CARRIER_CHARGE]                 NUMERIC (13, 2) NULL,
    [ACTUAL_COST]                    NUMERIC (13, 2) NULL,
    [EARNED_INCOME]                  NUMERIC (13, 2) NULL,
    [SENT_TO_PKMS]                   SMALLINT        NULL,
    [IS_SHIPMENT_RECONCILED]         SMALLINT        NOT NULL,
    [DELIVERY_REQ]                   NVARCHAR (3)    NOT NULL,
    [DROPOFF_PICKUP]                 NVARCHAR (5)    NULL,
    [PACKAGING]                      NVARCHAR (15)   NULL,
    [SENT_TO_PKMS_DTTM]              DATETIME2 (7)   NULL,
    [WMS_STATUS_CODE]                SMALLINT        NULL,
    [SPOT_CHARGE_AND_PAYEE_ACC]      NUMERIC (13, 2) NULL,
    [SPOT_CHARGE_AND_PAYEE_ACC_CC]   NVARCHAR (3)    NULL,
    [NORM_SPOT_CHARGE_AND_PAYEE_ACC] NUMERIC (13, 2) NULL,
    [FACILITY_SCHEDULE_ID]           INT             NULL,
    [EARNED_INCOME_CURRENCY_CODE]    NVARCHAR (3)    NULL,
    [ACTUAL_COST_CURRENCY_CODE]      NVARCHAR (3)    NULL,
    [SHIPMENT_RECON_DTTM]            DATETIME2 (7)   NULL,
    [PLN_RATING_LANE_ID]             INT             NULL,
    [PLN_RATING_LANE_DETAIL_ID]      BIGINT          NULL,
    [PLN_TOTAL_COST]                 NUMERIC (13, 2) NULL,
    [PLN_LINEHAUL_COST]              NUMERIC (13, 2) NULL,
    [PLN_TOTAL_ACCESSORIAL_COST]     NUMERIC (13, 2) NULL,
    [PLN_STOP_OFF_COST]              NUMERIC (13, 2) NULL,
    [PLN_NORMALIZED_TOTAL_COST]      NUMERIC (13, 2) NULL,
    [PLN_CURRENCY_CODE]              NVARCHAR (3)    NULL,
    [PLN_ACCESSORL_COST_TO_CARRIER]  NUMERIC (13, 2) NULL,
    [PLN_CARRIER_CHARGE]             NUMERIC (13, 2) NULL,
    [WAYPOINT_TOTAL_COST]            NUMERIC (10, 2) NULL,
    [WAYPOINT_HANDLING_COST]         NUMERIC (10, 2) NULL,
    [GRS_OPERATION]                  SMALLINT        NOT NULL,
    [IS_GRS_OPT_CYCLE_RUNNING]       SMALLINT        NOT NULL,
    [IS_MANUAL_ASSIGN]               SMALLINT        NOT NULL,
    [LAST_RUN_GRS_DTTM]              DATETIME2 (7)   NULL,
    [GRS_MAX_SHIPMENT_STATUS]        SMALLINT        NULL,
    [PRIORITY_TYPE]                  SMALLINT        NULL,
    [MV_CURRENCY_CODE]               NVARCHAR (3)    NULL,
    [PROD_SCHED_REF_NUMBER]          NVARCHAR (32)   NULL,
    [INCOTERM_ID]                    BIGINT          NULL,
    [COMMODITY_CODE_ID]              BIGINT          NULL,
    [UN_NUMBER_ID]                   BIGINT          NULL,
    [CONTRACT_NUMBER]                NVARCHAR (50)   NULL,
    [BOOKING_REF_SHIPPER]            NVARCHAR (100)  NULL,
    [BOOKING_REF_CARRIER]            NVARCHAR (100)  NULL,
    [BK_RESOURCE_REF_EXTERNAL]       NVARCHAR (100)  NULL,
    [BK_RESOURCE_NAME_EXTERNAL]      NVARCHAR (100)  NULL,
    [BK_O_FACILITY_ID]               INT             NULL,
    [BK_D_FACILITY_ID]               INT             NULL,
    [BK_MASTER_AIRWAY_BILL]          NVARCHAR (100)  NULL,
    [BK_FORWARDER_AIRWAY_BILL]       NVARCHAR (100)  NULL,
    [ASSIGNED_SCNDR_CARRIER_CODE]    NVARCHAR (8)    NULL,
    [CUSTOMER_CREDIT_LIMIT_ID]       BIGINT          NULL,
    [SHIPMENT_LEG_TYPE]              BIGINT          NULL,
    [SHIPMENT_CLOSED_INDICATOR]      SMALLINT        NOT NULL,
    [OCEAN_ROUTING_STAGE]            SMALLINT        NULL,
    [BK_DEPARTURE_DTTM]              DATETIME2 (7)   NULL,
    [BK_DEPARTURE_TZ]                SMALLINT        NULL,
    [BK_ARRIVAL_DTTM]                DATETIME2 (7)   NULL,
    [BK_ARRIVAL_TZ]                  SMALLINT        NULL,
    [BK_PICKUP_DTTM]                 DATETIME2 (7)   NULL,
    [BK_PICKUP_TZ]                   SMALLINT        NULL,
    [BK_CUTOFF_DTTM]                 DATETIME2 (7)   NULL,
    [BK_CUTOFF_TZ]                   SMALLINT        NULL,
    [NUM_CHARGE_LAYOVERS]            SMALLINT        NULL,
    [RATE_TYPE]                      NVARCHAR (4)    NULL,
    [RATE_UOM]                       NVARCHAR (8)    NULL,
    [PICK_START_DTTM]                DATETIME2 (7)   NULL,
    [PAPERWORK_START_DTTM]           DATETIME2 (7)   NULL,
    [VEHICLE_CHECK_START_DTTM]       DATETIME2 (7)   NULL,
    [SHIPMENT_START_DTTM]            DATETIME2 (7)   NULL,
    [SHIPMENT_END_DTTM]              DATETIME2 (7)   NULL,
    [FEASIBLE_DRIVER_TYPE]           BIGINT          NULL,
    [WAVE_ID]                        BIGINT          NULL,
    [ESTIMATED_DISPATCH_DTTM]        DATETIME2 (7)   NULL,
    [TOTAL_TIME]                     INT             NULL,
    [LOC_REFERENCE]                  NVARCHAR (100)  NULL,
    [BK_O_FACILITY_ALIAS_ID]         NVARCHAR (16)   NULL,
    [BK_D_FACILITY_ALIAS_ID]         NVARCHAR (16)   NULL,
    [EQUIP_UTIL_PER]                 NUMERIC (5, 2)  NULL,
    [MOVE_TYPE]                      SMALLINT        NULL,
    [DRIVER_TYPE_ID]                 BIGINT          NULL,
    [EQUIPMENT_TYPE]                 SMALLINT        NULL,
    [RADIAL_DISTANCE]                NUMERIC (9, 2)  NULL,
    [RADIAL_DISTANCE_UOM]            NVARCHAR (2)    NULL,
    [DESIGNATED_TRACTOR_CODE]        NVARCHAR (8)    NULL,
    [DESIGNATED_DRIVER_TYPE]         BIGINT          NULL,
    [IS_WAVE_MAN_CHANGED]            SMALLINT        NOT NULL,
    [RETAIN_CONSOLIDATOR_TIMES]      SMALLINT        NULL,
    [TARIFF]                         NUMERIC (15, 4) NULL,
    [MIN_RATE]                       NUMERIC (15, 4) NULL,
    [FIRST_UPDATE_SENT_TO_PKMS]      SMALLINT        NOT NULL,
    [EVENT_IND_TYPEID]               BIGINT          NOT NULL,
    [TANDEM_PATH_ID]                 INT             NULL,
    [O_TANDEM_FACILITY]              INT             NULL,
    [D_TANDEM_FACILITY]              INT             NULL,
    [O_TANDEM_FACILITY_ALIAS]        NVARCHAR (16)   NULL,
    [D_TANDEM_FACILITY_ALIAS]        NVARCHAR (16)   NULL,
    [DELAY_TYPE]                     INT             NULL,
    [ASSIGNED_CARRIER_ID]            BIGINT          NULL,
    [DSG_CARRIER_ID]                 BIGINT          NULL,
    [REC_CARRIER_ID]                 BIGINT          NULL,
    [FEASIBLE_CARRIER_ID]            BIGINT          NULL,
    [PAYEE_CARRIER_ID]               BIGINT          NULL,
    [SCNDR_CARRIER_ID]               BIGINT          NULL,
    [BROKER_CARRIER_ID]              BIGINT          NULL,
    [ASSIGNED_SCNDR_CARRIER_ID]      BIGINT          NULL,
    [DSG_SCNDR_CARRIER_ID]           BIGINT          NULL,
    [ASSIGNED_BROKER_CARRIER_ID]     BIGINT          NULL,
    [LH_PAYEE_CARRIER_ID]            BIGINT          NULL,
    [REC_BROKER_CARRIER_ID]          BIGINT          NULL,
    [ASSIGNED_EQUIPMENT_ID]          BIGINT          NULL,
    [DSG_EQUIPMENT_ID]               BIGINT          NULL,
    [FEASIBLE_EQUIPMENT_ID]          BIGINT          NULL,
    [FEASIBLE_EQUIPMENT2_ID]         INT             NULL,
    [REC_EQUIPMENT_ID]               BIGINT          NULL,
    [ASSIGNED_MOT_ID]                BIGINT          NULL,
    [DSG_MOT_ID]                     BIGINT          NULL,
    [FEASIBLE_MOT_ID]                BIGINT          NULL,
    [REC_MOT_ID]                     BIGINT          NULL,
    [PRODUCT_CLASS_ID]               INT             NULL,
    [PROTECTION_LEVEL_ID]            INT             NULL,
    [ASSIGNED_SERVICE_LEVEL_ID]      BIGINT          NULL,
    [DSG_SERVICE_LEVEL_ID]           BIGINT          NULL,
    [FEASIBLE_SERVICE_LEVEL_ID]      BIGINT          NULL,
    [REC_SERVICE_LEVEL_ID]           BIGINT          NULL,
    [HAS_EM_NOTIFY_FLAG]             SMALLINT        NOT NULL,
    [REGION_ID]                      INT             NULL,
    [INBOUND_REGION_ID]              INT             NULL,
    [OUTBOUND_REGION_ID]             INT             NULL,
    [FINANCIAL_WT]                   NUMERIC (13, 2) NULL,
    [IS_BOOKING_REQUIRED]            SMALLINT        NOT NULL,
    [TOTAL_COST_EXCL_TAX]            NUMERIC (13, 2) NULL,
    [TOTAL_TAX_AMOUNT]               NUMERIC (13, 2) NULL,
    [IS_ASSOCIATED_TO_OUTBOUND]      SMALLINT        NULL,
    [RECEIVED_DTTM]                  DATETIME2 (7)   NULL,
    [BOOKING_ID]                     BIGINT          NULL,
    [IS_MISROUTED]                   SMALLINT        NULL,
    [FEASIBLE_CARRIER_CODE]          NVARCHAR (8)    NULL,
    [SHIPMENT_WIN_ADJ_FLAG]          SMALLINT        NULL,
    [DT_PARAM_SET_ID]                INT             NULL,
    [MERCHANDIZING_DEPARTMENT_ID]    BIGINT          NULL,
    [STATIC_ROUTE_ID]                INT             NULL,
    [IS_FILO]                        SMALLINT        NULL,
    [IS_COOLER_AT_NOSE]              SMALLINT        NULL,
    [AUTH_NBR]                       NVARCHAR (20)   NULL,
    [CONS_LOCN_ID]                   NVARCHAR (10)   NULL,
    [RTE_TYPE]                       NVARCHAR (2)    NULL,
    [TRLR_TYPE]                      NVARCHAR (3)    NULL,
    [TRLR_SIZE]                      NVARCHAR (3)    NULL,
    [CONS_ADDR_CODE]                 NVARCHAR (20)   NULL,
    [HUB_ID]                         BIGINT          NULL,
    [TRLR_GEN_CODE]                  NVARCHAR (1)    NULL,
    [MAX_NBR_OF_CTNS]                INT             NULL,
    [APPT_DOOR_SCHED_TYPE]           NVARCHAR (3)    NULL,
    [CREATED_SOURCE_TYPE]            SMALLINT        NOT NULL,
    [CREATED_SOURCE]                 NVARCHAR (32)   NULL,
    [CREATED_DTTM]                   DATETIME2 (7)   NOT NULL,
    [LAST_UPDATED_SOURCE_TYPE]       SMALLINT        NOT NULL,
    [LAST_UPDATED_SOURCE]            NVARCHAR (32)   NULL,
    [LAST_UPDATED_DTTM]              DATETIME2 (7)   NOT NULL,
    [DSG_SCNDR_CARRIER_CODE]         NVARCHAR (8)    NULL,
    [LH_PAYEE_CARRIER_CODE]          NVARCHAR (8)    NULL,
    [REC_BROKER_CARRIER_CODE]        NVARCHAR (8)    NULL,
    [REC_CARRIER_CODE]               NVARCHAR (8)    NULL,
    [LPN_ASSIGNMENT_STOPPED]         NCHAR (4)       NULL,
    [SEAL_NUMBER]                    NVARCHAR (10)   NULL,
    [HIBERNATE_VERSION]              BIGINT          NULL,
    [SHIP_GROUP_ID]                  NVARCHAR (30)   NULL,
    [RATE]                           NUMERIC (16, 4) NULL,
    [MONETARY_VALUE]                 NUMERIC (16, 4) NULL,
    [DOOR]                           NVARCHAR (20)   NULL,
    [RTE_TYPE_1]                     NVARCHAR (10)   NULL,
    [RTE_TYPE_2]                     NVARCHAR (10)   NULL,
    [SCHEDULED_PICKUP_DTTM]          DATETIME2 (7)   NULL,
    [MANIFEST_ID]                    INT             NULL,
    [DAYS_TO_DELIVER]                SMALLINT        NULL,
    [SED_GENERATED_FLAG]             NVARCHAR (1)    NULL,
    [SERV_AREA_CODE]                 NVARCHAR (3)    NULL,
    [TENDER_RESP_DEADLINE_DTTM]      DATETIME2 (7)   NULL,
    [PRINT_CONS_BOL]                 NVARCHAR (1)    NULL,
    [LEFT_WT]                        NUMERIC (13, 4) NULL,
    [RIGHT_WT]                       NUMERIC (13, 4) NULL,
    [LANE_NAME]                      NVARCHAR (50)   NULL,
    [DECLARED_VALUE]                 NUMERIC (16, 4) NULL,
    [DV_CURRENCY_CODE]               NVARCHAR (3)    NULL,
    [COD_AMOUNT]                     NUMERIC (13, 4) NULL,
    [CUSTOMER_ID]                    BIGINT          NULL,
    [CUST_FRGT_CHARGE]               NUMERIC (13, 2) NULL,
    [COD_CURRENCY_CODE]              NVARCHAR (3)    NULL,
    [PLANNED_WEIGHT]                 NUMERIC (13, 4) NULL,
    [WEIGHT_UOM_ID_BASE]             INT             NULL,
    [PLANNED_VOLUME]                 NUMERIC (13, 4) NULL,
    [VOLUME_UOM_ID_BASE]             INT             NULL,
    [SIZE1_VALUE]                    NUMERIC (13, 4) NULL,
    [SIZE1_UOM_ID]                   INT             NULL,
    [SIZE2_VALUE]                    NUMERIC (13, 4) NULL,
    [SIZE2_UOM_ID]                   INT             NULL,
    [ASSIGNED_SHIP_VIA]              NVARCHAR (4)    NULL,
    [INSURANCE_STATUS]               INT             NULL,
    [RTE_SWC_NBR]                    NVARCHAR (10)   NULL,
    [RTE_TO]                         NVARCHAR (10)   NULL,
    [BILL_OF_LADING_NUMBER]          NVARCHAR (30)   NULL,
    [TRAILER_NUMBER]                 NVARCHAR (20)   NULL,
    [TRANS_PLAN_OWNER]               SMALLINT        NULL,
    [Eff_Date]                       DATE            NOT NULL,
    [End_Date]                       DATE            NULL,
    [ActInd]                         CHAR (1)        NULL,
    [IsDeleted]                      CHAR (1)        NULL,
    [BatchID]                        BIGINT          NULL,
    [ProcessLogID]                   BIGINT          NULL,
    CONSTRAINT [PK_MANH_SHIPMENT] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [SHIPMENT_ID] ASC)
);
