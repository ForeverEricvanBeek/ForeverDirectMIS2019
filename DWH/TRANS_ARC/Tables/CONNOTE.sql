CREATE TABLE [TRANS_ARC].[CONNOTE] (
    [INTERFACE_ID] BIGINT        NOT NULL,
    [PATH]         VARCHAR (260) NULL,
    [CREATED]      DATETIME2 (7) NULL,
    [Eff_Date]     DATE          NOT NULL,
    [End_Date]     DATE          NULL,
    [ActInd]       CHAR (1)      NULL,
    [IsDeleted]    CHAR (1)      NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_CONNOTE] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [INTERFACE_ID] ASC) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];

