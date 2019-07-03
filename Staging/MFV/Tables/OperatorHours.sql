CREATE TABLE [MFV].[OperatorHours] (
    [ID]                    INT      NOT NULL,
    [UserID]                INT      NULL,
    [MachineID]             INT      NULL,
    [ShiftID]               INT      NULL,
    [StartTime]             DATETIME NULL,
    [EndTime]               DATETIME NULL,
    [ModificationTimestamp] DATETIME NULL,
    [BatchID]               BIGINT   NULL,
    [ProcessLogID]          BIGINT   NULL,
    CONSTRAINT [PK_OperatorHours] PRIMARY KEY CLUSTERED ([ID] ASC)
);

