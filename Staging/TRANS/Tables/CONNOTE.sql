﻿CREATE TABLE [TRANS].[CONNOTE] (
    [INTERFACE_ID] BIGINT        NOT NULL,
    [PATH]         VARCHAR (260) NULL,
    [CREATED]      DATETIME2 (7) DEFAULT (getdate()) NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_CONNOTE] PRIMARY KEY CLUSTERED ([INTERFACE_ID] ASC)
);

