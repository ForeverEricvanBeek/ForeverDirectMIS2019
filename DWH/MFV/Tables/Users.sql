CREATE TABLE [MFV].[Users] (
    [UserID]                INT           NOT NULL,
    [UserName]              VARCHAR (255) NULL,
    [IDCode]                VARCHAR (255) NULL,
    [ModificationTimestamp] DATETIME      NULL,
    [Eff_Date]              DATE          NOT NULL,
    [End_Date]              DATE          NULL,
    [ActInd]                CHAR (1)      NULL,
    [IsDeleted]             CHAR (1)      NULL,
    [BatchID]               BIGINT        NULL,
    [ProcessLogID]          BIGINT        NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([UserID] ASC, [Eff_Date] ASC) ON [DWH_MFV]
) ON [DWH_MFV];

