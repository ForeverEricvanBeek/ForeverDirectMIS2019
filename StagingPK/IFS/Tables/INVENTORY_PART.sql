﻿CREATE TABLE [IFS].[INVENTORY_PART] (
    [CONTRACT]     NVARCHAR (5)  NOT NULL,
    [PART_NO]      NVARCHAR (25) NOT NULL,
    [OBJVERSION]   BIGINT        NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    [Issue]        TINYINT       NULL,
    CONSTRAINT [PK_INVENTORY_PART_1] PRIMARY KEY CLUSTERED ([CONTRACT] ASC, [PART_NO] ASC)
);

