﻿CREATE TABLE [IFS].[PART_CATALOG_INVENT_ATTRIB] (
    [PART_NO]      NVARCHAR (25)   NOT NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    [Issue]        TINYINT         NULL,
    CONSTRAINT [PK_PART_CATALOG_INVENT_ATTRIB] PRIMARY KEY CLUSTERED ([PART_NO] ASC)
);

