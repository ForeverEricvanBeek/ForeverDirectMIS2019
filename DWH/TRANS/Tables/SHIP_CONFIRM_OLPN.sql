﻿CREATE TABLE [TRANS].[SHIP_CONFIRM_OLPN] (
    [SHIP_CONFIRM_ID]          BIGINT       NOT NULL,
    [XML_FILE_SHIP_CONFIRM_ID] INT          NULL,
    [SHIPPER_SHIPMENT_REF]     VARCHAR (24) NULL,
    [DONE]                     BIT          NULL,
    [BatchID]                  BIGINT       NULL,
    [ProcessLogID]             BIGINT       NULL,
    CONSTRAINT [PK_SHIP_CONFIRM_OLPN] PRIMARY KEY CLUSTERED ([SHIP_CONFIRM_ID] ASC)
);

