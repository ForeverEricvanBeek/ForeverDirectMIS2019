﻿CREATE TABLE [MANH].[EQUIPMENT_TYPE] (
    [EQUIPMENT_TYPE]    BIGINT        NOT NULL,
    [DESCRIPTION]       NVARCHAR (50) NOT NULL,
    [IS_LABOR]          INT           NOT NULL,
    [CREATED_DTTM]      DATETIME2 (7) NOT NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7) NOT NULL,
    [BatchID]           BIGINT        NULL,
    [ProcessLogID]      BIGINT        NULL,
    CONSTRAINT [PK_MANH_EQUIPMENT_TYPE] PRIMARY KEY CLUSTERED ([EQUIPMENT_TYPE] ASC)
);

