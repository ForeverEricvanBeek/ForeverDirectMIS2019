﻿CREATE TABLE [IFS].[PURCHASE_PART] (
    [CONTRACT]     NVARCHAR (5)    NOT NULL,
    [PART_NO]      NVARCHAR (25)   NOT NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    [Issue]        TINYINT         NULL,
    CONSTRAINT [PK_PURCHASE_PART] PRIMARY KEY CLUSTERED ([PART_NO] ASC, [CONTRACT] ASC)
);

