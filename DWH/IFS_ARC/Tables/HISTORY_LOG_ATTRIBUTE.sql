CREATE TABLE [IFS_ARC].[HISTORY_LOG_ATTRIBUTE] (
    [LOG_ID]       INT             NOT NULL,
    [COLUMN_NAME]  NVARCHAR (30)   NOT NULL,
    [OLD_VALUE]    NVARCHAR (2000) NULL,
    [NEW_VALUE]    NVARCHAR (2000) NULL,
    [OBJID]        NVARCHAR (4000) NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [Eff_Date]     DATE            NOT NULL,
    [End_Date]     DATE            NULL,
    [ActInd]       CHAR (1)        NULL,
    [IsDeleted]    CHAR (1)        NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    CONSTRAINT [PK_HISTORY_LOG_ATTRIBUTE] PRIMARY KEY CLUSTERED ([COLUMN_NAME] ASC, [Eff_Date] ASC, [LOG_ID] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];

