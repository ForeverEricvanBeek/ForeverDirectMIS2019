﻿CREATE TABLE [MANH].[LPN_MOVEMENT] (
    [LPN_MOVEMENT_ID]   INT           NOT NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7) NOT NULL,
    [BatchID]           BIGINT        NULL,
    [ProcessLogID]      BIGINT        NULL,
    [Issue]             TINYINT       NULL,
    CONSTRAINT [PK_MANH_LPN_MOVEMENT] PRIMARY KEY CLUSTERED ([LPN_MOVEMENT_ID] ASC)
);
