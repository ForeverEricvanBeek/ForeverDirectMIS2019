CREATE TABLE [MFV].[Shift_Data] (
    [ID]                    INT           NOT NULL,
    [ShiftID]               INT           NOT NULL,
    [MachineID]             INT           NULL,
    [Starttime]             DATETIME      NULL,
    [OrderID]               INT           NULL,
    [TotalTime]             INT           NULL,
    [PlannedDowntime]       BIGINT        NULL,
    [OutsideAreaTime]       BIGINT        NULL,
    [UnplannedDowntime]     BIGINT        NULL,
    [Runtime]               INT           NULL,
    [IdealProduction]       FLOAT (53)    NULL,
    [GoodQuantity]          INT           NULL,
    [Waste]                 INT           NULL,
    [Status_Update]         VARCHAR (255) NULL,
    [ModificationTimestamp] DATETIME      NULL,
    [BatchID]               BIGINT        NULL,
    [ProcessLogID]          BIGINT        NULL,
    CONSTRAINT [PK_Shift_Data] PRIMARY KEY CLUSTERED ([ID] ASC)
);

