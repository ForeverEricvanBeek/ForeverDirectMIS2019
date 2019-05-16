﻿CREATE TABLE [MANH].[BATCH_HIST_STAT] (
    [BATCH_HIST_STAT_ID] INT           NOT NULL,
    [MOD_DATE_TIME]      DATETIME2 (7) NULL,
    [BatchID]            BIGINT        NULL,
    [ProcessLogID]       BIGINT        NULL,
    [Issue]              TINYINT       NULL,
    CONSTRAINT [PK_MANH_BATCH_HIST_STAT] PRIMARY KEY CLUSTERED ([BATCH_HIST_STAT_ID] ASC)
);

