CREATE TABLE [MANH].[ASN] (
    [ASN_ID]            BIGINT        NOT NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7) NOT NULL,
    [BatchID]           BIGINT        NULL,
    [ProcessLogID]      BIGINT        NULL,
    [Issue]             TINYINT       NULL,
    CONSTRAINT [PK_MANH_ASN] PRIMARY KEY CLUSTERED ([ASN_ID] ASC)
);

