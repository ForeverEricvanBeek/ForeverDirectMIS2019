﻿CREATE TABLE [IFS].[COMPANY_FINANCE] (
    [COMPANY]      NVARCHAR (20)   NOT NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    [Issue]        TINYINT         NULL,
    CONSTRAINT [PK_COMPANY_FINANCE] PRIMARY KEY CLUSTERED ([COMPANY] ASC)
);
