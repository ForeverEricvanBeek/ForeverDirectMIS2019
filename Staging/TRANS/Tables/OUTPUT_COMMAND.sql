﻿CREATE TABLE [TRANS].[OUTPUT_COMMAND] (
    [OUTPUT_COMMAND_ID] BIGINT        NOT NULL,
    [INTERFACE_ID]      BIGINT        NULL,
    [COMMAND]           VARCHAR (100) NULL,
    [FILE_NAME]         VARCHAR (260) NULL,
    [CREATED_TS]        DATETIME2 (7) NULL,
    [COMPLETED_TS]      DATETIME2 (7) NULL,
    [COMPLETED]         BIT           NULL,
    [BatchID]           BIGINT        NULL,
    [ProcessLogID]      BIGINT        NULL,
    CONSTRAINT [PK_OUTPUT_COMMAND] PRIMARY KEY CLUSTERED ([OUTPUT_COMMAND_ID] ASC)
);

