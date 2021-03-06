﻿CREATE TABLE [TRANS].[FORWARDER_STATUS_CATEGORY] (
    [FORWARDER_STATUS_CATEGORY_CODE] NVARCHAR (20)  NOT NULL,
    [FORWARDER_STATUS_CATEGORY_NAME] NVARCHAR (100) NULL,
    [BatchID]                        BIGINT         NULL,
    [ProcessLogID]                   BIGINT         NULL,
    CONSTRAINT [PK_STATUS_CATEGORY] PRIMARY KEY CLUSTERED ([FORWARDER_STATUS_CATEGORY_CODE] ASC)
);

