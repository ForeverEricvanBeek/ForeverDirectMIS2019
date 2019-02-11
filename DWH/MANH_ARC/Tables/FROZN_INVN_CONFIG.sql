﻿CREATE TABLE [MANH_ARC].[FROZN_INVN_CONFIG] (
    [FROZN_INVN_CONFIG_ID] INT           NOT NULL,
    [PHYS_INVN_HDR_ID]     INT           NOT NULL,
    [LOCN_CLASS]           NVARCHAR (4)  NOT NULL,
    [FROM_AREA]            NVARCHAR (16) NULL,
    [TO_AREA]              NVARCHAR (16) NULL,
    [FROM_ZONE]            NVARCHAR (16) NULL,
    [TO_ZONE]              NVARCHAR (16) NULL,
    [FROM_AISLE]           NVARCHAR (16) NULL,
    [TO_AISLE]             NVARCHAR (16) NULL,
    [FROM_BAY]             NVARCHAR (16) NULL,
    [TO_BAY]               NVARCHAR (16) NULL,
    [FROM_LVL]             NVARCHAR (16) NULL,
    [TO_LVL]               NVARCHAR (16) NULL,
    [FROM_POSN]            NVARCHAR (16) NULL,
    [TO_POSN]              NVARCHAR (16) NULL,
    [AREA_FRZ_INCR]        INT           NOT NULL,
    [ZONE_FRZ_INCR]        INT           NOT NULL,
    [AISLE_FRZ_INCR]       INT           NOT NULL,
    [BAY_FRZ_INCR]         INT           NOT NULL,
    [LVL_FRZ_INCR]         INT           NOT NULL,
    [POSN_FRZ_INCR]        INT           NOT NULL,
    [CREATE_DATE_TIME]     DATETIME2 (7) NULL,
    [MOD_DATE_TIME]        DATETIME2 (7) NULL,
    [USER_ID]              NVARCHAR (60) NULL,
    [STAT_CODE]            SMALLINT      NOT NULL,
    [Eff_Date]             DATE          NOT NULL,
    [End_Date]             DATE          NULL,
    [ActInd]               CHAR (1)      NULL,
    [IsDeleted]            CHAR (1)      NULL,
    [BatchID]              BIGINT        NULL,
    [ProcessLogID]         BIGINT        NULL,
    CONSTRAINT [PK_MANH_FROZN_INVN_CONFIG] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [FROZN_INVN_CONFIG_ID] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];





