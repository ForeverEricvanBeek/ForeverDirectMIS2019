CREATE TABLE [TRANS_ARC].[HUB_INTERFACE] (
    [INTERFACE_ID]   BIGINT        NOT NULL,
    [DSN_ID]         INT           NULL,
    [PROJECT_ID]     INT           NULL,
    [SHIPMENT_ID]    INT           NULL,
    [FORWARDER_ID]   INT           NULL,
    [IS_COMPLETED]   BIT           NULL,
    [IS_SUCCESS]     BIT           NULL,
    [IS_REMOVED]     BIT           NULL,
    [CREATED]        DATETIME2 (7) NULL,
    [MODIFIED]       DATETIME2 (7) NULL,
    [INTERFACE_TYPE] INT           NULL,
    [IS_TEST]        BIT           NULL,
    [BatchID]        BIGINT        NULL,
    [ProcessLogID]   BIGINT        NULL,
    CONSTRAINT [PK_HUB_INTERFACE] PRIMARY KEY CLUSTERED ([INTERFACE_ID] ASC) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];





