﻿CREATE TABLE [IFS].[SHIPMENT] (
    [SHIPMENT_ID]  INT             NOT NULL,
    [OBJVERSION]   NVARCHAR (2000) NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    [Issue]        TINYINT         NULL,
    CONSTRAINT [PK_SHIPMENT] PRIMARY KEY CLUSTERED ([SHIPMENT_ID] ASC)
);

