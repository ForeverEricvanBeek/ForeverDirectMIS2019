﻿CREATE TABLE [MANH_ARC].[BATCH_HIST_STAT] (
    [BATCH_HIST_STAT_ID] INT            NOT NULL,
    [BATCH_NBR]          NVARCHAR (15)  NOT NULL,
    [XPIRE_DATE]         DATETIME2 (7)  NULL,
    [XPIRE_FLAG]         NVARCHAR (1)   NULL,
    [MFG_RECALL_DATE]    DATETIME2 (7)  NULL,
    [MFG_RECALL_FLAG]    NVARCHAR (1)   NULL,
    [FROM_STAT_CODE]     INT            NOT NULL,
    [TO_STAT_CODE]       INT            NOT NULL,
    [SPL_INSTR_CODE_1]   NVARCHAR (10)  NULL,
    [SPL_INSTR_CODE_2]   NVARCHAR (10)  NULL,
    [MISC_INSTR_CODE_1]  NVARCHAR (20)  NULL,
    [MISC_INSTR_CODE_2]  NVARCHAR (20)  NULL,
    [NUMERIC_1]          DECIMAL (9, 2) NOT NULL,
    [NUMERIC_2]          DECIMAL (9, 2) NOT NULL,
    [CREATE_DATE_TIME]   DATETIME2 (7)  NULL,
    [MOD_DATE_TIME]      DATETIME2 (7)  NULL,
    [USER_ID]            NVARCHAR (15)  NULL,
    [WM_VERSION_ID]      INT            NOT NULL,
    [ITEM_ID]            INT            NOT NULL,
    [Eff_Date]           DATE           NOT NULL,
    [End_Date]           DATE           NULL,
    [ActInd]             CHAR (1)       NULL,
    [IsDeleted]          CHAR (1)       NULL,
    [BatchID]            BIGINT         NULL,
    [ProcessLogID]       BIGINT         NULL,
    CONSTRAINT [PK_MANH_BATCH_HIST_STAT] PRIMARY KEY CLUSTERED ([BATCH_HIST_STAT_ID] ASC, [Eff_Date] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];



