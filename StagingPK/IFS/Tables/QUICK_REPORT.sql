CREATE TABLE [IFS].[QUICK_REPORT] (
    [QUICK_REPORT_ID] INT             NOT NULL,
    [OBJVERSION]      NVARCHAR (2000) NULL,
    [BatchID]         BIGINT          NULL,
    [ProcessLogID]    BIGINT          NULL,
    [Issue]           TINYINT         NULL,
    CONSTRAINT [PK_QUICK_REPORT] PRIMARY KEY CLUSTERED ([QUICK_REPORT_ID] ASC)
);

