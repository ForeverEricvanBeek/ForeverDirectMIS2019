CREATE TABLE [MANH_ARC].[LRF_PRINT_STATUS] (
    [STAT_CODE]    NUMERIC (4)   NOT NULL,
    [DESCRIPTION]  NVARCHAR (50) NOT NULL,
    [Eff_Date]     DATE          NOT NULL,
    [End_Date]     DATE          NULL,
    [ActInd]       CHAR (1)      NULL,
    [IsDeleted]    CHAR (1)      NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_MANH_LRF_PRINT_STATUS] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [STAT_CODE] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];



