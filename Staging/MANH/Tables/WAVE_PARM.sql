﻿CREATE TABLE [MANH].[WAVE_PARM] (
    [WAVE_PARM_ID]                 INT             NOT NULL,
    [WHSE]                         NVARCHAR (3)    NOT NULL,
    [DAY_OF_WEEK]                  SMALLINT        NOT NULL,
    [SHIFT_NBR]                    NVARCHAR (2)    NOT NULL,
    [REC_TYPE]                     NVARCHAR (1)    NULL,
    [WAVE_NBR]                     NVARCHAR (12)   NULL,
    [WAVE_DESC]                    NVARCHAR (35)   NULL,
    [MAX_UNITS]                    INT             NOT NULL,
    [MAX_ORDERS]                   INT             NOT NULL,
    [WAVE_CMPL_STAT_CODE]          SMALLINT        NOT NULL,
    [WAVE_STAT_CODE]               SMALLINT        NOT NULL,
    [WAVE_STAT_DATE_TIME]          DATETIME2 (7)   NULL,
    [PICK_STAT_CODE]               SMALLINT        NOT NULL,
    [PACK_STAT_CODE]               SMALLINT        NOT NULL,
    [REPL_STAT_CODE]               SMALLINT        NOT NULL,
    [INDUC_STAT_CODE]              SMALLINT        NOT NULL,
    [MISC_STAT_CODE_1]             SMALLINT        NOT NULL,
    [MISC_STAT_CODE_2]             SMALLINT        NOT NULL,
    [SCHED_DLVRY_DATE]             DATETIME2 (7)   NULL,
    [SCHED_WAVE]                   NVARCHAR (1)    NULL,
    [NBR_OF_PKTS]                  INT             NOT NULL,
    [NBR_OF_CARTONS]               INT             NOT NULL,
    [NBR_OF_LOCN]                  INT             NOT NULL,
    [NBR_OF_CHUTE]                 INT             NOT NULL,
    [NBR_OF_PLT_POSN]              INT             NOT NULL,
    [ASSIGN_PLT_POSN]              SMALLINT        NOT NULL,
    [WAVE_PROC_TYPE]               SMALLINT        NOT NULL,
    [WAVE_PARM_TEMPLATE_ID]        INT             NOT NULL,
    [FORCE_WPT]                    NVARCHAR (1)    NULL,
    [REPL_TRIG]                    NVARCHAR (1)    NULL,
    [RTE_W_WAVE]                   NVARCHAR (1)    NULL,
    [CHG_PKT_QTY]                  NVARCHAR (1)    NULL,
    [LABEL_PRTR_REQSTR]            NVARCHAR (255)  NULL,
    [RPT_PRTR_REQSTR]              NVARCHAR (255)  NULL,
    [CARTON_BREAK_ON_AREA_CHG]     NVARCHAR (1)    NULL,
    [CARTON_BREAK_ON_ZONE_CHG]     NVARCHAR (1)    NULL,
    [CARTON_BREAK_ON_AISLE_CHG]    NVARCHAR (1)    NULL,
    [PKT_CONSOL_REJECT_RULE]       NVARCHAR (1)    NULL,
    [ASSIGN_PRO_NBR]               NVARCHAR (1)    NULL,
    [SHIP_VIA]                     NVARCHAR (4)    NULL,
    [SWC_NBR]                      NVARCHAR (15)   NULL,
    [MANIF_NBR]                    NVARCHAR (20)   NULL,
    [BOL]                          NVARCHAR (20)   NULL,
    [SHPMT_NBR]                    NVARCHAR (20)   NULL,
    [SWC_NBR_FLAG]                 NVARCHAR (1)    NULL,
    [MANIF_FLAG]                   NVARCHAR (1)    NULL,
    [BOL_FLAG]                     NVARCHAR (1)    NULL,
    [SHPMT_FLAG]                   NVARCHAR (1)    NULL,
    [CLEAR_SPUR_LOCN]              NVARCHAR (1)    NULL,
    [SPUR]                         NVARCHAR (4)    NULL,
    [XCEED_CAPCTY_FLAG]            NVARCHAR (1)    NULL,
    [FILL_CAPCTY_STRK]             SMALLINT        NOT NULL,
    [CONSL_LOCN_CLEAR_METHD]       NVARCHAR (1)    NULL,
    [PERP_PLT_POSN]                NVARCHAR (1)    NULL,
    [NBR_OF_LABELS_PER_SPOOL]      INT             NOT NULL,
    [NBR_OF_LABELS_PER_ROW]        SMALLINT        NOT NULL,
    [PKT_CONSOL_PROF]              NVARCHAR (3)    NULL,
    [PKT_CONSOL_DETRM_TYPE]        NVARCHAR (3)    NULL,
    [SKU_CNSTR]                    NVARCHAR (1)    NULL,
    [SKU_SUB]                      NVARCHAR (1)    NULL,
    [USE_INBD_LPN_AS_OUTBD_LPN]    NVARCHAR (1)    NULL,
    [CARTON_TYPE]                  NVARCHAR (3)    NULL,
    [NBR_OF_PIKRS_PAKRS]           SMALLINT        NOT NULL,
    [AVG_PIKS_PER_PIKR]            NUMERIC (5, 1)  NOT NULL,
    [AVG_TMU_PER_PIKR]             NUMERIC (6, 2)  NOT NULL,
    [PICK_LOCN_ASSIGN_TYPE]        NVARCHAR (3)    NULL,
    [DIFF_PIKR_ON_AREA_CHG]        NVARCHAR (1)    NULL,
    [DIFF_PIKR_ON_ZONE_CHG]        NVARCHAR (1)    NULL,
    [DIFF_PIKR_ON_AISLE_CHG]       NVARCHAR (1)    NULL,
    [DIFF_PIKR_ON_BAY_CHG]         NVARCHAR (1)    NULL,
    [DIFF_PIKR_ON_LVL_CHG]         NVARCHAR (1)    NULL,
    [DIFF_PIKR_ON_POSN_CHG]        NVARCHAR (1)    NULL,
    [SAME_PIKR_FOR_AREA]           NVARCHAR (1)    NULL,
    [SAME_PIKR_FOR_ZONE]           NVARCHAR (1)    NULL,
    [SAME_PIKR_FOR_AISLE]          NVARCHAR (1)    NULL,
    [SAME_PIKR_FOR_BAY]            NVARCHAR (1)    NULL,
    [SAME_PIKR_FOR_LVL]            NVARCHAR (1)    NULL,
    [SAME_PIKR_FOR_POSN]           NVARCHAR (1)    NULL,
    [OK_TO_PICK]                   NVARCHAR (1)    NULL,
    [OK_TO_PACK]                   NVARCHAR (1)    NULL,
    [OK_TO_REPL]                   NVARCHAR (1)    NULL,
    [OK_TO_INDUC]                  NVARCHAR (1)    NULL,
    [OK_TO_MISC_1]                 NVARCHAR (1)    NULL,
    [OK_TO_MISC_2]                 NVARCHAR (1)    NULL,
    [START_PICK_DATE_TIME]         DATETIME2 (7)   NULL,
    [END_PICK_DATE_TIME]           DATETIME2 (7)   NULL,
    [START_PACK_DATE_TIME]         DATETIME2 (7)   NULL,
    [END_PACK_DATE_TIME]           DATETIME2 (7)   NULL,
    [START_REPL_DATE_TIME]         DATETIME2 (7)   NULL,
    [END_REPL_DATE_TIME]           DATETIME2 (7)   NULL,
    [START_INDUC_DATE_TIME]        DATETIME2 (7)   NULL,
    [END_INDUC_DATE_TIME]          DATETIME2 (7)   NULL,
    [START_MISC_1_DATE_TIME]       DATETIME2 (7)   NULL,
    [END_MISC_1_DATE_TIME]         DATETIME2 (7)   NULL,
    [START_MISC_2_DATE_TIME]       DATETIME2 (7)   NULL,
    [END_MISC_2_DATE_TIME]         DATETIME2 (7)   NULL,
    [CMPLTD_DATE_TIME]             DATETIME2 (7)   NULL,
    [GRP_PKT_BY_SWC_NBR]           NVARCHAR (1)    NULL,
    [PULL_ALL_SWC]                 NVARCHAR (1)    NULL,
    [ZONE_PICK_METHOD]             NVARCHAR (1)    NULL,
    [WAVE_TYPE_INDIC]              NVARCHAR (1)    NULL,
    [REJECT_DISTRO_RULE]           NVARCHAR (1)    NULL,
    [RETAIL_MAX_UNITS]             INT             NOT NULL,
    [RETAIL_UNIT_PCNT_OVER]        NUMERIC (5, 2)  NOT NULL,
    [RETAIL_MAX_SKUS]              INT             NOT NULL,
    [RETAIL_MAX_STORES]            INT             NOT NULL,
    [RETAIL_MAX_ROUTES]            INT             NOT NULL,
    [BULK_WAVE_BAL_FROM_ACTV]      NVARCHAR (1)    NULL,
    [PROC_ATTR_1]                  NVARCHAR (2)    NULL,
    [PROC_ATTR_2]                  NVARCHAR (2)    NULL,
    [PROC_ATTR_3]                  NVARCHAR (2)    NULL,
    [PROC_ATTR_4]                  NVARCHAR (2)    NULL,
    [PROC_ATTR_5]                  NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_1]             NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_2]             NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_3]             NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_4]             NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_5]             NVARCHAR (2)    NULL,
    [CREATE_DATE_TIME]             DATETIME2 (7)   NULL,
    [MOD_DATE_TIME]                DATETIME2 (7)   NULL,
    [USER_ID]                      NVARCHAR (15)   NULL,
    [PRT_CS_LABELS_W_WAVE]         NVARCHAR (1)    NULL,
    [CREATE_SHPMT]                 NVARCHAR (1)    NULL,
    [CREATE_LOAD]                  NVARCHAR (1)    NULL,
    [CHG_WO_QTY]                   NVARCHAR (1)    NULL,
    [PACK_CMPL_W_WAVE]             NVARCHAR (1)    NULL,
    [DLVRY_WIN_RANGE_CODE]         NVARCHAR (10)   NULL,
    [DFLT_PLT_TYPE]                NVARCHAR (3)    NULL,
    [PACK_WAVE_PARM_ID]            INT             NOT NULL,
    [CAT_PARM_ID]                  INT             NOT NULL,
    [DESEL_SNGL_FLAG]              NVARCHAR (1)    NULL,
    [ALLOC_TYPE]                   NVARCHAR (3)    NULL,
    [FORCE_ALLOC_TYPE]             NVARCHAR (1)    NULL,
    [FORCE_PICK_LOCN_ASSIGN_TYPE]  NVARCHAR (1)    NULL,
    [BULK_PICK_ZONE]               NVARCHAR (3)    NULL,
    [CONSOL_PLTZ_CARTONS_FLAG]     SMALLINT        NOT NULL,
    [ACTV_REPL_ORGN]               NVARCHAR (1)    NULL,
    [MAX_CARTONS]                  INT             NOT NULL,
    [MAX_PICK_WAVES]               INT             NOT NULL,
    [HOLD_PRINT]                   SMALLINT        NOT NULL,
    [SUPPR_PR40_REPL]              SMALLINT        NOT NULL,
    [COMB_4050_REPL]               SMALLINT        NOT NULL,
    [SUPPR_PR60_REPL]              SMALLINT        NOT NULL,
    [LOAD_PLAN]                    NVARCHAR (1)    NULL,
    [ASSIGN_NEW_LOAD]              NVARCHAR (1)    NULL,
    [RESV_BAL]                     NVARCHAR (1)    NULL,
    [RESV_BALANCE_INT]             SMALLINT        NOT NULL,
    [ORDER_RND_FLAG]               NVARCHAR (1)    NULL,
    [ALLOC_REMAIN]                 NVARCHAR (1)    NULL,
    [MHE_FLAG]                     NVARCHAR (1)    NULL,
    [MHE_ONE_SEND_FLAG]            NVARCHAR (1)    NULL,
    [MHE_PICK_DEST_LEVEL]          NVARCHAR (1)    NULL,
    [SHIP_DATE_TIME]               DATETIME2 (7)   NULL,
    [COLLATE_PRTR_REQSTR]          NVARCHAR (255)  NULL,
    [MAX_DYNAMIC_LOCN_OPTN]        SMALLINT        NULL,
    [FORCE_SHIP_DATE_FLAG]         SMALLINT        NOT NULL,
    [MAX_WT]                       NUMERIC (13, 4) NOT NULL,
    [MAX_VOL]                      NUMERIC (13, 4) NOT NULL,
    [BULK_PICK_ASSIGN_TYPE]        NCHAR (16)      NULL,
    [REPL_WAVE]                    NVARCHAR (1)    NOT NULL,
    [RESEQ_ACTIV_LOC]              NVARCHAR (1)    NOT NULL,
    [VOCO_GRP_CARTONS_TO_TASK]     SMALLINT        NOT NULL,
    [VOCO_MAX_CARTON_ON_TASK]      SMALLINT        NULL,
    [WM_VERSION_ID]                INT             NOT NULL,
    [TC_COMPANY_ID]                INT             NULL,
    [BatchID]                      BIGINT          NULL,
    [ProcessLogID]                 BIGINT          NULL,
    [ALLOC_LOGGING]                INT             NULL,
    [CARTON_BREAK_ON_LOCN_CLASS]   NVARCHAR (1)    NULL,
    [CARTON_TYPE_EVENT_ID]         INT             NULL,
    [CHASE_WAVE]                   NVARCHAR (1)    NULL,
    [CHUTE_ASSIGN_TYPE_EVENT_ID]   INT             NULL,
    [CREATED_DTTM]                 DATETIME2 (7)   NULL,
    [DEFAULT_QUEUE_PRTY]           INT             NULL,
    [DESELECT_UNALLOCATED_SINGLES] INT             NULL,
    [IGNORE_SINGLES_PROCESSING]    INT             NULL,
    [LAST_UPDATED_DTTM]            DATETIME2 (7)   NULL,
    [LPN_BRK_ATTRIB_EVENT_ID]      INT             NULL,
    [MAX_ORDER_LINES]              INT             NULL,
    CONSTRAINT [PK_MANH_WAVE_PARM] PRIMARY KEY CLUSTERED ([WAVE_PARM_ID] ASC)
);



