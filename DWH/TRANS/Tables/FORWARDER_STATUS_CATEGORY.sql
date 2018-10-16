CREATE TABLE [TRANS].[FORWARDER_STATUS_CATEGORY] (
    [FORWARDER_STATUS_CATEGORY_CODE] NVARCHAR (20)  NOT NULL,
    [FORWARDER_STATUS_CATEGORY_NAME] NVARCHAR (100) NULL,
    [Eff_Date]                       DATE           NOT NULL,
    [End_Date]                       DATE           NULL,
    [ActInd]                         CHAR (1)       NULL,
    [IsDeleted]                      CHAR (1)       NULL,
    [BatchID]                        BIGINT         NULL,
    [ProcessLogID]                   BIGINT         NULL,
    CONSTRAINT [PK_STATUS_CATEGORY] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [FORWARDER_STATUS_CATEGORY_CODE] ASC) ON [DWH_TRANS]
) ON [DWH_TRANS];



