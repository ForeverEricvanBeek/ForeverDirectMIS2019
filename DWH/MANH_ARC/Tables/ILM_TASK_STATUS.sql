CREATE TABLE [MANH_ARC].[ILM_TASK_STATUS] (
    [TASK_STATUS]       INT           NOT NULL,
    [DESCRIPTION]       NVARCHAR (50) NULL,
    [CREATED_DTTM]      DATETIME2 (7) NOT NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7) NULL,
    [Eff_Date]          DATE          NOT NULL,
    [End_Date]          DATE          NULL,
    [ActInd]            CHAR (1)      NULL,
    [IsDeleted]         CHAR (1)      NULL,
    [BatchID]           BIGINT        NULL,
    [ProcessLogID]      BIGINT        NULL,
    CONSTRAINT [PK_MANH_ILM_TASK_STATUS] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [TASK_STATUS] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];



