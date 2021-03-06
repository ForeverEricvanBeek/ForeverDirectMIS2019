﻿CREATE TABLE [IFS].[COMMODITY_GROUP] (
    [COMMODITY_CODE] NVARCHAR (5)    NOT NULL,
    [OBJVERSION]     NVARCHAR (2000) NULL,
    [BatchID]        BIGINT          NULL,
    [ProcessLogID]   BIGINT          NULL,
    [Issue]          TINYINT         NULL,
    CONSTRAINT [PK_COMMODITY_GROUP] PRIMARY KEY CLUSTERED ([COMMODITY_CODE] ASC)
);

