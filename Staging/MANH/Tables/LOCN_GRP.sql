﻿CREATE TABLE [MANH].[LOCN_GRP] (
    [GRP_TYPE]          SMALLINT      NOT NULL,
    [LOCN_ID]           NVARCHAR (10) NOT NULL,
    [GRP_ATTR]          NVARCHAR (24) NULL,
    [CREATE_DATE_TIME]  DATETIME2 (7) NULL,
    [MOD_DATE_TIME]     DATETIME2 (7) NULL,
    [USER_ID]           NVARCHAR (15) NULL,
    [LOCN_GRP_ID]       INT           NOT NULL,
    [LOCN_HDR_ID]       INT           NULL,
    [WM_VERSION_ID]     INT           NOT NULL,
    [BatchID]           BIGINT        NULL,
    [ProcessLogID]      BIGINT        NULL,
    [CREATED_DTTM]      DATETIME2 (7) NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7) NULL,
    CONSTRAINT [PK_MANH_LOCN_GRP] PRIMARY KEY CLUSTERED ([LOCN_GRP_ID] ASC)
);



