﻿CREATE TABLE [MANH_ARC].[PUTWY_ZONE_PRTY] (
    [PUTWY_ZONE_PRTY_ID]   INT           NOT NULL,
    [WHSE]                 NVARCHAR (3)  NOT NULL,
    [PUTWY_TYPE]           NVARCHAR (3)  NOT NULL,
    [PRTY]                 INT           NOT NULL,
    [PUTWY_ZONE]           NVARCHAR (3)  NULL,
    [PUTWY_METHOD]         NVARCHAR (1)  NOT NULL,
    [LOCN]                 NVARCHAR (24) NULL,
    [DISABLED]             INT           NOT NULL,
    [OUT_OF_ZONE_INDIC]    NVARCHAR (1)  NULL,
    [CREATE_DATE_TIME]     DATETIME2 (7) NULL,
    [MOD_DATE_TIME]        DATETIME2 (7) NULL,
    [USER_ID]              NVARCHAR (15) NULL,
    [WM_VERSION_ID]        INT           NOT NULL,
    [PUTWY_METHOD_PRTY_ID] INT           NULL,
    [CREATED_DTTM]         DATETIME2 (7) NOT NULL,
    [LAST_UPDATED_DTTM]    DATETIME2 (7) NULL,
    [Eff_Date]             DATE          NOT NULL,
    [End_Date]             DATE          NULL,
    [ActInd]               CHAR (1)      NULL,
    [IsDeleted]            CHAR (1)      NULL,
    [BatchID]              BIGINT        NULL,
    [ProcessLogID]         BIGINT        NULL,
    CONSTRAINT [PK_MANH_PUTWY_ZONE_PRTY] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [PUTWY_ZONE_PRTY_ID] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];



