CREATE TABLE [MANH].[ASN_DETAIL] (
    [ASN_DETAIL_ID]     BIGINT        NOT NULL,
    [ASN_ID]            BIGINT        NOT NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7) NOT NULL,
    [BatchID]           BIGINT        NULL,
    [ProcessLogID]      BIGINT        NULL,
    [Issue]             TINYINT       NULL,
    CONSTRAINT [PK_MANH_ASN_DETAIL] PRIMARY KEY CLUSTERED ([ASN_DETAIL_ID] ASC, [ASN_ID] ASC)
);

