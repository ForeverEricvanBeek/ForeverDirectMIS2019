CREATE TABLE [MANH].[LABEL] (
    [LABEL_ID]          INT            NOT NULL,
    [KEY]               NVARCHAR (500) NOT NULL,
    [VALUE]             NVARCHAR (500) NOT NULL,
    [BUNDLE_NAME]       NVARCHAR (50)  NOT NULL,
    [CREATED_DTTM]      DATETIME2 (7)  NOT NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7)  NULL,
    [BatchID]           BIGINT         NULL,
    [ProcessLogID]      BIGINT         NULL,
    CONSTRAINT [PK_MANH_LABEL] PRIMARY KEY CLUSTERED ([LABEL_ID] ASC)
);

