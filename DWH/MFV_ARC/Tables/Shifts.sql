CREATE TABLE [MFV_ARC].[Shifts] (
    [ShiftID]               INT           NOT NULL,
    [DateID]                INT           NULL,
    [MachineID]             INT           NULL,
    [StartTime]             DATETIME      NULL,
    [Endtime]               DATETIME      NULL,
    [Crew]                  VARCHAR (255) NULL,
    [Shift]                 VARCHAR (255) NULL,
    [ModificationTimestamp] DATETIME      NULL,
    [Eff_Date]              DATE          NOT NULL,
    [End_Date]              DATE          NULL,
    [ActInd]                CHAR (1)      NULL,
    [IsDeleted]             CHAR (1)      NULL,
    [BatchID]               BIGINT        NULL,
    [ProcessLogID]          BIGINT        NULL,
    CONSTRAINT [PK_Shifts] PRIMARY KEY CLUSTERED ([ShiftID] ASC, [Eff_Date] ASC) ON [DWH_MFV_ARC]
) ON [DWH_MFV_ARC];

