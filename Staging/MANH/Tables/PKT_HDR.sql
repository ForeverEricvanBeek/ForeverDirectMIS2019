﻿CREATE TABLE [MANH].[PKT_HDR] (
    [PKT_CTRL_NBR]            NVARCHAR (10)   NOT NULL,
    [WHSE]                    NVARCHAR (3)    NULL,
    [PKT_NBR]                 NVARCHAR (11)   NULL,
    [PKT_SFX]                 NVARCHAR (3)    NULL,
    [ORD_NBR]                 NVARCHAR (8)    NULL,
    [ORD_SFX]                 NVARCHAR (3)    NULL,
    [SHIPTO]                  NVARCHAR (10)   NULL,
    [SHIPTO_NAME]             NVARCHAR (35)   NULL,
    [SHIPTO_ADDR_1]           NVARCHAR (75)   NULL,
    [SHIPTO_ADDR_2]           NVARCHAR (75)   NULL,
    [SHIPTO_ADDR_3]           NVARCHAR (75)   NULL,
    [SHIPTO_CITY]             NVARCHAR (40)   NULL,
    [SHIPTO_STATE]            NVARCHAR (3)    NULL,
    [SHIPTO_ZIP]              NVARCHAR (11)   NULL,
    [SHIPTO_CNTRY]            NVARCHAR (4)    NULL,
    [SOLDTO]                  NVARCHAR (10)   NULL,
    [SOLDTO_NAME]             NVARCHAR (35)   NULL,
    [SOLDTO_ADDR_1]           NVARCHAR (75)   NULL,
    [SOLDTO_ADDR_2]           NVARCHAR (75)   NULL,
    [SOLDTO_ADDR_3]           NVARCHAR (75)   NULL,
    [SOLDTO_CITY]             NVARCHAR (40)   NULL,
    [SOLDTO_STATE]            NVARCHAR (3)    NULL,
    [SOLDTO_ZIP]              NVARCHAR (11)   NULL,
    [SOLDTO_CNTRY]            NVARCHAR (4)    NULL,
    [TEL_NBR]                 NVARCHAR (15)   NULL,
    [DC_CTR_NBR]              NVARCHAR (8)    NULL,
    [XFER_WHSE]               NVARCHAR (3)    NULL,
    [ACCT_RCVBL_ACCT_NBR]     NVARCHAR (10)   NULL,
    [ACCT_RCVBL_CODE]         NVARCHAR (2)    NULL,
    [CUST_PO_NBR]             NVARCHAR (26)   NULL,
    [CUST_DEPT]               NVARCHAR (8)    NULL,
    [APPT_NBR]                NVARCHAR (15)   NULL,
    [NBR_OF_TIMES_APPT_CHGD]  NUMERIC (2)     NOT NULL,
    [APPT_DATE]               DATETIME2 (7)   NULL,
    [APPT_MADE_BY_ID]         NVARCHAR (3)    NULL,
    [STORE_NBR]               NVARCHAR (16)   NULL,
    [STORE_TYPE]              NVARCHAR (2)    NULL,
    [ADVT_CODE]               NVARCHAR (2)    NULL,
    [ADVT_DATE]               DATETIME2 (7)   NULL,
    [VENDOR_NBR]              NVARCHAR (12)   NULL,
    [SHIP_VIA]                NVARCHAR (4)    NULL,
    [PRTY_CODE]               NVARCHAR (2)    NULL,
    [PRTY_SFX]                NVARCHAR (2)    NULL,
    [TERR_CODE]               NVARCHAR (3)    NULL,
    [MANG_TERR]               NVARCHAR (3)    NULL,
    [BACK_ORD_FLAG]           NVARCHAR (1)    NULL,
    [ORD_DATE]                DATETIME2 (7)   NULL,
    [PKT_GENRTN_DATE_TIME]    DATETIME2 (7)   NULL,
    [START_SHIP_DATE]         DATETIME2 (7)   NULL,
    [STOP_SHIP_DATE]          DATETIME2 (7)   NULL,
    [SCHED_DLVRY_DATE]        DATETIME2 (7)   NULL,
    [STOP_SHIP_RULE]          NVARCHAR (2)    NULL,
    [TERMS_CODE]              NVARCHAR (2)    NULL,
    [TERMS_DESC]              NVARCHAR (30)   NULL,
    [TERMS_PCNT]              NUMERIC (5, 2)  NOT NULL,
    [PRE_STIKR_CODE]          NVARCHAR (1)    NULL,
    [SHIP_W_CTRL_NBR]         NVARCHAR (15)   NULL,
    [SWC_NBR_SEQ]             INT             NOT NULL,
    [ORD_NBR_FOR_SWC]         INT             NOT NULL,
    [NBR_ORDS_FOR_SWC]        INT             NOT NULL,
    [SHPMT_NBR]               NVARCHAR (20)   NULL,
    [PNH_FLAG]                NVARCHAR (1)    NULL,
    [CARTON_CUBNG_INDIC]      INT             NOT NULL,
    [CARTON_LABEL_TYPE]       NVARCHAR (3)    NULL,
    [WAVE_LABEL_TYPE]         NVARCHAR (2)    NULL,
    [NBR_OF_PAKNG_SLIPS]      INT             NOT NULL,
    [PKT_TYPE]                NVARCHAR (2)    NULL,
    [PACK_SLIP_PRT_CNT]       INT             NOT NULL,
    [SEL_RULE_PRTY]           INT             NOT NULL,
    [AUTO_INVC_STAT_CODE]     INT             NOT NULL,
    [REPL_FLAG]               NVARCHAR (1)    NULL,
    [INVN_SHRTG_FLAG]         NVARCHAR (1)    NULL,
    [CUST_RTE]                NVARCHAR (1)    NULL,
    [RTE_GUIDE_NBR]           NVARCHAR (50)   NULL,
    [CONSOL_NBR]              NVARCHAR (10)   NULL,
    [RTE_ATTR]                NVARCHAR (30)   NULL,
    [RTE_TO]                  NVARCHAR (10)   NULL,
    [RTE_TYPE_1]              NVARCHAR (10)   NULL,
    [RTE_TYPE_2]              NVARCHAR (10)   NULL,
    [RTE_ZIP]                 NVARCHAR (11)   NULL,
    [EST_WT_BRIDGED]          NUMERIC (13, 4) NOT NULL,
    [EST_CARTON_BRIDGED]      INT             NOT NULL,
    [TOTAL_DLRS_UNDISC]       NUMERIC (11, 2) NOT NULL,
    [TOTAL_DLRS_DISC]         NUMERIC (11, 2) NOT NULL,
    [DISC_DATE]               DATETIME2 (7)   NULL,
    [NBR_OF_HNGR]             INT             NOT NULL,
    [ADDR_CODE]               NVARCHAR (8)    NULL,
    [BOL]                     NVARCHAR (20)   NULL,
    [TRLR_STOP_SEQ_NBR]       INT             NOT NULL,
    [MANIF_TYPE]              NVARCHAR (1)    NULL,
    [PROD_VALUE]              NUMERIC (11, 2) NOT NULL,
    [MAX_CARTON_WT]           NUMERIC (13, 4) NOT NULL,
    [MAX_CARTON_UNITS]        NUMERIC (9, 2)  NOT NULL,
    [FIRST_ZONE]              NVARCHAR (4)    NULL,
    [LAST_ZONE]               NVARCHAR (4)    NULL,
    [NBR_OF_ZONES]            INT             NOT NULL,
    [SHIPTO_WHSE]             NVARCHAR (3)    NULL,
    [PARTL_CARTON_MIN_WT]     NUMERIC (13, 4) NOT NULL,
    [PARTL_CARTON_OPTN]       NVARCHAR (1)    NULL,
    [MAJOR_PKT_GRP_ATTR]      NVARCHAR (50)   NULL,
    [PKT_CONSOL_PROF]         NVARCHAR (3)    NULL,
    [PACK_SLIP_TYPE]          NVARCHAR (2)    NULL,
    [THRD_PARTY_BILL]         NVARCHAR (20)   NULL,
    [WHSE_XFER_FLAG]          NVARCHAR (1)    NULL,
    [SPL_INSTR_CODE_1]        NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_2]        NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_3]        NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_4]        NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_5]        NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_6]        NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_7]        NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_8]        NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_9]        NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_10]       NVARCHAR (2)    NULL,
    [CREATE_DATE_TIME]        DATETIME2 (7)   NULL,
    [MOD_DATE_TIME]           DATETIME2 (7)   NULL,
    [USER_ID]                 NVARCHAR (15)   NULL,
    [ADDR_VALID]              NVARCHAR (1)    NULL,
    [PO_TYPE]                 NVARCHAR (4)    NULL,
    [SHIPTO_CONTACT]          NVARCHAR (30)   NULL,
    [PLAN_SHPMT_NBR]          NVARCHAR (20)   NULL,
    [PLAN_LOAD_NBR]           NVARCHAR (20)   NULL,
    [BOL_BREAK_ATTR]          NVARCHAR (3)    NULL,
    [FREIGHT_TERMS]           NVARCHAR (1)    NULL,
    [EST_VOL_BRIDGED]         NUMERIC (13, 4) NOT NULL,
    [EST_CARTON]              INT             NOT NULL,
    [EARLIEST_DLVRY_TIME]     NVARCHAR (4)    NULL,
    [CONS_ACCT_NBR]           NVARCHAR (10)   NULL,
    [IMPORTER_DEFN]           NVARCHAR (1)    NULL,
    [FRT_FORWARDER_ACCT_NBR]  NVARCHAR (10)   NULL,
    [BILL_ACCT_NBR]           NVARCHAR (10)   NULL,
    [DOCS_ONLY_SHPMT]         NVARCHAR (1)    NULL,
    [PARTIES_RELATED]         NVARCHAR (1)    NULL,
    [COD_FUNDS]               NVARCHAR (1)    NULL,
    [FTSR_NBR]                NVARCHAR (32)   NULL,
    [CUST_BROKER_ACCT_NBR]    NVARCHAR (10)   NULL,
    [PLAN_BOL]                NVARCHAR (20)   NULL,
    [PLAN_MASTER_BOL]         NVARCHAR (20)   NULL,
    [RTE_ID]                  NVARCHAR (16)   NULL,
    [INTL_GOODS_DESC]         NVARCHAR (35)   NULL,
    [DUTY_AND_TAX]            NUMERIC (9, 4)  NOT NULL,
    [PORT_OF_LOADING]         NVARCHAR (19)   NULL,
    [PORT_OF_DISCHARGE]       NVARCHAR (19)   NULL,
    [PLT_CUBNG_INDIC]         INT             NOT NULL,
    [SRL_NBR_TRK_FLAG]        INT             NOT NULL,
    [SNGL_UNIT_FLAG]          NVARCHAR (1)    NULL,
    [PLAN_ID]                 NVARCHAR (11)   NULL,
    [SCHED_DLVRY_DATE_END]    DATETIME2 (7)   NULL,
    [TRLR_SIZE]               NVARCHAR (3)    NULL,
    [TRLR_TYPE]               NVARCHAR (3)    NULL,
    [IS_HAZMAT_FLAG]          NVARCHAR (1)    NULL,
    [TMS_PROC]                NVARCHAR (2)    NULL,
    [TMS_PO_FLAG]             NVARCHAR (1)    NULL,
    [LANG_ID]                 NVARCHAR (3)    NULL,
    [BUSN_UNIT_CODE]          NVARCHAR (10)   NULL,
    [DSGNATED_MODE_CODE]      NVARCHAR (4)    NULL,
    [DSGNATED_SERV_LVL]       NVARCHAR (8)    NULL,
    [SHIPTO_CNTY]             NVARCHAR (40)   NULL,
    [DEST_DOCK_DOOR]          NVARCHAR (20)   NULL,
    [IS_PERISH_FLAG]          NVARCHAR (1)    NULL,
    [SHPR_ORD_ID]             NVARCHAR (50)   NULL,
    [FRT_CLASS]               NVARCHAR (5)    NULL,
    [TEMP_ZONE]               NVARCHAR (1)    NULL,
    [TRANSPRT_RESP_CODE]      NVARCHAR (10)   NULL,
    [ZONE_SKIP]               NVARCHAR (1)    NULL,
    [PATH_ID]                 INT             NOT NULL,
    [INIT_SHIP_VIA]           NVARCHAR (4)    NULL,
    [SHPR_ID]                 NVARCHAR (20)   NULL,
    [HUB_ID]                  INT             NOT NULL,
    [DEST_AIRPORT]            NVARCHAR (20)   NULL,
    [DEPART_AIRPORT]          NVARCHAR (20)   NULL,
    [ORGN_DOCK]               NVARCHAR (4)    NULL,
    [EST_PALLET]              INT             NOT NULL,
    [EST_PALLET_BRIDGED]      INT             NOT NULL,
    [PRE_PACK_FLAG]           INT             NOT NULL,
    [PROC_RTL_RTE_RULE]       NVARCHAR (1)    NULL,
    [CURR_CODE]               NVARCHAR (10)   NULL,
    [PARENT_ORD_ID]           BIGINT          NOT NULL,
    [MONETARY_VALUE]          NUMERIC (13, 2) NOT NULL,
    [MV_CURRENCY_CODE]        NVARCHAR (3)    NULL,
    [INCOTERM_ID]             NVARCHAR (100)  NULL,
    [COMMODITY_CODE]          NVARCHAR (35)   NULL,
    [UN_NBR]                  NVARCHAR (16)   NULL,
    [TMS_ORD_TYPE]            NVARCHAR (32)   NULL,
    [PROD_SCHED_REF_NBR]      NVARCHAR (32)   NULL,
    [IS_CUST_PICKUP_FLAG]     NVARCHAR (1)    NULL,
    [PLANNING_ORGN]           NVARCHAR (16)   NULL,
    [PLANNING_DEST]           NVARCHAR (16)   NULL,
    [IS_PARTL_PLAN_FLAG]      NVARCHAR (1)    NULL,
    [IS_DIRECT_ALLOW_FLAG]    NVARCHAR (1)    NULL,
    [PRIMARY_MAXI_ADDR_NBR]   NVARCHAR (10)   NULL,
    [SECONDARY_MAXI_ADDR_NBR] NVARCHAR (8)    NULL,
    [GLOBAL_LOCN_NBR]         NVARCHAR (13)   NULL,
    [CD_MASTER_ID]            BIGINT          NOT NULL,
    [DUTY_TAX_ACCT_NBR]       NVARCHAR (40)   NULL,
    [DUTY_TAX_PAYMENT_TYPE]   INT             NULL,
    [PKT_HDR_ID]              BIGINT          NOT NULL,
    [WM_VERSION_ID]           INT             NOT NULL,
    [PKT_CONSOL_PROF_HDR_ID]  BIGINT          NULL,
    [ORIGINAL_TC_ORDER_ID]    NVARCHAR (50)   NULL,
    [PICK_WAVE_NBR]           NVARCHAR (12)   NULL,
    [SHIP_WAVE_NBR]           NVARCHAR (12)   NULL,
    [RTE_WAVE_NBR]            NVARCHAR (12)   NULL,
    [RTE_SWC_NBR]             NVARCHAR (10)   NULL,
    [STAT_CODE]               INT             NOT NULL,
    [STAGE_INDIC]             INT             NOT NULL,
    [TOTAL_CARTON]            BIGINT          NOT NULL,
    [TOTAL_NBR_OF_PLT]        BIGINT          NOT NULL,
    [CONSOL_LOCN_ID]          NVARCHAR (10)   NULL,
    [CONSOL_PROFL_ID]         NVARCHAR (2)    NULL,
    [MAJOR_MINOR_PKT]         NVARCHAR (1)    NULL,
    [MAJOR_PKT_CTRL_NBR]      NVARCHAR (10)   NULL,
    [PKT_PRT_DATE_TIME]       DATETIME2 (7)   NULL,
    [CANCEL_DATE_TIME]        DATETIME2 (7)   NULL,
    [SHIP_DATE_TIME]          DATETIME2 (7)   NULL,
    [OBSHPMT_CREATED_WAVE]    NVARCHAR (1)    NULL,
    [LOAD_CREATED_WAVE]       NVARCHAR (1)    NULL,
    [VAS_INDIC]               INT             NOT NULL,
    [PKT_GRP_CODE]            NVARCHAR (3)    NULL,
    [CHUTE_ID]                NVARCHAR (10)   NULL,
    [PACK_WAVE_NBR]           NVARCHAR (15)   NULL,
    [RTL_PKT_FLAG]            NVARCHAR (1)    NULL,
    [ADDR_ONLY_PKT]           INT             NOT NULL,
    [SEL_RULE_ID]             BIGINT          NOT NULL,
    [TMS_FLAG]                NVARCHAR (1)    NULL,
    [TMS_STAT_CODE]           INT             NOT NULL,
    [TMS_TO_ID]               NVARCHAR (50)   NULL,
    [MHE_FLAG]                NVARCHAR (1)    NULL,
    [MHE_ORD_STATE]           NVARCHAR (2)    NULL,
    [REPRT_CNT]               INT             NULL,
    [REPL_WAVE_NBR]           NVARCHAR (12)   NULL,
    [TOTAL_NBR_OF_UNITS]      NUMERIC (11, 2) NOT NULL,
    [SHPNG_CHRG]              NUMERIC (11, 2) NOT NULL,
    [HNDL_CHRG]               NUMERIC (11, 2) NOT NULL,
    [INSUR_CHRG]              NUMERIC (11, 2) NOT NULL,
    [TAX_CHRG]                NUMERIC (11, 2) NOT NULL,
    [MISC_CHRG]               NUMERIC (11, 2) NOT NULL,
    [D_FACILITY_ID]           BIGINT          NULL,
    [BatchID]                 BIGINT          NULL,
    [ProcessLogID]            BIGINT          NULL,
    CONSTRAINT [PK_MANH_PKT_HDR] PRIMARY KEY CLUSTERED ([PKT_HDR_ID] ASC)
);

