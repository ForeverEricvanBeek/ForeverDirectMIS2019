CREATE TABLE [TPX7_ARC].[VW_FORWARDER_EVENT] (
    [FORWARDER_EVENT_ID]        INT           NOT NULL,
    [FORWARDER_CODE]            VARCHAR (3)   NOT NULL,
    [FORWARDER_EVENT_CODE]      VARCHAR (20)  NOT NULL,
    [FORWARDER_EVENT_TYPE_CODE] VARCHAR (20)  NOT NULL,
    [DESCRIPTION]               VARCHAR (300) NOT NULL,
    [SHIPMENT_EVENT_CODE]       VARCHAR (20)  NULL,
    [SHIPMENT_EVENT_TYPE]       VARCHAR (20)  NULL,
    [SHIPMENT_DESCRIPTION]      VARCHAR (100) NULL,
    [SHIPMENT_STATUS]           VARCHAR (10)  NULL,
    [SHIPMENT_RESPONSIBLE]      VARCHAR (20)  NULL,
    [Eff_Date]                  DATE          NOT NULL,
    [End_Date]                  DATE          NULL,
    [ActInd]                    CHAR (1)      NULL,
    [IsDeleted]                 CHAR (1)      NULL,
    [BatchID]                   BIGINT        NULL,
    [ProcessLogID]              BIGINT        NULL,
    CONSTRAINT [PK_FORWARDER_EVENT] PRIMARY KEY CLUSTERED ([FORWARDER_EVENT_ID] ASC, [Eff_Date] ASC) WITH (FILLFACTOR = 90) ON [DWH_TPX7_ARC]
) ON [DWH_TPX7_ARC];





