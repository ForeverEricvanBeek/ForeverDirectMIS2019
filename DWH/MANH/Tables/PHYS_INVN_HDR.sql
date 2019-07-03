﻿CREATE TABLE [MANH].[PHYS_INVN_HDR] (
    [PHYS_INVN_CODE]     NVARCHAR (8)  NOT NULL,
    [PHYS_INVN_DESC]     NVARCHAR (40) NULL,
    [NBR_OF_CNT]         SMALLINT      NOT NULL,
    [FROZN_DATE_TIME]    DATETIME2 (7) NULL,
    [PRT_FRZ_LOCN_RPT]   NVARCHAR (1)  NULL,
    [FRZ_NON_LOCD_CASES] NVARCHAR (1)  NULL,
    [DEALLOC_CASES]      NVARCHAR (1)  NULL,
    [BKD_DATE_TIME]      DATETIME2 (7) NULL,
    [STAT_CODE]          SMALLINT      NOT NULL,
    [CREATE_DATE_TIME]   DATETIME2 (7) NULL,
    [MOD_DATE_TIME]      DATETIME2 (7) NULL,
    [USER_ID]            NVARCHAR (15) NULL,
    [COUNT_MODE]         NVARCHAR (1)  NOT NULL,
    [PHYS_INVN_HDR_ID]   INT           NOT NULL,
    [WM_VERSION_ID]      INT           NOT NULL,
    [LOST_CASE_UPDATE]   NVARCHAR (1)  NULL,
    [ALLOC_CASE_UPDATE]  NVARCHAR (1)  NULL,
    [FACILITY_ID]        INT           NOT NULL,
    [TASK_ID]            BIGINT        NULL,
    [Eff_Date]           DATE          NOT NULL,
    [End_Date]           DATE          NULL,
    [ActInd]             CHAR (1)      NULL,
    [IsDeleted]          CHAR (1)      NULL,
    [BatchID]            BIGINT        NULL,
    [ProcessLogID]       BIGINT        NULL,
    [CREATED_DTTM]       DATETIME2 (7) NULL,
    [LAST_UPDATED_DTTM]  DATETIME2 (7) NULL,
    CONSTRAINT [PK_MANH_PHYS_INVN_HDR] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [PHYS_INVN_HDR_ID] ASC) ON [DWH_MANH]
) ON [DWH_MANH];



