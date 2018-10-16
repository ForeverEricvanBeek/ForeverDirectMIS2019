CREATE TABLE [TRANS_ARC].[OLPN_LOOKUP] (
    [OLPN]                  VARCHAR (15) NOT NULL,
    [SHIPMENT_ID]           INT          NOT NULL,
    [ORIGINAL_INTERFACE_ID] BIGINT       NULL,
    [SEQ_NR]                BIGINT       NOT NULL,
    [BatchID]               BIGINT       NULL,
    [ProcessLogID]          BIGINT       NULL,
    CONSTRAINT [PK_OLPN_LOOKUP] PRIMARY KEY CLUSTERED ([OLPN] ASC) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];

