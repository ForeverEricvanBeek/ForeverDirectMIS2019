CREATE TABLE [IFS_ARC].[FND_USER_ROLE] (
    [IDENTITY]     NVARCHAR (30)   NOT NULL,
    [ROLE]         NVARCHAR (30)   NOT NULL,
    [OBJID]        NVARCHAR (4000) NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [Eff_Date]     DATE            NOT NULL,
    [End_Date]     DATE            NULL,
    [ActInd]       CHAR (1)        NULL,
    [IsDeleted]    CHAR (1)        NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    CONSTRAINT [PK_FND_USER_ROLE] PRIMARY KEY CLUSTERED ([IDENTITY] ASC, [ROLE] ASC, [Eff_Date] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];





