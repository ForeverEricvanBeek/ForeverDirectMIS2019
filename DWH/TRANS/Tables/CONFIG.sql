CREATE TABLE [TRANS].[CONFIG] (
    [DSN_ID]           INT           NOT NULL,
    [PROJECT_ID]       INT           NOT NULL,
    [HUB_FORWARDER_ID] INT           NOT NULL,
    [CONFIG_KEY]       VARCHAR (20)  NOT NULL,
    [CONFIG_VALUE]     VARCHAR (100) NULL,
    [Eff_Date]         DATE          NOT NULL,
    [End_Date]         DATE          NULL,
    [ActInd]           CHAR (1)      NULL,
    [IsDeleted]        CHAR (1)      NULL,
    [BatchID]          BIGINT        NULL,
    [ProcessLogID]     BIGINT        NULL,
    CONSTRAINT [PK_CONFIG] PRIMARY KEY CLUSTERED ([DSN_ID] ASC, [PROJECT_ID] ASC, [HUB_FORWARDER_ID] ASC, [CONFIG_KEY] ASC, [Eff_Date] ASC) ON [DWH_TRANS]
) ON [DWH_TRANS];





