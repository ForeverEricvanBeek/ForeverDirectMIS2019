﻿CREATE TABLE [IFS].[C_TRANSPORT_TYPE] (
    [TRANSPORT_TYPE]      NVARCHAR (30)   NOT NULL,
    [TRANSPORT_TYPE_DESC] NVARCHAR (200)  NULL,
    [TARE_WEIGHT]         DECIMAL (18, 4) NULL,
    [UOM_FOR_TARE_WEIGHT] NVARCHAR (30)   NULL,
    [VOLUME]              DECIMAL (18, 4) NULL,
    [UOM_FOR_VOLUME]      NVARCHAR (30)   NULL,
    [OBJID]               NVARCHAR (4000) NULL,
    [OBJVERSION]          NVARCHAR (2000) NULL,
    [BatchID]             BIGINT          NULL,
    [ProcessLogID]        BIGINT          NULL,
    CONSTRAINT [PK_C_TRANSPORT_TYPE] PRIMARY KEY CLUSTERED ([TRANSPORT_TYPE] ASC)
);

