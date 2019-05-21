﻿CREATE TABLE [IFS].[MANUFACTURED_PART] (
    [ORDER_NO]     NVARCHAR (12)   NOT NULL,
    [RELEASE_NO]   NVARCHAR (4)    NOT NULL,
    [SEQUENCE_NO]  NVARCHAR (4)    NOT NULL,
    [PART_NO]      NVARCHAR (25)   NOT NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    [Issue]        TINYINT         NULL,
    CONSTRAINT [PK_MANUFACTURED_PART] PRIMARY KEY CLUSTERED ([ORDER_NO] ASC, [RELEASE_NO] ASC, [SEQUENCE_NO] ASC, [PART_NO] ASC)
);
