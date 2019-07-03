CREATE TABLE [MFV].[OperatorHours] (
    [ID]                    INT      NOT NULL,
    [UserID]                INT      NULL,
    [MachineID]             INT      NULL,
    [ShiftID]               INT      NULL,
    [StartTime]             DATETIME NULL,
    [EndTime]               DATETIME NULL,
    [ModificationTimestamp] DATETIME NULL,
    [Eff_Date]              DATE     NOT NULL,
    [End_Date]              DATE     NULL,
    [ActInd]                CHAR (1) NULL,
    [IsDeleted]             CHAR (1) NULL,
    [BatchID]               BIGINT   NULL,
    [ProcessLogID]          BIGINT   NULL,
    CONSTRAINT [PK_OperatorHours] PRIMARY KEY CLUSTERED ([ID] ASC, [Eff_Date] ASC) ON [DWH_MFV]
) ON [DWH_MFV];

