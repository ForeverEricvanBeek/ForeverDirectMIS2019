﻿CREATE TABLE [MANH].[SHIPMENT_STATUS] (
    [SHIPMENT_STATUS] SMALLINT      NOT NULL,
    [DESCRIPTION]     NVARCHAR (20) NOT NULL,
    [SHORT_DESC]      NVARCHAR (8)  NULL,
    [BatchID]         BIGINT        NULL,
    [ProcessLogID]    BIGINT        NULL,
    CONSTRAINT [PK_MANH_SHIPMENT_STATUS] PRIMARY KEY CLUSTERED ([SHIPMENT_STATUS] ASC)
);

