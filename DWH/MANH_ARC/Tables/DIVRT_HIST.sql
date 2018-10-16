﻿CREATE TABLE [MANH_ARC].[DIVRT_HIST] (
    [DIVRT_HIST_ID]    BIGINT        NOT NULL,
    [WHSE]             NVARCHAR (50) NULL,
    [CNTR_NBR]         NVARCHAR (50) NULL,
    [WM_EVENT_ID]      NVARCHAR (50) NULL,
    [CONVEY_TYPE]      NVARCHAR (50) NULL,
    [MHE_SORT_COMMAND] INT           NULL,
    [MHE_WAVE_ID]      NVARCHAR (50) NULL,
    [MHE_ORD_ID]       NVARCHAR (50) NULL,
    [MHE_SORT_PRTY]    INT           NULL,
    [LOGICAL_DIVRT]    NVARCHAR (50) NULL,
    [MHE_CNTR_STATE]   NVARCHAR (50) NULL,
    [PHYS_DIVRT]       NVARCHAR (50) NULL,
    [CREATE_DATE_TIME] DATETIME2 (7) NULL,
    [MOD_DATE_TIME]    DATETIME2 (7) NULL,
    [USER_ID]          NVARCHAR (50) NULL,
    [CD_MASTER_ID]     INT           NULL,
    [WM_VERSION_ID]    INT           NULL,
    [BatchID]          BIGINT        NULL,
    [ProcessLogID]     BIGINT        NULL,
    CONSTRAINT [PK_MANH_DIVRT_HIST] PRIMARY KEY CLUSTERED ([DIVRT_HIST_ID] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];

