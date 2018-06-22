CREATE TABLE [MANH].[ILM_TASK_EVENTS] (
    [TASK_ID]             INT            NOT NULL,
    [EVENT_SEQ]           INT            NOT NULL,
    [FIELD_NAME]          NVARCHAR (40)  NULL,
    [OLD_VALUE]           NVARCHAR (500) NULL,
    [NEW_VALUE]           NVARCHAR (500) NULL,
    [CREATED_SOURCE_TYPE] INT            NOT NULL,
    [CREATED_SOURCE]      NVARCHAR (32)  NULL,
    [CREATED_DTTM]        DATETIME2 (7)  NULL,
    [BatchID]             BIGINT         NULL,
    [ProcessLogID]        BIGINT         NULL,
    CONSTRAINT [PK_MANH_LM_TASK_EVENTS] PRIMARY KEY CLUSTERED ([EVENT_SEQ] ASC, [TASK_ID] ASC)
);

