﻿CREATE TABLE [TRANS].[FORWARDER_STATUS] (
    [FORWARDER_STATUS_ID]         BIGINT        NOT NULL,
    [HUB_FORWARDER_ID]            INT           NULL,
    [SHIPPER_SHIPMENT_REF]        VARCHAR (24)  NULL,
    [FORWARDER_SHIPMENT_REF]      VARCHAR (30)  NULL,
    [STATUS]                      VARCHAR (20)  NULL,
    [CREATED]                     DATETIME2 (7) NULL,
    [STATUS_DATE]                 DATETIME      NULL,
    [FORWARDER_STATUS_FILE_ID]    INT           NULL,
    [INTERFACE_ID]                BIGINT        NULL,
    [FORWARDER_STATUS_CODE]       VARCHAR (20)  NULL,
    [FORWARDER_CODE]              VARCHAR (15)  NULL,
    [STATUS_CATEGORY]             VARCHAR (20)  NULL,
    [DESCRIPTION]                 VARCHAR (50)  NULL,
    [FORWARDER_REFERENCE]         VARCHAR (30)  NULL,
    [FORWARDER_SHIPMENT_LINE_REF] VARCHAR (30)  NULL,
    [IS_SCANEVENT]                BIT           NULL,
    [BatchID]                     BIGINT        NULL,
    [ProcessLogID]                BIGINT        NULL,
    CONSTRAINT [PK_FORWARDER_STATUS] PRIMARY KEY CLUSTERED ([FORWARDER_STATUS_ID] ASC)
);

