﻿CREATE TABLE [MANH].[PUTWY_ZONE_ITEM] (
    [PUTWY_ZONE_ITEM_ID]     INT             NOT NULL,
    [WHSE]                   NVARCHAR (3)    NOT NULL,
    [PUTWY_ZONE]             NVARCHAR (3)    NOT NULL,
    [PUTWY_ZONE_CAPCTY_TYPE] NVARCHAR (2)    NOT NULL,
    [PUTWY_TYPE]             NVARCHAR (3)    NULL,
    [GRP_TYPE]               NVARCHAR (2)    NULL,
    [GRP_ATTR]               NVARCHAR (20)   NULL,
    [MAX_UOM_QTY]            DECIMAL (15, 5) NOT NULL,
    [MIN_UOM_QTY]            DECIMAL (15, 5) NOT NULL,
    [CREATE_DATE_TIME]       DATETIME2 (7)   NULL,
    [MOD_DATE_TIME]          DATETIME2 (7)   NULL,
    [USER_ID]                NVARCHAR (15)   NULL,
    [WM_VERSION_ID]          INT             NOT NULL,
    [ITEM_ID]                INT             NULL,
    [CREATED_DTTM]           DATETIME2 (7)   NOT NULL,
    [LAST_UPDATED_DTTM]      DATETIME2 (7)   NULL,
    [BatchID]                BIGINT          NULL,
    [ProcessLogID]           BIGINT          NULL,
    CONSTRAINT [PK_MANH_PUTWY_ZONE_ITEM] PRIMARY KEY CLUSTERED ([PUTWY_ZONE_ITEM_ID] ASC)
);

