﻿CREATE TABLE [MANH].[RULE_HDR] (
    [RULE_HDR_ID]   INT           NOT NULL,
    [MOD_DATE_TIME] DATETIME2 (7) NULL,
    [BatchID]       BIGINT        NULL,
    [ProcessLogID]  BIGINT        NULL,
    [Issue]         TINYINT       NULL,
    CONSTRAINT [PK_MANH_RULE_HDR] PRIMARY KEY CLUSTERED ([RULE_HDR_ID] ASC)
);

