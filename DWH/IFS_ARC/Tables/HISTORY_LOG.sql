CREATE TABLE [IFS_ARC].[HISTORY_LOG] (
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
    [Eff_Date]        DATE            NOT NULL,
    [End_Date]        DATE            NULL,
    [ActInd]          CHAR (1)        NULL,
    [IsDeleted]       CHAR (1)        NULL,
    [BatchID]         BIGINT          NULL,
    [ProcessLogID]    BIGINT          NULL,
    CONSTRAINT [PK_HISTORY_LOG] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [LOG_ID] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];

