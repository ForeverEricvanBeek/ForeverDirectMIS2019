﻿CREATE TABLE [MANH].[LOCN_WIZ_DTL] (
    [LOCN_PARM_ID]       INT           NOT NULL,
    [LOCN_SEQ_NBR]       INT           NOT NULL,
    [LOCN_PROP_TYPE]     NVARCHAR (10) NOT NULL,
    [LOCN_PRO_ATTR_TYPE] NVARCHAR (10) NULL,
    [VALUE]              NVARCHAR (20) NULL,
    [CREATE_DATE_TIME]   DATETIME2 (7) NULL,
    [MOD_DATE_TIME]      DATETIME2 (7) NULL,
    [USER_ID]            NVARCHAR (15) NULL,
    [WM_VERSION_ID]      INT           NOT NULL,
    [LOCN_WIZ_DTL_ID]    INT           NOT NULL,
    [LOCN_WIZ_HDR_ID]    INT           NOT NULL,
    [BatchID]            BIGINT        NULL,
    [ProcessLogID]       BIGINT        NULL,
    CONSTRAINT [PK_MANH_LOCN_WIZ_DTL] PRIMARY KEY CLUSTERED ([LOCN_WIZ_DTL_ID] ASC)
);

