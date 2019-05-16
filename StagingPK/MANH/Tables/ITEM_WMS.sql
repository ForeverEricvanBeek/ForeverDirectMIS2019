CREATE TABLE [MANH].[ITEM_WMS] (
    [ITEM_ID]                 INT           NOT NULL,
    [AUDIT_LAST_UPDATED_DTTM] DATETIME2 (7) NULL,
    [BatchID]                 BIGINT        NULL,
    [ProcessLogID]            BIGINT        NULL,
    [Issue]                   TINYINT       NULL,
    CONSTRAINT [PK_MANH_ITEM_WMS] PRIMARY KEY CLUSTERED ([ITEM_ID] ASC)
);

