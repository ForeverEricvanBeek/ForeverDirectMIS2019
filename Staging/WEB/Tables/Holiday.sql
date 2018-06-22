CREATE TABLE [WEB].[Holiday] (
    [date_key]     BIGINT NOT NULL,
    [BatchID]      BIGINT NULL,
    [ProcessLogID] BIGINT NULL,
    CONSTRAINT [PK_Holiday] PRIMARY KEY CLUSTERED ([date_key] ASC)
);

