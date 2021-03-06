﻿CREATE TABLE [MANH].[LPN_LOCK] (
    [LPN_LOCK_ID]              BIGINT        NOT NULL,
    [LPN_ID]                   BIGINT        NOT NULL,
    [INVENTORY_LOCK_CODE]      NVARCHAR (2)  NULL,
    [REASON_CODE]              NVARCHAR (2)  NULL,
    [LOCK_COUNT]               SMALLINT      NULL,
    [TC_LPN_ID]                NVARCHAR (50) NULL,
    [CREATED_SOURCE_TYPE]      SMALLINT      NOT NULL,
    [CREATED_SOURCE]           NVARCHAR (25) NULL,
    [CREATED_DTTM]             DATETIME2 (7) NOT NULL,
    [LAST_UPDATED_SOURCE_TYPE] SMALLINT      NOT NULL,
    [LAST_UPDATED_SOURCE]      NVARCHAR (25) NULL,
    [LAST_UPDATED_DTTM]        DATETIME2 (7) NOT NULL,
    [BatchID]                  BIGINT        NULL,
    [ProcessLogID]             BIGINT        NULL,
    CONSTRAINT [PK_MANH_LPN_LOCK] PRIMARY KEY CLUSTERED ([LPN_LOCK_ID] ASC)
);

