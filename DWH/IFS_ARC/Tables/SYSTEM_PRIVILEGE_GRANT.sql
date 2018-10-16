CREATE TABLE [IFS_ARC].[SYSTEM_PRIVILEGE_GRANT] (
    [PRIVILEGE_ID] NVARCHAR (30)   NOT NULL,
    [ROLE]         NVARCHAR (30)   NOT NULL,
    [OBJID]        NVARCHAR (4000) NULL,
    [OBJVERSION]   NVARCHAR (14)   NULL,
    [Eff_Date]     DATE            NOT NULL,
    [End_Date]     DATE            NULL,
    [ActInd]       CHAR (1)        NULL,
    [IsDeleted]    CHAR (1)        NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    CONSTRAINT [PK_SYSTEM_PRIVILEGE_GRANT] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [PRIVILEGE_ID] ASC, [ROLE] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];

