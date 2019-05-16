﻿CREATE TABLE [IFS].[CURRENCY_CODE] (
    [COMPANY]       NVARCHAR (20)   NOT NULL,
    [CURRENCY_CODE] NVARCHAR (3)    NOT NULL,
    [OBJVERSION]    NVARCHAR (2000) NULL,
    [BatchID]       BIGINT          NULL,
    [ProcessLogID]  BIGINT          NULL,
    [Issue]         TINYINT         NULL,
    CONSTRAINT [PK_CURRENCY_CODE] PRIMARY KEY CLUSTERED ([COMPANY] ASC, [CURRENCY_CODE] ASC)
);

