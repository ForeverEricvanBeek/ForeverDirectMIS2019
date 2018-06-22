CREATE TABLE [TRANS].[HUB_FORWARDER_RANGE] (
    [HUB_FORWARDER_ID] INT          NOT NULL,
    [HUB_DSN_ID]       INT          NOT NULL,
    [PROJECT_ID]       INT          NOT NULL,
    [RANGE_START]      VARCHAR (20) NULL,
    [RANGE_END]        VARCHAR (20) NULL,
    [RANGE_CURRENT]    VARCHAR (20) NULL,
    [ENABLED]          BIT          NULL,
    [Eff_Date]         DATE         NOT NULL,
    [End_Date]         DATE         NULL,
    [ActInd]           CHAR (1)     NULL,
    [IsDeleted]        CHAR (1)     NULL,
    [BatchID]          BIGINT       NULL,
    [ProcessLogID]     BIGINT       NULL,
    CONSTRAINT [PK_HUB_FORWARDER_RANGE] PRIMARY KEY CLUSTERED ([HUB_FORWARDER_ID] ASC, [HUB_DSN_ID] ASC, [PROJECT_ID] ASC, [Eff_Date] ASC)
);

