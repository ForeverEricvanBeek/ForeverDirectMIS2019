﻿CREATE TABLE [TRANS].[FORWARDER_STATUS_RUN] (
    [FORWARDER_STATUS_RUN_ID]  BIGINT        NOT NULL,
    [RUN_ID]                   INT           NULL,
    [HUB_FORWARDER_ID]         INT           NULL,
    [SHIPPER_SHIPMENT_REF]     VARCHAR (24)  NULL,
    [FORWARDER_SHIPMENT_REF]   VARCHAR (24)  NULL,
    [STATUS]                   VARCHAR (20)  NULL,
    [CREATED]                  DATETIME2 (7) NULL,
    [STATUS_DATE]              DATETIME      NULL,
    [FORWARDER_STATUS_FILE_ID] INT           NULL,
    [STATUS_MESSAGE]           VARCHAR (200) NOT NULL,
    [INTERFACE_ID]             BIGINT        NULL,
    [BatchID]                  BIGINT        NULL,
    [ProcessLogID]             BIGINT        NULL,
    CONSTRAINT [PK_FORWARDER_STATUS_RUN] PRIMARY KEY CLUSTERED ([FORWARDER_STATUS_RUN_ID] ASC)
);

