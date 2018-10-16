CREATE TABLE [MANH_ARC].[CL_MESSAGE] (
    [VERSION_ID]   INT            NOT NULL,
    [MSG_ID]       BIGINT         NOT NULL,
    [EVENT_ID]     BIGINT         NOT NULL,
    [PRTY]         BIGINT         NULL,
    [ENCODING]     INT            NOT NULL,
    [WHEN_CREATED] NVARCHAR (MAX) NOT NULL,
    [SOURCE_ID]    NVARCHAR (64)  NULL,
    [SOURCE_URI]   NVARCHAR (256) NULL,
    [DATA]         TEXT           NOT NULL,
    [Eff_Date]     DATE           NOT NULL,
    [End_Date]     DATE           NULL,
    [ActInd]       CHAR (1)       NULL,
    [IsDeleted]    CHAR (1)       NULL,
    [BatchID]      BIGINT         NULL,
    [ProcessLogID] BIGINT         NULL,
    CONSTRAINT [PK_MANH_CL_MESSAGE] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [MSG_ID] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];

