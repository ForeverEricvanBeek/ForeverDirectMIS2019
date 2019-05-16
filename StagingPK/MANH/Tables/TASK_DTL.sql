﻿CREATE TABLE [MANH].[TASK_DTL] (
    [TASK_DTL_ID]   INT           NOT NULL,
    [MOD_DATE_TIME] DATETIME2 (7) NULL,
    [BatchID]       BIGINT        NULL,
    [ProcessLogID]  BIGINT        NULL,
    [Issue]         TINYINT       NULL,
    CONSTRAINT [PK_MANH_TASK_DTL] PRIMARY KEY CLUSTERED ([TASK_DTL_ID] ASC)
);

