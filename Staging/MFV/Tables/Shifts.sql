CREATE TABLE [MFV].[Shifts] (
    [ShiftID]               INT           NOT NULL,
    [DateID]                INT           NULL,
    [MachineID]             INT           NULL,
    [StartTime]             DATETIME      NULL,
    [Endtime]               DATETIME      NULL,
    [Crew]                  VARCHAR (255) NULL,
    [Shift]                 VARCHAR (255) NULL,
    [ModificationTimestamp] DATETIME      NULL,
    [BatchID]               BIGINT        NULL,
    [ProcessLogID]          BIGINT        NULL,
    CONSTRAINT [PK_Shifts] PRIMARY KEY CLUSTERED ([ShiftID] ASC)
);

