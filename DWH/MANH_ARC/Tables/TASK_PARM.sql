﻿CREATE TABLE [MANH_ARC].[TASK_PARM] (
    [TASK_PARM_ID]       INT           NOT NULL,
    [WHSE]               NVARCHAR (3)  NOT NULL,
    [REC_TYPE]           NVARCHAR (3)  NULL,
    [CRIT_NBR]           NVARCHAR (10) NULL,
    [CRIT_DESC]          NVARCHAR (40) NULL,
    [NEED_TYPE]          NVARCHAR (1)  NULL,
    [CREATE_DATE_TIME]   DATETIME2 (7) NULL,
    [MOD_DATE_TIME]      DATETIME2 (7) NULL,
    [USER_ID]            NVARCHAR (15) NULL,
    [CNT_TASK_FREQ]      NVARCHAR (4)  NULL,
    [LAST_CNT_DATE_TIME] DATETIME2 (7) NULL,
    [NEXT_CNT_DATE_TIME] DATETIME2 (7) NULL,
    [UPD_LAST_CNT_DATE]  NVARCHAR (2)  NULL,
    [WM_VERSION_ID]      INT           NOT NULL,
    [CREATED_DTTM]       DATETIME2 (7) NOT NULL,
    [LAST_UPDATED_DTTM]  DATETIME2 (7) NULL,
    [Eff_Date]           DATE          NOT NULL,
    [End_Date]           DATE          NULL,
    [ActInd]             CHAR (1)      NULL,
    [IsDeleted]          CHAR (1)      NULL,
    [BatchID]            BIGINT        NULL,
    [ProcessLogID]       BIGINT        NULL,
    CONSTRAINT [PK_MANH_TASK_PARM] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [TASK_PARM_ID] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];



