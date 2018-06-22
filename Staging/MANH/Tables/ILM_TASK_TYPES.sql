CREATE TABLE [MANH].[ILM_TASK_TYPES] (
    [TASK_TYPE]         INT           NOT NULL,
    [DESCRIPTION]       NVARCHAR (50) NOT NULL,
    [CREATED_DTTM]      DATETIME2 (7) NOT NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7) NULL,
    [BatchID]           BIGINT        NULL,
    [ProcessLogID]      BIGINT        NULL
);

