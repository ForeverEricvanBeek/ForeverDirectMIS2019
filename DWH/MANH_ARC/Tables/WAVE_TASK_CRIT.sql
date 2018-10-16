CREATE TABLE [MANH_ARC].[WAVE_TASK_CRIT] (
    [WAVE_PARM_ID]      INT           NOT NULL,
    [CRIT_NBR]          NVARCHAR (10) NOT NULL,
    [SEQ_NBR]           INT           NOT NULL,
    [REC_TYPE]          NVARCHAR (1)  NULL,
    [WHSE]              NVARCHAR (3)  NULL,
    [WAVE_NBR]          NVARCHAR (12) NULL,
    [CREATE_DATE_TIME]  DATETIME2 (7) NULL,
    [MOD_DATE_TIME]     DATETIME2 (7) NULL,
    [USER_ID]           NVARCHAR (15) NULL,
    [WAVE_TASK_CRIT_ID] INT           NOT NULL,
    [WM_VERSION_ID]     INT           NOT NULL,
    [CREATED_DTTM]      DATETIME2 (7) NOT NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7) NULL,
    [Eff_Date]          DATE          NOT NULL,
    [End_Date]          DATE          NULL,
    [ActInd]            CHAR (1)      NULL,
    [IsDeleted]         CHAR (1)      NULL,
    [BatchID]           BIGINT        NULL,
    [ProcessLogID]      BIGINT        NULL,
    CONSTRAINT [PK_MANH_WAVE_TASK_CRIT] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [WAVE_TASK_CRIT_ID] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];

