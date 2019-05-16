CREATE TABLE [IFS].[MPCCOM_ACCOUNTING] (
    [ACCOUNTING_ID] INT             NOT NULL,
    [SEQ]           INT             NOT NULL,
    [OBJVERSION]    NVARCHAR (2000) NULL,
    [BatchID]       BIGINT          NULL,
    [ProcessLogID]  BIGINT          NULL,
    [Issue]         TINYINT         NULL,
    CONSTRAINT [PK_MPCCOM_ACCOUNTING] PRIMARY KEY CLUSTERED ([ACCOUNTING_ID] ASC, [SEQ] ASC)
);

