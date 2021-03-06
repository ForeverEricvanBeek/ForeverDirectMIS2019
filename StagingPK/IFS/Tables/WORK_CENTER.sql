﻿CREATE TABLE [IFS].[WORK_CENTER] (
    [CONTRACT]       NVARCHAR (5)    NOT NULL,
    [WORK_CENTER_NO] NVARCHAR (5)    NOT NULL,
    [OBJVERSION]     NVARCHAR (2000) NULL,
    [BatchID]        BIGINT          NULL,
    [ProcessLogID]   BIGINT          NULL,
    [Issue]          TINYINT         NULL,
    CONSTRAINT [PK_WORK_CENTER] PRIMARY KEY CLUSTERED ([CONTRACT] ASC, [WORK_CENTER_NO] ASC)
);

