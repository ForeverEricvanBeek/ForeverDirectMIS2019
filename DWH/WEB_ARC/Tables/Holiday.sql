CREATE TABLE [WEB_ARC].[Holiday] (
    [date_key]     BIGINT   NOT NULL,
    [Eff_Date]     DATE     NOT NULL,
    [End_Date]     DATE     NULL,
    [ActInd]       CHAR (1) NULL,
    [IsDeleted]    CHAR (1) NULL,
    [BatchID]      BIGINT   NULL,
    [ProcessLogID] BIGINT   NULL,
    CONSTRAINT [PK_Holiday] PRIMARY KEY CLUSTERED ([date_key] ASC, [Eff_Date] ASC) ON [DWH_WEB_ARC]
) ON [DWH_WEB_ARC];

