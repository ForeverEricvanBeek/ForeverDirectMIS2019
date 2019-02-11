﻿CREATE TABLE [MANH_ARC].[WORK_ORD_HDR] (
    [WORK_ORD_NBR]         NVARCHAR (12) NULL,
    [WHSE]                 NVARCHAR (3)  NULL,
    [WAVE_NBR]             NVARCHAR (12) NULL,
    [DC_ORD_NBR]           NVARCHAR (10) NULL,
    [DC_ORD_LINE_NBR]      NUMERIC (5)   NULL,
    [PROC_TYPE]            NVARCHAR (2)  NULL,
    [WORK_ORD_ACCT]        NVARCHAR (10) NULL,
    [BATCH_NBR]            NVARCHAR (15) NULL,
    [OUT_SRC_FLAG]         NVARCHAR (1)  NULL,
    [CONTRAC_LOCN]         NVARCHAR (10) NULL,
    [TRUCK]                NVARCHAR (10) NULL,
    [MFG_LINE]             NVARCHAR (10) NULL,
    [EST_CMPL_DATE]        DATETIME      NULL,
    [REQD_CMPL_DATE]       DATETIME      NULL,
    [SCHED_START_DATE]     DATETIME      NULL,
    [PRTY_CODE]            NVARCHAR (2)  NULL,
    [REF_FIELD_1]          NVARCHAR (12) NULL,
    [REF_FIELD_2]          NVARCHAR (12) NULL,
    [REF_FIELD_3]          NVARCHAR (12) NULL,
    [REF_FIELD_4]          NVARCHAR (12) NULL,
    [REF_FIELD_5]          NVARCHAR (12) NULL,
    [CNTRIZ_FLAG]          NVARCHAR (1)  NULL,
    [STAT_CODE]            NUMERIC (2)   NULL,
    [CREATE_DATE_TIME]     DATETIME      NULL,
    [MOD_DATE_TIME]        DATETIME      NULL,
    [USER_ID]              NVARCHAR (15) NULL,
    [TRANS_INVN_TYPE]      NUMERIC (3)   NULL,
    [WAVE_STAT_CODE]       NUMERIC (2)   NULL,
    [RSN_CODE]             NVARCHAR (2)  NULL,
    [CD_MASTER_ID]         NUMERIC (9)   NULL,
    [VAS_PATH]             NVARCHAR (15) NULL,
    [WORK_ORD_HDR_ID]      NUMERIC (9)   NOT NULL,
    [WM_VERSION_ID]        NUMERIC (9)   NULL,
    [HAS_IMPORT_ERROR]     NUMERIC (1)   NULL,
    [HAS_SOFT_CHECK_ERROR] NUMERIC (1)   NULL,
    [Eff_Date]             DATE          NOT NULL,
    [End_Date]             DATE          NULL,
    [ActInd]               CHAR (1)      NULL,
    [IsDeleted]            CHAR (1)      NULL,
    [BatchID]              BIGINT        NULL,
    [ProcessLogID]         BIGINT        NULL,
    CONSTRAINT [PK_MANH_WORK_ORD_HDR] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [WORK_ORD_HDR_ID] ASC) WITH (FILLFACTOR = 90) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];





