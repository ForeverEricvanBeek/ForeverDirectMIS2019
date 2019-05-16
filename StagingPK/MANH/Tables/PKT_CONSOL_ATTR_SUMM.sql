CREATE TABLE [MANH].[PKT_CONSOL_ATTR_SUMM] (
    [PKT_CONSOL_ATTR_SUMM_ID] INT           NOT NULL,
    [MOD_DATE_TIME]           DATETIME2 (7) NULL,
    [BatchID]                 BIGINT        NULL,
    [ProcessLogID]            BIGINT        NULL,
    [Issue]                   TINYINT       NULL,
    CONSTRAINT [PK_MANH_PKT_CONSOL_ATTR_SUMM] PRIMARY KEY CLUSTERED ([PKT_CONSOL_ATTR_SUMM_ID] ASC)
);

