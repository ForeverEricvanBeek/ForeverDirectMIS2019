CREATE TABLE [TRANS_ARC].[SHIPMENT_AUX] (
    [INTERFACE_ID]        BIGINT       NOT NULL,
    [AUX_FORWARDER_CODE]  VARCHAR (5)  NULL,
    [PU_DEPOT]            VARCHAR (20) NULL,
    [DY_DEPOT]            VARCHAR (20) NULL,
    [PU_SORT]             VARCHAR (20) NULL,
    [DY_SORT]             VARCHAR (20) NULL,
    [GROUPING_PRIORITY]   VARCHAR (20) NULL,
    [IATA]                VARCHAR (20) NULL,
    [DPD_SERVICE_NR]      VARCHAR (20) NULL,
    [UPS_SHIPMENT_NUMBER] VARCHAR (20) NULL,
    [Eff_Date]            DATE         NOT NULL,
    [End_Date]            DATE         NULL,
    [ActInd]              CHAR (1)     NULL,
    [IsDeleted]           CHAR (1)     NULL,
    [BatchID]             BIGINT       NULL,
    [ProcessLogID]        BIGINT       NULL,
    CONSTRAINT [PK_LABEL_AUX] PRIMARY KEY CLUSTERED ([INTERFACE_ID] ASC, [Eff_Date] ASC) WITH (FILLFACTOR = 90) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];





