﻿CREATE TABLE [IFS].[ACCOUNT] (
    [COMPANY]      NVARCHAR (20)   NOT NULL,
    [ACCOUNT]      NVARCHAR (20)   NOT NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    [Issue]        TINYINT         NULL,
    CONSTRAINT [PK_ACCOUNT] PRIMARY KEY CLUSTERED ([COMPANY] ASC, [ACCOUNT] ASC)
);
