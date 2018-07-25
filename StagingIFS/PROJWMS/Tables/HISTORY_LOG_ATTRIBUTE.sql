﻿CREATE TABLE [PROJWMS].[HISTORY_LOG_ATTRIBUTE] (
    [LOG_ID]       INT             NOT NULL,
    [COLUMN_NAME]  NVARCHAR (30)   NOT NULL,
    [OLD_VALUE]    NVARCHAR (2000) NULL,
    [NEW_VALUE]    NVARCHAR (2000) NULL,
    [OBJID]        NVARCHAR (4000) NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    CONSTRAINT [PK_HISTORY_LOG_ATTRIBUTE] PRIMARY KEY CLUSTERED ([LOG_ID] ASC, [COLUMN_NAME] ASC)
);

