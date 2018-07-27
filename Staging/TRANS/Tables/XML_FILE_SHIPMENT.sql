﻿CREATE TABLE [TRANS].[XML_FILE_SHIPMENT] (
    [XML_FILE_SHIPMENT_ID] INT            NOT NULL,
    [CREATED_TS]           DATETIME2 (7)  NULL,
    [XML_NAME]             NVARCHAR (100) NULL,
    [PRINTER_KEY]          VARCHAR (20)   NULL,
    [SHIPPER_SHIPMENT_REF] NVARCHAR (100) NULL,
    [PRINTER_LOOKUP_VALUE] NVARCHAR (100) NULL,
    [STATUS]               VARCHAR (5)    NULL,
    [BatchID]              BIGINT         NULL,
    [ProcessLogID]         BIGINT         NULL,
    CONSTRAINT [PK_XML_SHIPMENT] PRIMARY KEY CLUSTERED ([XML_FILE_SHIPMENT_ID] ASC)
);
