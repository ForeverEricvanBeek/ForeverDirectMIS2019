CREATE TABLE [MANH].[ORDERS] (
    [ORDER_ID]          BIGINT        NOT NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7) NOT NULL,
    [BatchID]           BIGINT        NULL,
    [ProcessLogID]      BIGINT        NULL,
    [Issue]             TINYINT       NULL,
    CONSTRAINT [PK_MANH_ORDERS] PRIMARY KEY CLUSTERED ([ORDER_ID] ASC)
);

