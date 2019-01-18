CREATE TABLE [TRANS_ARC].[FORWARDER_STATUS_CATEGORY] (
    [FORWARDER_STATUS_CATEGORY_CODE] NVARCHAR (20)  NOT NULL,
    [FORWARDER_STATUS_CATEGORY_NAME] NVARCHAR (100) NULL,
    [Eff_Date]                       DATE           NOT NULL,
    [End_Date]                       DATE           NULL,
    [ActInd]                         CHAR (1)       NULL,
    [IsDeleted]                      CHAR (1)       NULL,
    [BatchID]                        BIGINT         NULL,
    [ProcessLogID]                   BIGINT         NULL,
    CONSTRAINT [PK_STATUS_CATEGORY] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [FORWARDER_STATUS_CATEGORY_CODE] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];



