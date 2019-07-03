CREATE TABLE [MFV].[Production] (
    [ID]                    INT      NOT NULL,
    [OrderID]               INT      NULL,
    [MachineID]             INT      NULL,
    [ShiftID]               INT      NULL,
    [Timestamp]             DATETIME NULL,
    [Quantity]              INT      NULL,
    [ModificationTimestamp] DATETIME NULL,
    [BatchID]               BIGINT   NULL,
    [ProcessLogID]          BIGINT   NULL,
    CONSTRAINT [PK_Production] PRIMARY KEY CLUSTERED ([ID] ASC)
);

