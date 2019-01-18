CREATE TABLE [TRANS_ARC].[FORWARDER_STATUS_CODE] (
    [FORWARDER_CODE]        NVARCHAR (15)  NOT NULL,
    [FORWARDER_STATUS_CODE] NVARCHAR (15)  NOT NULL,
    [STATUS]                NVARCHAR (50)  NULL,
    [STATUS_CATEGORY]       NVARCHAR (20)  NULL,
    [DESCRIPTION]           NVARCHAR (200) NULL,
    [Eff_Date]              DATE           NOT NULL,
    [End_Date]              DATE           NULL,
    [ActInd]                CHAR (1)       NULL,
    [IsDeleted]             CHAR (1)       NULL,
    [BatchID]               BIGINT         NULL,
    [ProcessLogID]          BIGINT         NULL,
    CONSTRAINT [PK_FORWARDER_STATUS_CODE] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [FORWARDER_CODE] ASC, [FORWARDER_STATUS_CODE] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];



