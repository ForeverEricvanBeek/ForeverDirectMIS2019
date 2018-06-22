﻿CREATE TABLE [MANH].[CARRIER_TYPE] (
    [CARRIER_TYPE_ID]   BIGINT        NOT NULL,
    [DESCRIPTION]       NVARCHAR (50) NOT NULL,
    [CREATED_DTTM]      DATETIME2 (7) NOT NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7) NOT NULL,
    [BatchID]           BIGINT        NULL,
    [ProcessLogID]      BIGINT        NULL,
    CONSTRAINT [PK_MANH_CARRIER_TYPE] PRIMARY KEY CLUSTERED ([CARRIER_TYPE_ID] ASC)
);

