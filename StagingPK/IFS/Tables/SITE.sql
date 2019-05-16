﻿CREATE TABLE [IFS].[SITE] (
    [CONTRACT]     NVARCHAR (5)    NOT NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    [Issue]        TINYINT         NULL,
    CONSTRAINT [PK_SITE] PRIMARY KEY CLUSTERED ([CONTRACT] ASC)
);

