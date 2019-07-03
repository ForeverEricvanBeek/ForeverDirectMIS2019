CREATE TABLE [MFV].[Calendar] (
    [DateID]                INT      NOT NULL,
    [Date]                  DATETIME NULL,
    [Day]                   INT      NULL,
    [Month]                 INT      NULL,
    [Year]                  INT      NULL,
    [ModificationTimestamp] DATETIME NULL,
    [Eff_Date]              DATE     NOT NULL,
    [End_Date]              DATE     NULL,
    [ActInd]                CHAR (1) NULL,
    [IsDeleted]             CHAR (1) NULL,
    [BatchID]               BIGINT   NULL,
    [ProcessLogID]          BIGINT   NULL,
    CONSTRAINT [PK_Calendar] PRIMARY KEY CLUSTERED ([DateID] ASC, [Eff_Date] ASC) ON [DWH_MFV]
) ON [DWH_MFV];

