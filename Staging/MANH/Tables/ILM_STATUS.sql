﻿CREATE TABLE [MANH].[ILM_STATUS] (
    [ILM_STATUS]           SMALLINT      NOT NULL,
    [ILM_STATUS_TYPE_DESC] NVARCHAR (16) NOT NULL,
    [DESCRIPTION]          NVARCHAR (50) NOT NULL,
    [BatchID]              BIGINT        NULL,
    [ProcessLogID]         BIGINT        NULL,
    CONSTRAINT [PK_MANH_ILM_STATUS] PRIMARY KEY CLUSTERED ([ILM_STATUS] ASC)
);
