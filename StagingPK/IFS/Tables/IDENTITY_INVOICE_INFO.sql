﻿CREATE TABLE [IFS].[IDENTITY_INVOICE_INFO] (
    [COMPANY]       NVARCHAR (20)   NOT NULL,
    [IDENTITY]      NVARCHAR (20)   NOT NULL,
    [PARTY_TYPE_DB] NVARCHAR (20)   NOT NULL,
    [OBJVERSION]    NVARCHAR (2000) NULL,
    [BatchID]       BIGINT          NULL,
    [ProcessLogID]  BIGINT          NULL,
    [Issue]         TINYINT         NULL,
    CONSTRAINT [PK_IDENTITY_INVOICE_INFO] PRIMARY KEY CLUSTERED ([COMPANY] ASC, [IDENTITY] ASC, [PARTY_TYPE_DB] ASC)
);

