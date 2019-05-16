﻿CREATE TABLE [IFS].[FORWARDER_INFO] (
    [FORWARDER_ID] NVARCHAR (20)   NOT NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    [Issue]        TINYINT         NULL,
    CONSTRAINT [PK_FORWARDER_INFO] PRIMARY KEY CLUSTERED ([FORWARDER_ID] ASC)
);

