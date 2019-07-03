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
    [Eff_Date]              DATE       NOT NULL,
    [End_Date]              DATE       NULL,
    [ActInd]                CHAR (1)   NULL,
    [IsDeleted]             CHAR (1)   NULL,
    [BatchID]               BIGINT     NULL,
    [ProcessLogID]          BIGINT     NULL,
    CONSTRAINT [PK_Order_Data] PRIMARY KEY CLUSTERED ([ID] ASC, [Eff_Date] ASC) ON [DWH_MFV]
) ON [DWH_MFV];

