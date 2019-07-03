CREATE TABLE [MFV_ARC].[Machine] (
    [MachineID]             INT           NOT NULL,
    [MachineName]           VARCHAR (255) NULL,
    [Type]                  VARCHAR (255) NULL,
    [ModificationTimestamp] DATETIME      NULL,
    [Eff_Date]              DATE          NOT NULL,
    [End_Date]              DATE          NULL,
    [ActInd]                CHAR (1)      NULL,
    [IsDeleted]             CHAR (1)      NULL,
    [BatchID]               BIGINT        NULL,
    [ProcessLogID]          BIGINT        NULL,
    CONSTRAINT [PK_Machine] PRIMARY KEY CLUSTERED ([MachineID] ASC, [Eff_Date] ASC) ON [DWH_MFV_ARC]
) ON [DWH_MFV_ARC];

