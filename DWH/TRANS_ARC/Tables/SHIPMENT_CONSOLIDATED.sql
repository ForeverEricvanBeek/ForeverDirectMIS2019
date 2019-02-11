CREATE TABLE [TRANS_ARC].[SHIPMENT_CONSOLIDATED] (
    [SHIPMENT_ID]            INT           NOT NULL,
    [HUB_FORWARDER_ID]       NCHAR (10)    NULL,
    [ORIGINAL_INTERFACE_ID]  BIGINT        NULL,
    [LAST_INTERFACE_ID]      BIGINT        NULL,
    [SHIPPER_SHIPMENT_REF]   VARCHAR (24)  NULL,
    [FORWARDER_SHIPMENT_REF] VARCHAR (24)  NULL,
    [STATUS]                 VARCHAR (5)   NULL,
    [ACTUAL_PU_TS]           DATETIME      NULL,
    [ACTUAL_DY_TS]           DATETIME      NULL,
    [CREATED]                DATETIME2 (7) NULL,
    [Eff_Date]               DATE          NOT NULL,
    [End_Date]               DATE          NULL,
    [ActInd]                 CHAR (1)      NULL,
    [IsDeleted]              CHAR (1)      NULL,
    [BatchID]                BIGINT        NULL,
    [ProcessLogID]           BIGINT        NULL,
    CONSTRAINT [PK_SHIPMENT_CONSOLIDATED] PRIMARY KEY CLUSTERED ([SHIPMENT_ID] ASC, [Eff_Date] ASC) WITH (FILLFACTOR = 90) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];





