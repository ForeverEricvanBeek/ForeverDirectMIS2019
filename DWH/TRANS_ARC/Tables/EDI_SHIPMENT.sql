CREATE TABLE [TRANS_ARC].[EDI_SHIPMENT] (
    [INTERFACE_ID]          BIGINT   NOT NULL,
    [SHIPMENT_INTERFACE_ID] BIGINT   NOT NULL,
    [Eff_Date]              DATE     NOT NULL,
    [End_Date]              DATE     NULL,
    [ActInd]                CHAR (1) NULL,
    [IsDeleted]             CHAR (1) NULL,
    [BatchID]               BIGINT   NULL,
    [ProcessLogID]          BIGINT   NULL,
    CONSTRAINT [PK_EDI_SHIPMENT] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [INTERFACE_ID] ASC, [SHIPMENT_INTERFACE_ID] ASC) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];

