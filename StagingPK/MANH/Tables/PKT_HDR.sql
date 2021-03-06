﻿CREATE TABLE [MANH].[PKT_HDR] (
    [PKT_HDR_ID]    BIGINT        NOT NULL,
    [MOD_DATE_TIME] DATETIME2 (7) NULL,
    [BatchID]       BIGINT        NULL,
    [ProcessLogID]  BIGINT        NULL,
    [Issue]         TINYINT       NULL,
    CONSTRAINT [PK_MANH_PKT_HDR] PRIMARY KEY CLUSTERED ([PKT_HDR_ID] ASC)
);

