﻿CREATE TABLE [MANH].[SHIPMENT_EVENT] (
    [SHIPMENT_EVENT_ID]   INT            NOT NULL,
    [SHIPMENT_ID]         INT            NOT NULL,
    [FIELD_NAME]          NVARCHAR (100) NULL,
    [OLD_VALUE]           NVARCHAR (500) NULL,
    [NEW_VALUE]           NVARCHAR (500) NULL,
    [CREATED_SOURCE_TYPE] INT            NOT NULL,
    [CREATED_SOURCE]      NVARCHAR (25)  NULL,
    [CREATED_DTTM]        DATETIME2 (7)  NULL,
    [STOP_SEQ]            INT            NULL,
    [BatchID]             BIGINT         NULL,
    [ProcessLogID]        BIGINT         NULL,
    CONSTRAINT [PK_SHIPMENT_EVENT] PRIMARY KEY CLUSTERED ([SHIPMENT_EVENT_ID] ASC, [SHIPMENT_ID] ASC)
);

