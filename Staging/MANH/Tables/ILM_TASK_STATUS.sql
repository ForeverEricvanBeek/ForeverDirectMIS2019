CREATE TABLE [MANH].[ILM_TASK_STATUS] (
    [TASK_STATUS]       INT           NULL,
    [DESCRIPTION]       NVARCHAR (50) NULL,
    [CREATED_DTTM]      DATETIME2 (7) NOT NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7) NULL,
    [BatchID]           BIGINT        NULL,
    [ProcessLogID]      BIGINT        NULL
);

