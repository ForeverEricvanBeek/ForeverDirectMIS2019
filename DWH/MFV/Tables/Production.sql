CREATE TABLE [MFV].[Production] (
    [ID]                    INT      NOT NULL,
    [OrderID]               INT      NULL,
    [MachineID]             INT      NULL,
    [ShiftID]               INT      NULL,
    [Timestamp]             DATETIME NULL,
    [Quantity]              INT      NULL,
    [ModificationTimestamp] DATETIME NULL,
    [Eff_Date]              DATE     NOT NULL,
    [End_Date]              DATE     NULL,
    [ActInd]                CHAR (1) NULL,
    [IsDeleted]             CHAR (1) NULL,
    [BatchID]               BIGINT   NULL,
    [ProcessLogID]          BIGINT   NULL,
    CONSTRAINT [PK_Production] PRIMARY KEY CLUSTERED ([ID] ASC, [Eff_Date] ASC) ON [DWH_MFV]
) ON [DWH_MFV];

