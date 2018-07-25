CREATE TABLE [IFS].[HISTORY_LOG] (
    [LOG_ID]          INT             NOT NULL,
    [MODULE]          NVARCHAR (6)    NULL,
    [LU_NAME]         NVARCHAR (30)   NULL,
    [TABLE_NAME]      NVARCHAR (30)   NULL,
    [TIME_STAMP]      DATETIME2 (7)   NULL,
    [KEYS]            NVARCHAR (600)  NULL,
    [HISTORY_TYPE]    NVARCHAR (4000) NULL,
    [HISTORY_TYPE_DB] NVARCHAR (20)   NULL,
    [USERNAME]        NVARCHAR (30)   NULL,
    [NOTE]            NVARCHAR (100)  NULL,
    [TRANSACTION_ID]  NVARCHAR (20)   NULL,
    [OBJID]           NVARCHAR (4000) NULL,
    [OBJVERSION]      NVARCHAR (2000) NULL,
    [BatchID]         BIGINT          NULL,
    [ProcessLogID]    BIGINT          NULL
);

