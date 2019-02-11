CREATE TABLE [TRANS_ARC].[FORWARDER_STATUS_SUBCATEGORY] (
    [STATUS_CATEGORY] VARCHAR (20) NOT NULL,
    [STATUS]          VARCHAR (50) NOT NULL,
    [Eff_Date]        DATE         NOT NULL,
    [End_Date]        DATE         NULL,
    [ActInd]          CHAR (1)     NULL,
    [IsDeleted]       CHAR (1)     NULL,
    [BatchID]         BIGINT       NULL,
    [ProcessLogID]    BIGINT       NULL,
    CONSTRAINT [PK_FORWARDER_STATUS_SUBCATEGORY] PRIMARY KEY CLUSTERED ([STATUS_CATEGORY] ASC, [STATUS] ASC, [Eff_Date] ASC) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];





