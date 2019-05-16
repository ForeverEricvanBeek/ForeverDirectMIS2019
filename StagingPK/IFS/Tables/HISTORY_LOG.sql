CREATE TABLE [IFS].[HISTORY_LOG] (
    [LOG_ID]       INT             NOT NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    [Issue]        TINYINT         NULL,
    CONSTRAINT [PK_HISTORY_LOG] PRIMARY KEY CLUSTERED ([LOG_ID] ASC)
);

