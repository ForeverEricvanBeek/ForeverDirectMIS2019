CREATE TABLE [TRANS_ARC].[FD_FORWARDER] (
    [FD_FORWARDER_CODE] VARCHAR (20) NOT NULL,
    [HUB_FORWARDER_ID]  INT          NULL,
    [HUB_SERVICE_ID]    INT          NULL,
    [Eff_Date]          DATE         NOT NULL,
    [End_Date]          DATE         NULL,
    [ActInd]            CHAR (1)     NULL,
    [IsDeleted]         CHAR (1)     NULL,
    [BatchID]           BIGINT       NULL,
    [ProcessLogID]      BIGINT       NULL,
    CONSTRAINT [PK_FD_FORWARDER] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [FD_FORWARDER_CODE] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];



