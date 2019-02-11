﻿CREATE TABLE [MANH_ARC].[FACILITY] (
    [FACILITY_ID]                   INT             NOT NULL,
    [TC_COMPANY_ID]                 INT             NOT NULL,
    [BUSINESS_PARTNER_ID]           NVARCHAR (10)   NULL,
    [NAME]                          NVARCHAR (50)   NULL,
    [DESCRIPTION]                   NVARCHAR (75)   NULL,
    [ADDRESS_1]                     NVARCHAR (75)   NULL,
    [ADDRESS_2]                     NVARCHAR (75)   NULL,
    [ADDRESS_3]                     NVARCHAR (75)   NULL,
    [ADDRESS_KEY_1]                 NVARCHAR (23)   NULL,
    [CITY]                          NVARCHAR (40)   NULL,
    [STATE_PROV]                    NVARCHAR (3)    NULL,
    [POSTAL_CODE]                   NVARCHAR (10)   NULL,
    [COUNTY]                        NVARCHAR (40)   NULL,
    [COUNTRY_CODE]                  NVARCHAR (2)    NOT NULL,
    [LONGITUDE]                     NUMERIC (10, 4) NULL,
    [LATITUDE]                      NUMERIC (10, 4) NULL,
    [EIN_NBR]                       NVARCHAR (18)   NULL,
    [IATA_CODE]                     NVARCHAR (5)    NULL,
    [GLOBAL_LOCN_NBR]               NVARCHAR (13)   NULL,
    [TAX_ID]                        NVARCHAR (15)   NULL,
    [DUNS_NBR]                      NVARCHAR (9)    NULL,
    [INBOUNDS_RS_AREA_ID]           INT             NULL,
    [OUTBOUND_RS_AREA_ID]           INT             NULL,
    [INBOUND_REGION_ID]             INT             NULL,
    [OUTBOUND_REGION_ID]            INT             NULL,
    [FACILITY_TZ]                   SMALLINT        NOT NULL,
    [DROP_INDICATOR]                SMALLINT        NOT NULL,
    [HOOK_INDICATOR]                SMALLINT        NOT NULL,
    [HANDLER]                       SMALLINT        NOT NULL,
    [IS_SHIP_APPT_REQD]             SMALLINT        NOT NULL,
    [IS_RCV_APPT_REQD]              SMALLINT        NOT NULL,
    [TRACK_ONTIME_INDICATOR]        SMALLINT        NOT NULL,
    [ONTIME_PERF_METHOD]            NVARCHAR (8)    NULL,
    [LOAD_FACTOR_SIZE_VALUE]        NUMERIC (13, 2) NULL,
    [MARK_FOR_DELETION]             SMALLINT        NOT NULL,
    [CREATED_SOURCE_TYPE]           SMALLINT        NOT NULL,
    [CREATED_SOURCE]                NVARCHAR (50)   NOT NULL,
    [CREATED_DTTM]                  DATETIME2 (7)   NOT NULL,
    [LAST_UPDATED_SOURCE_TYPE]      SMALLINT        NOT NULL,
    [LAST_UPDATED_SOURCE]           NVARCHAR (32)   NOT NULL,
    [LAST_UPDATED_DTTM]             DATETIME2 (7)   NOT NULL,
    [ALLOW_OVERLAPPING_APPS]        SMALLINT        NOT NULL,
    [EARLY_TOLERANCE_POINT]         INT             NULL,
    [LATE_TOLERANCE_POINT]          INT             NULL,
    [EARLY_TOLERANCE_WINDOW]        INT             NULL,
    [LATE_TOLERANCE_WINDOW]         INT             NULL,
    [FACILITY_TYPE_BITS]            SMALLINT        NOT NULL,
    [PP_HANDLING_TIME]              INT             NULL,
    [STOP_CONSTRAINT_BITS]          SMALLINT        NULL,
    [IS_DOCK_SCHED_FAC]             SMALLINT        NULL,
    [ASN_COMMUNICATION_METHOD]      SMALLINT        NULL,
    [PICK_TIME]                     INT             NULL,
    [DISPATCH_INITIATION_TIME]      INT             NULL,
    [PAPERWORK_TIME]                INT             NULL,
    [VEHICLE_CHECK_TIME]            INT             NULL,
    [VISIT_GAP]                     SMALLINT        NULL,
    [MIN_HANDLING_TIME]             BIGINT          NULL,
    [IS_CREDIT_AVAILABLE]           SMALLINT        NOT NULL,
    [BUSINESS_GROUP_ID_1]           BIGINT          NULL,
    [BUSINESS_GROUP_ID_2]           BIGINT          NULL,
    [IS_OPERATIONAL]                SMALLINT        NOT NULL,
    [IS_MAINTENANCE_FACILITY]       SMALLINT        NOT NULL,
    [DRIVER_CHECK_IN_TIME]          INT             NULL,
    [DISPATCH_DTTM]                 DATETIME2 (7)   NULL,
    [DSP_DR_CONFIGURATION_ID]       BIGINT          NULL,
    [DROP_HOOK_TIME]                INT             NULL,
    [LOADING_END_TIME]              INT             NULL,
    [DRIVER_DEBRIEF_TIME]           INT             NULL,
    [ACCOUNT_CODE_NUMBER]           NVARCHAR (5)    NULL,
    [LOAD_FACTOR_MOT_ID]            BIGINT          NULL,
    [LOAD_UNLOAD_MOT_ID]            BIGINT          NULL,
    [MIN_TRAIL_FILL]                SMALLINT        NULL,
    [TANDEM_DROP_HOOK_TIME]         INT             NULL,
    [STORE_TYPE]                    SMALLINT        NULL,
    [DRIVEIN_TIME]                  INT             NULL,
    [CHECKIN_TIME]                  INT             NULL,
    [DRIVEOUT_TIME]                 INT             NULL,
    [CHECKOUT_TIME]                 INT             NULL,
    [CUTOFF_DTTM]                   DATETIME2 (7)   NULL,
    [MAX_TRAILER_YARD_TIME]         INT             NULL,
    [HAND_OVER_TIME]                INT             NULL,
    [OVER_BOOK_PERCENTAGE]          SMALLINT        NULL,
    [RECOMMENDATION_CRITERIA]       NVARCHAR (25)   NULL,
    [NBR_OF_SLOTS_TO_SHOW]          SMALLINT        NULL,
    [RESTRICT_FLEET_ASMT_TIME]      SMALLINT        NULL,
    [GROUP_ID]                      NVARCHAR (15)   NULL,
    [IS_VTBP]                       INT             NOT NULL,
    [AUTO_CREATE_SHIPMENT]          INT             NOT NULL,
    [LOGO_IMAGE_PATH]               NVARCHAR (255)  NULL,
    [GEN_LAST_SHIPMENT_LEG]         SMALLINT        NOT NULL,
    [DEF_DRIVER_TYPE_ID]            BIGINT          NULL,
    [DEF_TRACTOR_ID]                BIGINT          NULL,
    [DEF_EQUIPMENT_ID]              BIGINT          NULL,
    [DRIVER_AVAIL_HRS]              NUMERIC (5, 2)  NULL,
    [WHSE]                          NVARCHAR (3)    NULL,
    [OPEN_DATE]                     DATETIME2 (7)   NULL,
    [CLOSE_DATE]                    DATETIME2 (7)   NULL,
    [HOLD_DATE]                     DATETIME2 (7)   NULL,
    [GRP]                           NVARCHAR (4)    NULL,
    [CHAIN]                         NVARCHAR (4)    NULL,
    [ZONE]                          NVARCHAR (4)    NULL,
    [TERRITORY]                     NVARCHAR (4)    NULL,
    [REGION]                        NVARCHAR (4)    NULL,
    [DISTRICT]                      NVARCHAR (4)    NULL,
    [SHIP_MON]                      NVARCHAR (1)    NULL,
    [SHIP_TUE]                      NVARCHAR (1)    NULL,
    [SHIP_WED]                      NVARCHAR (1)    NULL,
    [SHIP_THU]                      NVARCHAR (1)    NULL,
    [SHIP_FRI]                      NVARCHAR (1)    NULL,
    [SHIP_SAT]                      NVARCHAR (1)    NULL,
    [SHIP_SU]                       NVARCHAR (1)    NULL,
    [ACCEPT_IRREG]                  NVARCHAR (1)    NULL,
    [WAVE_LABEL_TYPE]               NVARCHAR (2)    NULL,
    [PKG_SLIP_TYPE]                 NVARCHAR (2)    NULL,
    [PRINT_CODE]                    NVARCHAR (2)    NULL,
    [CARTON_CNT_TYPE]               NVARCHAR (3)    NULL,
    [SHIP_VIA]                      NVARCHAR (4)    NULL,
    [RTE_NBR]                       NVARCHAR (16)   NULL,
    [RTE_ATTR]                      NVARCHAR (30)   NULL,
    [RTE_TO]                        NVARCHAR (10)   NULL,
    [RTE_TYPE_1]                    NVARCHAR (10)   NULL,
    [RTE_TYPE_2]                    NVARCHAR (10)   NULL,
    [RTE_ZIP]                       NVARCHAR (11)   NULL,
    [SPL_INSTR_CODE_1]              NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_2]              NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_3]              NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_4]              NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_5]              NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_6]              NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_7]              NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_8]              NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_9]              NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_10]             NVARCHAR (2)    NULL,
    [ASSIGN_MERCH_TYPE]             NVARCHAR (1)    NULL,
    [ASSIGN_MERCH_GROUP]            NVARCHAR (1)    NULL,
    [ASSIGN_STORE_DEPT]             NVARCHAR (1)    NULL,
    [CARTON_LABEL_TYPE]             NVARCHAR (3)    NULL,
    [CARTON_CUBNG_INDIC]            SMALLINT        NOT NULL,
    [MAX_CTN]                       INT             NOT NULL,
    [MAX_PLT]                       INT             NOT NULL,
    [BUSN_UNIT_CODE]                NVARCHAR (10)   NULL,
    [USE_INBD_LPN_AS_OUTBD_LPN]     NVARCHAR (1)    NULL,
    [PRINT_COO]                     NCHAR (4)       NULL,
    [PRINT_INV]                     NCHAR (4)       NULL,
    [PRINT_SED]                     NCHAR (4)       NULL,
    [PRINT_CANADIAN_CUST_INVC_FLAG] NCHAR (4)       NULL,
    [PRINT_DOCK_RCPT_FLAG]          NCHAR (4)       NULL,
    [PRINT_NAFTA_COO_FLAG]          NCHAR (4)       NULL,
    [PRINT_OCEAN_BOL_FLAG]          NCHAR (4)       NULL,
    [PRINT_PKG_LIST_FLAG]           NCHAR (4)       NULL,
    [PRINT_SHPR_LTR_OF_INSTR_FLAG]  NCHAR (4)       NULL,
    [AUDIT_TRANSACTION]             NVARCHAR (100)  NULL,
    [AUDIT_PARTY_ID]                INT             NULL,
    [CAPTURE_OTHER_MA]              SMALLINT        NULL,
    [HIBERNATE_VERSION]             BIGINT          NULL,
    [STORE_TYPE_GROUPING]           NVARCHAR (2)    NULL,
    [LOAD_RATE]                     NUMERIC (16, 4) NULL,
    [UNLOAD_RATE]                   NUMERIC (16, 4) NULL,
    [HANDLING_RATE]                 NUMERIC (16, 4) NULL,
    [LOAD_UNLOAD_SIZE_UOM_ID]       BIGINT          NULL,
    [LOAD_FACTOR_SIZE_UOM_ID]       BIGINT          NULL,
    [PARCEL_LENGTH_RATIO]           NUMERIC (16, 4) NULL,
    [PARCEL_WIDTH_RATIO]            NUMERIC (16, 4) NULL,
    [PARCEL_HEIGHT_RATIO]           NUMERIC (16, 4) NULL,
    [METER_NUMBER]                  BIGINT          NULL,
    [DIRECT_DELIVERY_ALLOWED]       SMALLINT        NULL,
    [TRACK_EQUIP_ID_FLAG]           SMALLINT        NULL,
    [STAT_CODE]                     SMALLINT        NULL,
    [HANDLES_NON_MACHINEABLE]       SMALLINT        NULL,
    [MAINTAINS_PERPETUAL_INVTY]     SMALLINT        NOT NULL,
    [IS_CUST_OWNED_FACILITY]        SMALLINT        NOT NULL,
    [FLOWTHRU_ALLOC_SORT_PRTY]      NVARCHAR (8)    NULL,
    [RLS_HOLD_DATE]                 DATETIME2 (7)   NULL,
    [RE_COMPUTE_FEASIBLE_EQUIPMENT] SMALLINT        NULL,
    [SMARTPOST_DC_NUMBER]           NVARCHAR (2)    NULL,
    [ADDRESS_TYPE]                  NVARCHAR (2)    NULL,
    [SPLC_CODE]                     NVARCHAR (9)    NULL,
    [ERPC_CODE]                     NVARCHAR (15)   NULL,
    [R260_CODE]                     NVARCHAR (15)   NULL,
    [MAX_WAIT_TIME]                 INT             NULL,
    [FREE_WAIT_TIME]                INT             NULL,
    [IATA_SCR_NBR]                  NVARCHAR (3)    NULL,
    [PICKUP_AT_STORE]               SMALLINT        NOT NULL,
    [SHIP_TO_STORE]                 SMALLINT        NOT NULL,
    [SHIP_FROM_FACILITY]            SMALLINT        NOT NULL,
    [TRANS_PLAN_FLOW]               SMALLINT        NULL,
    [AVG_HNDLG_COST_PER_LN]         NUMERIC (16, 4) NULL,
    [AVG_HNDLG_COST_PER_LN_CURCODE] NVARCHAR (3)    NULL,
    [Eff_Date]                      DATE            NOT NULL,
    [End_Date]                      DATE            NULL,
    [ActInd]                        CHAR (1)        NULL,
    [IsDeleted]                     CHAR (1)        NULL,
    [BatchID]                       BIGINT          NULL,
    [ProcessLogID]                  BIGINT          NULL,
    CONSTRAINT [PK_MANH_FACILITY] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [FACILITY_ID] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];





