CREATE TABLE [TRANS_ARC].[HUB_FORWARDER_RANGE] (
    [HUB_FORWARDER_ID]       INT          NOT NULL,
    [HUB_DSN_ID]             INT          NOT NULL,
    [PROJECT_ID]             INT          NOT NULL,
    [RANGE_START]            VARCHAR (20) NULL,
    [RANGE_END]              VARCHAR (20) NULL,
    [RANGE_CURRENT]          VARCHAR (20) NULL,
    [ENABLED]                BIT          NULL,
    [ACCOUNT_SELECT_CODE]    VARCHAR (50) NULL,
    [HUB_FORWARDER_RANGE_ID] INT          NOT NULL,
    [Eff_Date]               DATE         NOT NULL,
    [End_Date]               DATE         NULL,
    [ActInd]                 CHAR (1)     NULL,
    [IsDeleted]              CHAR (1)     NULL,
    [BatchID]                BIGINT       NULL,
    [ProcessLogID]           BIGINT       NULL,
    CONSTRAINT [PK_HUB_FORWARDER_RANGE] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [HUB_FORWARDER_RANGE_ID] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];



