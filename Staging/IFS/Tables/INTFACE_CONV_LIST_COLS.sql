﻿CREATE TABLE [IFS].[INTFACE_CONV_LIST_COLS] (
    [CONV_LIST_ID] NVARCHAR (100) NOT NULL,
    [OLD_VALUE]    NVARCHAR (200) NULL,
    [NEW_VALUE]    NVARCHAR (200) NULL,
    [OBJID]        NVARCHAR (100) NULL,
    [OBJVERSION]   BIGINT         NULL,
    [BatchID]      BIGINT         NULL,
    [ProcessLogID] BIGINT         NULL
);

