﻿CREATE TABLE [IFS].[USER_FINANCE] (
    [COMPANY]      NVARCHAR (20)   NOT NULL,
    [USERID]       NVARCHAR (30)   NOT NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    [Issue]        TINYINT         NULL,
    CONSTRAINT [PK_USER_FINANCE] PRIMARY KEY CLUSTERED ([COMPANY] ASC, [USERID] ASC)
);

