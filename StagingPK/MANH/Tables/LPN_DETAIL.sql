CREATE TABLE [MANH].[LPN_DETAIL] (
    [LPN_ID]            BIGINT        NOT NULL,
    [LPN_DETAIL_ID]     BIGINT        NOT NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7) NOT NULL,
    [BatchID]           BIGINT        NULL,
    [ProcessLogID]      BIGINT        NULL,
    [Issue]             TINYINT       NULL,
    CONSTRAINT [PK_MANH_LPN_DETAIL] PRIMARY KEY CLUSTERED ([LPN_DETAIL_ID] ASC, [LPN_ID] ASC)
);

