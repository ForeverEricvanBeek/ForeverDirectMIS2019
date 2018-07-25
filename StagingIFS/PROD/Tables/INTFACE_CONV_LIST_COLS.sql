﻿CREATE TABLE [PROD].[INTFACE_CONV_LIST_COLS] (
    [CONV_LIST_ID] NVARCHAR (100) NOT NULL,
    [OLD_VALUE]    NVARCHAR (200) NOT NULL,
    [NEW_VALUE]    NVARCHAR (200) NULL,
    [OBJID]        NVARCHAR (100) NULL,
    [OBJVERSION]   BIGINT         NULL,
    [BatchID]      BIGINT         NULL,
    [ProcessLogID] BIGINT         NULL,
    CONSTRAINT [PK_INTFACE_CONV_LIST_COLS_1] PRIMARY KEY CLUSTERED ([CONV_LIST_ID] ASC, [OLD_VALUE] ASC)
);

