﻿CREATE TABLE [IFS].[ISO_UNIT_DEF] (
    [UNIT_CODE]    NVARCHAR (30)   NOT NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    [Issue]        TINYINT         NULL,
    CONSTRAINT [PK_ISO_UNIT_DEF] PRIMARY KEY CLUSTERED ([UNIT_CODE] ASC)
);

