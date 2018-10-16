CREATE TABLE [MANH_ARC].[ILM_STATUS] (
    [ILM_STATUS]           SMALLINT      NOT NULL,
    [ILM_STATUS_TYPE_DESC] NVARCHAR (16) NOT NULL,
    [DESCRIPTION]          NVARCHAR (50) NOT NULL,
    [Eff_Date]             DATE          NOT NULL,
    [End_Date]             DATE          NULL,
    [ActInd]               CHAR (1)      NULL,
    [IsDeleted]            CHAR (1)      NULL,
    [BatchID]              BIGINT        NULL,
    [ProcessLogID]         BIGINT        NULL,
    CONSTRAINT [PK_MANH_ILM_STATUS] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [ILM_STATUS] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];

