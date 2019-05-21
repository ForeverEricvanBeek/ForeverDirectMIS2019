﻿CREATE TABLE [IFS].[ISO_COUNTRY] (
    [COUNTRY_CODE] NVARCHAR (2)    NOT NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    [Issue]        TINYINT         NULL,
    CONSTRAINT [PK_ISO_COUNTRY] PRIMARY KEY CLUSTERED ([COUNTRY_CODE] ASC)
);
