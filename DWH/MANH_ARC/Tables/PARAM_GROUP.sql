CREATE TABLE [MANH_ARC].[PARAM_GROUP] (
    [PARAM_GROUP_ID]    NVARCHAR (10) NOT NULL,
    [PARAM_GROUP_NAME]  NVARCHAR (50) NULL,
    [CREATED_DTTM]      DATETIME2 (7) NOT NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7) NOT NULL,
    [Eff_Date]          DATE          NOT NULL,
    [End_Date]          DATE          NULL,
    [ActInd]            CHAR (1)      NULL,
    [IsDeleted]         CHAR (1)      NULL,
    [BatchID]           BIGINT        NULL,
    [ProcessLogID]      BIGINT        NULL,
    CONSTRAINT [PK_MANH_PARAM_GROUP] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [PARAM_GROUP_ID] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];





