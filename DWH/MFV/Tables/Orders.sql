CREATE TABLE [MFV].[Orders] (
    [OrderID]               INT           NOT NULL,
    [OrderName]             VARCHAR (255) NULL,
    [MachineID]             INT           NULL,
    [ArticleID]             INT           NULL,
    [OrderQuantity]         INT           NULL,
    [PlannedStarttime]      DATETIME      NULL,
    [PlannedEndtime]        DATETIME      NULL,
    [Status]                VARCHAR (255) NULL,
    [ModificationTimestamp] DATETIME      NULL,
    [Eff_Date]              DATE          NOT NULL,
    [End_Date]              DATE          NULL,
    [ActInd]                CHAR (1)      NULL,
    [IsDeleted]             CHAR (1)      NULL,
    [BatchID]               BIGINT        NULL,
    [ProcessLogID]          BIGINT        NULL,
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([OrderID] ASC, [Eff_Date] ASC) ON [DWH_MFV]
) ON [DWH_MFV];

