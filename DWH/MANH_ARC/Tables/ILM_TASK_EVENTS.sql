CREATE TABLE [MANH_ARC].[ILM_TASK_EVENTS] (
    [TASK_ID]             INT            NOT NULL,
    [EVENT_SEQ]           INT            NOT NULL,
    [FIELD_NAME]          NVARCHAR (40)  NULL,
    [OLD_VALUE]           NVARCHAR (500) NULL,
    [NEW_VALUE]           NVARCHAR (500) NULL,
    [CREATED_SOURCE_TYPE] INT            NOT NULL,
    [CREATED_SOURCE]      NVARCHAR (32)  NULL,
    [CREATED_DTTM]        DATETIME2 (7)  NULL,
    [Eff_Date]            DATE           NOT NULL,
    [End_Date]            DATE           NULL,
    [ActInd]              CHAR (1)       NULL,
    [IsDeleted]           CHAR (1)       NULL,
    [BatchID]             BIGINT         NULL,
    [ProcessLogID]        BIGINT         NULL,
    CONSTRAINT [PK_MANH_LM_TASK_EVENTS] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [EVENT_SEQ] ASC, [TASK_ID] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];



