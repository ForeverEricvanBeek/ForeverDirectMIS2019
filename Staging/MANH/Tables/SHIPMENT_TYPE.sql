﻿CREATE TABLE [MANH].[SHIPMENT_TYPE] (
    [SHIPMENT_TYPE] NVARCHAR (3)  NOT NULL,
    [DESCRIPTION]   NVARCHAR (50) NULL,
    [BatchID]       BIGINT        NULL,
    [ProcessLogID]  BIGINT        NULL,
    CONSTRAINT [PK_MANH_SHIPMENT_TYPE] PRIMARY KEY CLUSTERED ([SHIPMENT_TYPE] ASC)
);
