CREATE TABLE [TRANS].[FD_FORWARDER] (
    [FD_FORWARDER_CODE] VARCHAR (20) NOT NULL,
    [HUB_FORWARDER_ID]  INT          NULL,
    [HUB_SERVICE_ID]    INT          NULL,
    [Eff_Date]          DATE         NOT NULL,
    [End_Date]          DATE         NULL,
    [ActInd]            CHAR (1)     NULL,
    [IsDeleted]         CHAR (1)     NULL,
    [BatchID]           BIGINT       NULL,
    [ProcessLogID]      BIGINT       NULL,
    CONSTRAINT [PK_FD_FORWARDER] PRIMARY KEY CLUSTERED ([FD_FORWARDER_CODE] ASC, [Eff_Date] ASC) ON [DWH_TRANS]
) ON [DWH_TRANS];





