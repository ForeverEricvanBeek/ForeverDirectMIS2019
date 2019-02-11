CREATE TABLE [IFS].[IAL_OBJECT] (
    [NAME]                    NVARCHAR (30)   NOT NULL,
    [REPLICATION]             NVARCHAR (20)   NULL,
    [REPLICATION_SCHEDULE]    NVARCHAR (100)  NULL,
    [NEXT_EXEC_TIME]          DATETIME2 (7)   NULL,
    [LAST_EXEC_TIME]          DATETIME2 (7)   NULL,
    [REPLICATION_STATUS]      NVARCHAR (20)   NULL,
    [REPLICATION_AVAIL]       NVARCHAR (20)   NULL,
    [LAST_EXEC_TIME_COMPLETE] DATETIME2 (7)   NULL,
    [WHERE_CLAUSE]            NVARCHAR (400)  NULL,
    [DESCRIPTION]             NVARCHAR (100)  NULL,
    [OBJID]                   NVARCHAR (4000) NULL,
    [OBJVERSION]              NVARCHAR (2000) NULL,
    [Eff_Date]                DATE            NOT NULL,
    [End_Date]                DATE            NULL,
    [ActInd]                  CHAR (1)        NULL,
    [IsDeleted]               CHAR (1)        NULL,
    [BatchID]                 BIGINT          NULL,
    [ProcessLogID]            BIGINT          NULL,
    CONSTRAINT [PK_IAL_OBJECT] PRIMARY KEY CLUSTERED ([NAME] ASC, [Eff_Date] ASC) ON [DWH_IFS]
) ON [DWH_IFS];





