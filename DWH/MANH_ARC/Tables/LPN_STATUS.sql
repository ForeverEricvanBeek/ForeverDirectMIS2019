CREATE TABLE [MANH_ARC].[LPN_STATUS] (
    [LPN_STATUS]   INT           NOT NULL,
    [DESCRIPTION]  NVARCHAR (50) NOT NULL,
    [Eff_Date]     DATE          NOT NULL,
    [End_Date]     DATE          NULL,
    [ActInd]       CHAR (1)      NULL,
    [IsDeleted]    CHAR (1)      NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_MANH_LPN_STATUS] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [LPN_STATUS] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];



