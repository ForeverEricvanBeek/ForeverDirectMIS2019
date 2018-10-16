CREATE TABLE [MANH_ARC].[MSG_TYPE] (
    [MSG_TYPE]     NVARCHAR (30) NOT NULL,
    [DESCRIPTION]  NVARCHAR (50) NULL,
    [Eff_Date]     DATE          NOT NULL,
    [End_Date]     DATE          NULL,
    [ActInd]       CHAR (1)      NULL,
    [IsDeleted]    CHAR (1)      NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_MANH_MSG_TYPE] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [MSG_TYPE] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];

