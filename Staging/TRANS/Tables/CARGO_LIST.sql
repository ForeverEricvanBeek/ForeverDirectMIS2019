CREATE TABLE [TRANS].[CARGO_LIST] (
    [CARGO_ID]     BIGINT        NOT NULL,
    [DSN_ID]       INT           NULL,
    [PROJECT_ID]   INT           NULL,
    [FORWARDER_ID] INT           NULL,
    [TIMESTAMP]    DATETIME2 (7) NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_CARGO_LIST] PRIMARY KEY CLUSTERED ([CARGO_ID] ASC)
);

