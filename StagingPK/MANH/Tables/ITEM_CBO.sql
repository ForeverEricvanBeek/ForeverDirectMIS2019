CREATE TABLE [MANH].[ITEM_CBO] (
    [ITEM_ID]           INT           NOT NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7) NULL,
    [BatchID]           BIGINT        NULL,
    [ProcessLogID]      BIGINT        NULL,
    [Issue]             TINYINT       NULL,
    CONSTRAINT [PK_MANH_ITEM_CBO] PRIMARY KEY CLUSTERED ([ITEM_ID] ASC)
);

