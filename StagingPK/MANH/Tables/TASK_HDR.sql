﻿CREATE TABLE [MANH].[TASK_HDR] (
    [TASK_HDR_ID]   INT           NOT NULL,
    [MOD_DATE_TIME] DATETIME2 (7) NULL,
    [BatchID]       BIGINT        NULL,
    [ProcessLogID]  BIGINT        NULL,
    [Issue]         TINYINT       NULL,
    CONSTRAINT [PK_MANH_TASK_HDR] PRIMARY KEY CLUSTERED ([TASK_HDR_ID] ASC)
);

