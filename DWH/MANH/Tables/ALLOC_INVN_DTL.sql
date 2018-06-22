﻿CREATE TABLE [MANH].[ALLOC_INVN_DTL] (
    [ALLOC_INVN_DTL_ID]     INT             NOT NULL,
    [WHSE]                  NVARCHAR (3)    NOT NULL,
    [INVN_TYPE]             NVARCHAR (1)    NULL,
    [PROD_STAT]             NVARCHAR (3)    NULL,
    [BATCH_NBR]             NVARCHAR (15)   NULL,
    [SKU_ATTR_1]            NVARCHAR (10)   NULL,
    [SKU_ATTR_2]            NVARCHAR (10)   NULL,
    [SKU_ATTR_3]            NVARCHAR (10)   NULL,
    [SKU_ATTR_4]            NVARCHAR (10)   NULL,
    [SKU_ATTR_5]            NVARCHAR (10)   NULL,
    [CNTRY_OF_ORGN]         NVARCHAR (4)    NULL,
    [ALLOC_INVN_CODE]       SMALLINT        NOT NULL,
    [CNTR_NBR]              NVARCHAR (20)   NULL,
    [TRANS_INVN_TYPE]       SMALLINT        NOT NULL,
    [PULL_LOCN_ID]          NVARCHAR (10)   NULL,
    [INVN_NEED_TYPE]        SMALLINT        NOT NULL,
    [TASK_TYPE]             NVARCHAR (2)    NULL,
    [TASK_PRTY]             INT             NOT NULL,
    [TASK_BATCH]            NVARCHAR (6)    NULL,
    [ALLOC_UOM]             NVARCHAR (1)    NULL,
    [ALLOC_UOM_QTY]         NUMERIC (9, 2)  NOT NULL,
    [QTY_PULLD]             NUMERIC (13, 5) NOT NULL,
    [FULL_CNTR_ALLOCD]      NVARCHAR (1)    NULL,
    [ORIG_REQMT]            NUMERIC (13, 5) NOT NULL,
    [QTY_ALLOC]             NUMERIC (13, 5) NOT NULL,
    [DEST_LOCN_ID]          NVARCHAR (10)   NULL,
    [TASK_GENRTN_REF_CODE]  NVARCHAR (3)    NULL,
    [TASK_GENRTN_REF_NBR]   NVARCHAR (50)   NULL,
    [TASK_CMPL_REF_CODE]    NVARCHAR (3)    NULL,
    [TASK_CMPL_REF_NBR]     NVARCHAR (40)   NULL,
    [ERLST_START_DATE_TIME] DATETIME2 (7)   NULL,
    [LTST_START_DATE_TIME]  DATETIME2 (7)   NULL,
    [LTST_CMPL_DATE_TIME]   DATETIME2 (7)   NULL,
    [NEED_ID]               NVARCHAR (10)   NULL,
    [STAT_CODE]             SMALLINT        NOT NULL,
    [CREATE_DATE_TIME]      DATETIME2 (7)   NULL,
    [MOD_DATE_TIME]         DATETIME2 (7)   NULL,
    [USER_ID]               NVARCHAR (15)   NULL,
    [PKT_CTRL_NBR]          NVARCHAR (10)   NULL,
    [REQD_INVN_TYPE]        NVARCHAR (1)    NULL,
    [REQD_PROD_STAT]        NVARCHAR (3)    NULL,
    [REQD_BATCH_NBR]        NVARCHAR (15)   NULL,
    [REQD_SKU_ATTR_1]       NVARCHAR (10)   NULL,
    [REQD_SKU_ATTR_2]       NVARCHAR (10)   NULL,
    [REQD_SKU_ATTR_3]       NVARCHAR (10)   NULL,
    [REQD_SKU_ATTR_4]       NVARCHAR (10)   NULL,
    [REQD_SKU_ATTR_5]       NVARCHAR (10)   NULL,
    [REQD_CNTRY_OF_ORGN]    NVARCHAR (4)    NULL,
    [PKT_SEQ_NBR]           INT             NOT NULL,
    [CARTON_NBR]            NVARCHAR (20)   NULL,
    [CARTON_SEQ_NBR]        INT             NOT NULL,
    [PIKR_NBR]              SMALLINT        NOT NULL,
    [PULL_LOCN_SEQ_NBR]     INT             NOT NULL,
    [DEST_LOCN_SEQ_NBR]     INT             NOT NULL,
    [TASK_CMPL_REF_NBR_SEQ] INT             NOT NULL,
    [SUBSTITUTION_FLAG]     SMALLINT        NOT NULL,
    [MISC_ALPHA_FIELD_1]    NVARCHAR (20)   NULL,
    [MISC_ALPHA_FIELD_2]    NVARCHAR (20)   NULL,
    [MISC_ALPHA_FIELD_3]    NVARCHAR (20)   NULL,
    [CD_MASTER_ID]          INT             NOT NULL,
    [RESEQ_ALLOC]           NVARCHAR (1)    NOT NULL,
    [ITEM_ID]               BIGINT          NULL,
    [WM_VERSION_ID]         INT             NOT NULL,
    [TC_ORDER_ID]           NVARCHAR (50)   NULL,
    [LINE_ITEM_ID]          BIGINT          NULL,
    [Eff_Date]              DATE            NOT NULL,
    [End_Date]              DATE            NULL,
    [ActInd]                CHAR (1)        NULL,
    [IsDeleted]             CHAR (1)        NULL,
    [BatchID]               BIGINT          NULL,
    [ProcessLogID]          BIGINT          NULL,
    CONSTRAINT [PK_MANH_ALLOC_INVN_DTL] PRIMARY KEY CLUSTERED ([ALLOC_INVN_DTL_ID] ASC, [Eff_Date] ASC)
);

