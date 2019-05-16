﻿CREATE TABLE [IFS].[COMPANY_FINANCE_AUTH1] (
    [COMPANY]      NVARCHAR (30) NOT NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    [Issue]        TINYINT       NULL,
    CONSTRAINT [PK_COMPANY_FINANCE_AUTH1] PRIMARY KEY CLUSTERED ([COMPANY] ASC)
);

