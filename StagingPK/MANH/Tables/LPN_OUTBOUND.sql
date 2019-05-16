CREATE TABLE [MANH].[LPN_OUTBOUND] (
    [LPN_ID]            BIGINT        NOT NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7) NOT NULL,
    [BatchID]           BIGINT        NULL,
    [ProcessLogID]      BIGINT        NULL,
    [Issue]             TINYINT       NULL,
    CONSTRAINT [PK_MANH_LPN_OUTBOUND] PRIMARY KEY CLUSTERED ([LPN_ID] ASC)
);

