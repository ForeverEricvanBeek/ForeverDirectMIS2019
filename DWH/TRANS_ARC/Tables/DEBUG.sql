CREATE TABLE [TRANS_ARC].[DEBUG] (
    [DEBUG_ID]     BIGINT        NOT NULL,
    [INTERFACE_ID] BIGINT        NOT NULL,
    [MESSAGE]      VARCHAR (200) NULL,
    [CREATED]      DATETIME2 (7) NULL,
    [Eff_Date]     DATE          NOT NULL,
    [End_Date]     DATE          NULL,
    [ActInd]       CHAR (1)      NULL,
    [IsDeleted]    CHAR (1)      NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    CONSTRAINT [PK_DEBUG] PRIMARY KEY CLUSTERED ([DEBUG_ID] ASC, [Eff_Date] ASC) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];

