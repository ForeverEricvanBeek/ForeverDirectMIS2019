﻿CREATE TABLE [MANH_ARC].[LOCN_WIZ_HDR] (
    [LOCN_PARM_ID]     INT           NOT NULL,
    [LOCN_SEQ_NBR]     INT           NOT NULL,
    [WHSE]             NVARCHAR (3)  NOT NULL,
    [LOCN_CLASS]       NVARCHAR (1)  NOT NULL,
    [FROM_AREA]        NVARCHAR (4)  NULL,
    [TO_AREA]          NVARCHAR (4)  NULL,
    [AREA_INCR]        INT           NOT NULL,
    [FROM_ZONE]        NVARCHAR (4)  NULL,
    [TO_ZONE]          NVARCHAR (4)  NULL,
    [ZONE_INCR]        INT           NOT NULL,
    [FROM_AISLE]       NVARCHAR (4)  NULL,
    [TO_AISLE]         NVARCHAR (4)  NULL,
    [AISLE_INCR]       INT           NOT NULL,
    [FROM_BAY]         NVARCHAR (4)  NULL,
    [TO_BAY]           NVARCHAR (4)  NULL,
    [BAY_INCR]         INT           NOT NULL,
    [FROM_LVL]         NVARCHAR (4)  NULL,
    [TO_LVL]           NVARCHAR (4)  NULL,
    [LVL_INCR]         INT           NOT NULL,
    [FROM_POSN]        NVARCHAR (4)  NULL,
    [TO_POSN]          NVARCHAR (4)  NULL,
    [POSN_INCR]        INT           NOT NULL,
    [STAT_CODE]        INT           NOT NULL,
    [ERROR_SEQ_NBR]    INT           NOT NULL,
    [PROC_STAT_CODE]   INT           NOT NULL,
    [CREATE_DATE_TIME] DATETIME2 (7) NULL,
    [MOD_DATE_TIME]    DATETIME2 (7) NULL,
    [USER_ID]          NVARCHAR (15) NULL,
    [WM_VERSION_ID]    INT           NOT NULL,
    [LOCN_WIZ_HDR_ID]  INT           NOT NULL,
    [BatchID]          BIGINT        NULL,
    [ProcessLogID]     BIGINT        NULL,
    CONSTRAINT [PK_LOCN_WIZ_HDR] PRIMARY KEY CLUSTERED ([LOCN_WIZ_HDR_ID] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];





