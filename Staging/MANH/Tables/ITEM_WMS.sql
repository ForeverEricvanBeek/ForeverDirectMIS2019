﻿CREATE TABLE [MANH].[ITEM_WMS] (
    [ITEM_ID]                        INT             NOT NULL,
    [SIZE_RANGE_CODE]                NVARCHAR (50)   NULL,
    [SIZE_REL_POSN_IN_TABLE]         NVARCHAR (2)    NULL,
    [VOLTY_CODE]                     NVARCHAR (4)    NULL,
    [PKG_TYPE]                       NVARCHAR (3)    NULL,
    [PROD_SUB_GRP]                   NVARCHAR (3)    NULL,
    [PROD_TYPE]                      NVARCHAR (3)    NULL,
    [PROD_LINE]                      NVARCHAR (3)    NULL,
    [SALE_GRP]                       NVARCHAR (6)    NULL,
    [COORD_1]                        INT             NULL,
    [COORD_2]                        INT             NULL,
    [CARTON_TYPE]                    NVARCHAR (3)    NULL,
    [UNIT_PRICE]                     NUMERIC (16, 4) NULL,
    [RETAIL_PRICE]                   NUMERIC (16, 4) NULL,
    [OPER_CODE]                      NVARCHAR (3)    NULL,
    [MAX_CASE_QTY]                   NUMERIC (9, 2)  NULL,
    [CUBE_MULT_QTY]                  NUMERIC (9, 2)  NULL,
    [NEST_VOL]                       NUMERIC (13, 4) NULL,
    [NEST_CNT]                       INT             NULL,
    [UNITS_PER_PICK_ACTIVE]          NUMERIC (9, 2)  NULL,
    [HNDL_ATTR_ACTIVE]               NVARCHAR (3)    NULL,
    [UNITS_PER_PICK_CASE_PICK]       NUMERIC (9, 2)  NULL,
    [HNDL_ATTR_CASE_PICK]            NVARCHAR (3)    NULL,
    [UNITS_PER_PICK_RESV]            NUMERIC (9, 2)  NULL,
    [HNDL_ATTR_RESV]                 NVARCHAR (3)    NULL,
    [PROD_LIFE_IN_DAY]               INT             NULL,
    [MAX_RECV_TO_XPIRE_DAYS]         INT             NULL,
    [AVG_DLY_DMND]                   NUMERIC (13, 5) NULL,
    [WT_TOL_PCNT]                    NUMERIC (5, 2)  NULL,
    [CONS_PRTY_DATE_CODE]            NVARCHAR (1)    NULL,
    [CONS_PRTY_DATE_WINDOW]          NVARCHAR (10)   NULL,
    [CONS_PRTY_DATE_WINDOW_INCR]     SMALLINT        NULL,
    [ACTVTN_DATE]                    DATETIME2 (7)   NULL,
    [ALLOW_RCPT_OLDER_ITEM]          NVARCHAR (1)    NULL,
    [CRITCL_DIM_1]                   NUMERIC (7, 2)  NULL,
    [CRITCL_DIM_2]                   NUMERIC (7, 2)  NULL,
    [CRITCL_DIM_3]                   NUMERIC (7, 2)  NULL,
    [MFG_DATE_REQD]                  NVARCHAR (1)    NULL,
    [XPIRE_DATE_REQD]                NVARCHAR (1)    NULL,
    [SHIP_BY_DATE_REQD]              NVARCHAR (1)    NULL,
    [ITEM_ATTR_REQD]                 NVARCHAR (1)    NULL,
    [BATCH_REQD]                     NVARCHAR (1)    NULL,
    [PROD_STAT_REQD]                 NVARCHAR (1)    NULL,
    [CNTRY_OF_ORGN_REQD]             NVARCHAR (1)    NULL,
    [VENDOR_ITEM_NBR]                NVARCHAR (20)   NULL,
    [PICK_WT_TOL_TYPE]               NVARCHAR (1)    NULL,
    [PICK_WT_TOL_AMNT]               SMALLINT        NULL,
    [MHE_WT_TOL_TYPE]                NVARCHAR (1)    NULL,
    [MHE_WT_TOL_AMNT]                SMALLINT        NULL,
    [LOAD_ATTR]                      NVARCHAR (3)    NULL,
    [TEMP_ZONE]                      NVARCHAR (1)    NULL,
    [TRLR_TEMP_ZONE]                 NVARCHAR (1)    NULL,
    [PKT_CONSOL_ATTR]                NVARCHAR (3)    NULL,
    [BUYER_DISP_CODE]                NVARCHAR (3)    NULL,
    [CRUSH_CODE]                     NVARCHAR (12)   NULL,
    [CONVEY_FLAG]                    NVARCHAR (1)    NULL,
    [STORE_DEPT]                     NVARCHAR (3)    NULL,
    [MERCH_TYPE]                     NVARCHAR (3)    NULL,
    [MERCH_GROUP]                    NVARCHAR (3)    NULL,
    [SPL_INSTR_CODE_1]               NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_2]               NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_3]               NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_4]               NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_5]               NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_6]               NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_7]               NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_8]               NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_9]               NVARCHAR (2)    NULL,
    [SPL_INSTR_CODE_10]              NVARCHAR (2)    NULL,
    [SPL_INSTR_1]                    NVARCHAR (10)   NULL,
    [SPL_INSTR_2]                    NVARCHAR (10)   NULL,
    [PROMPT_FOR_VENDOR_ITEM_NBR]     NVARCHAR (1)    NULL,
    [PROMPT_PACK_QTY]                NVARCHAR (1)    NULL,
    [ECCN_NBR]                       NVARCHAR (6)    NULL,
    [EXP_LICN_NBR]                   NVARCHAR (12)   NULL,
    [EXP_LICN_XP_DATE]               DATETIME2 (7)   NULL,
    [EXP_LICN_SYMBOL]                NVARCHAR (15)   NULL,
    [ORGN_CERT_CODE]                 NVARCHAR (5)    NULL,
    [ITAR_EXEMPT_NBR]                NVARCHAR (12)   NULL,
    [NMFC_CODE]                      NVARCHAR (9)    NULL,
    [FRT_CLASS]                      NVARCHAR (5)    NULL,
    [DFLT_BATCH_STAT]                NVARCHAR (3)    NULL,
    [DFLT_INCUB_LOCK]                NVARCHAR (2)    NULL,
    [BASE_INCUB_FLAG]                NVARCHAR (2)    NULL,
    [INCUB_DAYS]                     SMALLINT        NULL,
    [INCUB_HOURS]                    NUMERIC (4, 2)  NULL,
    [SRL_NBR_BRCD_TYPE]              NVARCHAR (12)   NULL,
    [MINOR_SRL_NBR_REQ]              SMALLINT        NULL,
    [DUP_SRL_NBR_FLAG]               SMALLINT        NULL,
    [MAX_RCPT_QTY]                   NUMERIC (9, 2)  NULL,
    [VOCOLLECT_BASE_WT]              NUMERIC (13, 4) NULL,
    [VOCOLLECT_BASE_QTY]             NUMERIC (9, 2)  NULL,
    [VOCOLLECT_BASE_ITEM]            NVARCHAR (1)    NULL,
    [PICK_WT_TOL_AMNT_ERROR]         SMALLINT        NULL,
    [PRICE_TKT_TYPE]                 NVARCHAR (3)    NULL,
    [MONETARY_VALUE]                 NUMERIC (16, 4) NULL,
    [MV_CURRENCY_CODE]               NVARCHAR (3)    NULL,
    [CODE_DATE_PROMPT_METHOD_FLAG]   NVARCHAR (1)    NULL,
    [MIN_RECV_TO_XPIRE_DAYS]         INT             NULL,
    [MIN_PCNT_FOR_LPN_SPLIT]         SMALLINT        NULL,
    [MIN_LPN_QTY_FOR_SPLIT]          NUMERIC (13, 5) NULL,
    [PROD_CATGRY]                    NVARCHAR (3)    NULL,
    [AUDIT_CREATED_SOURCE]           NVARCHAR (100)  NULL,
    [AUDIT_CREATED_SOURCE_TYPE]      SMALLINT        NULL,
    [AUDIT_CREATED_DTTM]             DATETIME2 (7)   NULL,
    [AUDIT_LAST_UPDATED_SOURCE]      NVARCHAR (100)  NULL,
    [AUDIT_LAST_UPDATED_SOURCE_TYPE] SMALLINT        NULL,
    [AUDIT_LAST_UPDATED_DTTM]        DATETIME2 (7)   NULL,
    [MARK_FOR_DELETION]              SMALLINT        NULL,
    [TOP_SHELF_ELIGIBLE]             SMALLINT        NULL,
    [VOCO_ABS_PICK_TOL_AMT]          INT             NULL,
    [CARTON_CNT_DATE_TIME]           DATETIME2 (7)   NULL,
    [TRANS_INVN_CNT_DATE_TIME]       DATETIME2 (7)   NULL,
    [WORK_ORD_CNT_DATE_TIME]         DATETIME2 (7)   NULL,
    [SHELF_DAYS]                     INT             NULL,
    [VENDOR_MASTER_ID]               INT             NULL,
    [NBR_OF_DYN_ACTV_PICK_PER_SKU]   SMALLINT        NULL,
    [NBR_OF_DYN_CASE_PICK_PER_SKU]   SMALLINT        NULL,
    [LET_UP_PRTY]                    INT             NULL,
    [PREF_CRITERIA_FLAG]             NCHAR (4)       NULL,
    [PRODUCER_FLAG]                  NCHAR (4)       NULL,
    [NET_COST_FLAG]                  NCHAR (4)       NULL,
    [MARKS_NBRS]                     NVARCHAR (35)   NULL,
    [SLOTTING_OPT_STAT_CODE]         SMALLINT        NULL,
    [PRICE_TIX_AVAIL]                NVARCHAR (1)    NULL,
    [MV_SIZE_UOM]                    INT             NULL,
    [UNITS_PER_GRAB_PLT]             NUMERIC (13, 4) NULL,
    [HNDL_ATTR_PLT]                  NVARCHAR (3)    NULL,
    [HNDL_ATTR_ACT_UOM_ID]           INT             NULL,
    [HNDL_ATTR_CASE_PICK_UOM_ID]     INT             NULL,
    [SRL_NBR_REQD]                   SMALLINT        NULL,
    [BatchID]                        BIGINT          NULL,
    [ProcessLogID]                   BIGINT          NULL,
    CONSTRAINT [PK_MANH_ITEM_WMS] PRIMARY KEY CLUSTERED ([ITEM_ID] ASC)
);

