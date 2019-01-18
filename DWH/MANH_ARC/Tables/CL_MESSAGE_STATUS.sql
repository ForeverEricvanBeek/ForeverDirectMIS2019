CREATE TABLE [MANH_ARC].[CL_MESSAGE_STATUS] (
    [STATUS_ID]    BIGINT        NOT NULL,
    [STATUS_NAME]  NVARCHAR (64) NULL,
    [Eff_Date]     DATE          NOT NULL,
    [End_Date]     DATE          NULL,
    [ActInd]       CHAR (1)      NULL,
    [IsDeleted]    CHAR (1)      NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_MANH_CL_MESSAGE_STATUS] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [STATUS_ID] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];



