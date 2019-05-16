CREATE TABLE [MANH].[ILM_APPOINTMENT_OBJECTS] (
    [ID]                INT           NOT NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7) NULL,
    [BatchID]           BIGINT        NULL,
    [ProcessLogID]      BIGINT        NULL,
    [Issue]             TINYINT       NULL,
    CONSTRAINT [PK_MANH_ILM_APPOINTMENT_OBJECTS] PRIMARY KEY CLUSTERED ([ID] ASC)
);

