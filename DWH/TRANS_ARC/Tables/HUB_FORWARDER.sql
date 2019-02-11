CREATE TABLE [TRANS_ARC].[HUB_FORWARDER] (
    [HUB_FORWARDER_ID]   INT            NOT NULL,
    [HUB_FORWARDER_CODE] VARCHAR (5)    NULL,
    [HUB_FORWARDER_NAME] NVARCHAR (100) NULL,
    [CREATED]            DATETIME       NULL,
    [Eff_Date]           DATE           NOT NULL,
    [End_Date]           DATE           NULL,
    [ActInd]             CHAR (1)       NULL,
    [IsDeleted]          CHAR (1)       NULL,
    [BatchID]            BIGINT         NULL,
    [ProcessLogID]       BIGINT         NULL,
    CONSTRAINT [PK_HUB_FORWARDER] PRIMARY KEY CLUSTERED ([HUB_FORWARDER_ID] ASC, [Eff_Date] ASC) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];





