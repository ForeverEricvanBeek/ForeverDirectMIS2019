CREATE TABLE [MANH].[WAVE_QUEUE_WORK_ORD] (
    [WAVE_QUEUE_WORK_ORD_ID] INT           NOT NULL,
    [MOD_DATE_TIME]          DATETIME2 (7) NULL,
    [BatchID]                BIGINT        NULL,
    [ProcessLogID]           BIGINT        NULL,
    [Issue]                  TINYINT       NULL,
    CONSTRAINT [PK_MANH_WAVE_QUEUE_WORK_ORD] PRIMARY KEY CLUSTERED ([WAVE_QUEUE_WORK_ORD_ID] ASC)
);

