﻿CREATE TABLE [IFS].[USER_ALLOWED_SITE] (
    [USERID]       NVARCHAR (30)   NOT NULL,
    [CONTRACT]     NVARCHAR (5)    NOT NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    [Issue]        TINYINT         NULL,
    CONSTRAINT [PK_USER_ALLOWED_SITE] PRIMARY KEY CLUSTERED ([USERID] ASC, [CONTRACT] ASC)
);
