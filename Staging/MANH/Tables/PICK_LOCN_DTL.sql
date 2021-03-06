﻿CREATE TABLE [MANH].[PICK_LOCN_DTL] (
    [LOCN_ID]                    NVARCHAR (40)   NOT NULL,
    [LOCN_SEQ_NBR]               NUMERIC (8)     NOT NULL,
    [SKU_ATTR_1]                 NVARCHAR (40)   NULL,
    [SKU_ATTR_2]                 NVARCHAR (40)   NULL,
    [SKU_ATTR_3]                 NVARCHAR (40)   NULL,
    [SKU_ATTR_4]                 NVARCHAR (40)   NULL,
    [SKU_ATTR_5]                 NVARCHAR (40)   NULL,
    [INVN_TYPE]                  NVARCHAR (4)    NULL,
    [PROD_STAT]                  NVARCHAR (12)   NULL,
    [BATCH_NBR]                  NVARCHAR (60)   NULL,
    [CNTRY_OF_ORGN]              NVARCHAR (16)   NULL,
    [MAX_INVN_QTY]               NUMERIC (13, 5) NOT NULL,
    [MIN_INVN_QTY]               NUMERIC (13, 5) NOT NULL,
    [ACTL_INVN_CASES]            NUMERIC (8)     NOT NULL,
    [MIN_INVN_CASES]             NUMERIC (8)     NOT NULL,
    [MAX_INVN_CASES]             NUMERIC (8)     NOT NULL,
    [TRIG_REPL_FOR_SKU]          NVARCHAR (4)    NULL,
    [PRIM_LOCN_FOR_SKU]          NVARCHAR (4)    NULL,
    [FIRST_WAVE_NBR]             NVARCHAR (48)   NULL,
    [LAST_WAVE_NBR]              NVARCHAR (48)   NULL,
    [LTST_SKU_ASSIGN]            NVARCHAR (4)    NULL,
    [CREATE_DATE_TIME]           DATETIME2 (0)   NULL,
    [MOD_DATE_TIME]              DATETIME2 (0)   NULL,
    [USER_ID]                    NVARCHAR (60)   NULL,
    [LTST_PICK_ASSIGN_DATE_TIME] DATETIME2 (0)   NULL,
    [PIKNG_LOCK_CODE]            NVARCHAR (8)    NULL,
    [TO_BE_FILLD_CASES]          NUMERIC (8)     NOT NULL,
    [LANES]                      NVARCHAR (8)    NULL,
    [STACKING]                   NVARCHAR (8)    NULL,
    [MIN_QTY_TO_RLS_HELD_RPLN]   NUMERIC (9, 2)  NOT NULL,
    [MIN_CASES_TO_RLS_HELD_RPLN] NUMERIC (8)     NOT NULL,
    [TASK_RELEASED]              NVARCHAR (4)    NULL,
    [PACK_QTY]                   NUMERIC (9, 2)  NOT NULL,
    [PICK_LOCN_DTL_ID]           NUMERIC (8)     NOT NULL,
    [PICK_LOCN_HDR_ID]           NUMERIC (8)     NULL,
    [WM_VERSION_ID]              NUMERIC (9)     NOT NULL,
    [ITEM_MASTER_ID]             NUMERIC (8)     NOT NULL,
    [ITEM_ID]                    NUMERIC (9)     NULL,
    [BatchID]                    BIGINT          NULL,
    [ProcessLogID]               BIGINT          NULL,
    [CREATED_DTTM]               DATETIME2 (7)   NULL,
    [LAST_UPDATED_DTTM]          DATETIME2 (7)   NULL,
    [PICK_TO_ZERO_ACTION]        NVARCHAR (1)    NULL,
    [PRE_ALLOCATED_QTY]          NUMERIC (13, 4) NULL,
    [REPLEN_CONTROL]             NVARCHAR (1)    NULL,
    [STOP_DTTM]                  DATETIME2 (7)   NULL,
    [STOP_QTY]                   NUMERIC (13, 4) NULL,
    [UTIL_PERCENT]               NUMERIC (3, 2)  NULL,
    CONSTRAINT [PK_MANH_PICK_LOCN_DTL] PRIMARY KEY CLUSTERED ([PICK_LOCN_DTL_ID] ASC)
);



