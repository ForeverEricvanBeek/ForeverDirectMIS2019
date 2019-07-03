CREATE TABLE [MFV].[Order_Data] (
    [ID]                    INT        NOT NULL,
    [OrderID]               INT        NULL,
    [MachineID]             INT        NULL,
    [ActualStartTime]       DATETIME   NULL,
    [ActualEndTime]         DATETIME   NULL,
    [TotalTime]             INT        NULL,
    [PlannedDowntime]       BIGINT     NULL,
    [OutsideAreaTime]       BIGINT     NULL,
    [UnplannedDowntime]     BIGINT     NULL,
    [Runtime]               INT        NULL,
    [IdealProduction]       FLOAT (53) NULL,
    [GoodQuantity]          INT        NULL,
    [BadQuantity]           INT        NULL,
    [ModificationTimestamp] DATETIME   NULL,
    [BatchID]               BIGINT     NULL,
    [ProcessLogID]          BIGINT     NULL,
    CONSTRAINT [PK_Order_Data] PRIMARY KEY CLUSTERED ([ID] ASC)
);

