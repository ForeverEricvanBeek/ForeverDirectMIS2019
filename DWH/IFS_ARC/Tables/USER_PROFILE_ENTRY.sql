CREATE TABLE [IFS_ARC].[USER_PROFILE_ENTRY] (
    [ENTRY_CODE]   NVARCHAR (30) NOT NULL,
    [ENTRY_VALUE]  NVARCHAR (30) NOT NULL,
    [Eff_Date]     DATE          NOT NULL,
    [End_Date]     DATE          NULL,
    [ActInd]       CHAR (1)      NULL,
    [IsDeleted]    CHAR (1)      NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_USER_PROFILE_ENTRY] PRIMARY KEY CLUSTERED ([ENTRY_CODE] ASC, [ENTRY_VALUE] ASC, [Eff_Date] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];





