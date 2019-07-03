﻿CREATE TABLE [MANH_ARC].[PICK_LOCN_HDR] (
    [LOCN_ID]                   NVARCHAR (40)   NOT NULL,
    [REPL_LOCN_BRCD]            NVARCHAR (60)   NULL,
    [PUTWY_TYPE]                NVARCHAR (12)   NULL,
    [MAX_NBR_OF_SKU]            NUMERIC (4)     NOT NULL,
    [REPL_FLAG]                 NVARCHAR (4)    NULL,
    [PICK_LOCN_ASSIGN_ZONE]     NVARCHAR (12)   NULL,
    [CREATE_DATE_TIME]          DATETIME2 (0)   NULL,
    [MOD_DATE_TIME]             DATETIME2 (0)   NULL,
    [USER_ID]                   NVARCHAR (60)   NULL,
    [REPL_CHECK_DIGIT]          NVARCHAR (20)   NOT NULL,
    [MAX_VOL]                   NUMERIC (13, 4) NOT NULL,
    [MAX_WT]                    NUMERIC (13, 4) NOT NULL,
    [REPL_X_COORD]              NUMERIC (13, 5) NOT NULL,
    [REPL_Y_COORD]              NUMERIC (13, 5) NOT NULL,
    [REPL_Z_COORD]              NUMERIC (13, 5) NOT NULL,
    [REPL_TRAVEL_AISLE]         NVARCHAR (16)   NULL,
    [REPL_TRAVEL_ZONE]          NVARCHAR (16)   NULL,
    [XCESS_WAVE_NEED_PROC_TYPE] NUMERIC (4)     NOT NULL,
    [PICK_LOCN_ASSIGN_TYPE]     NVARCHAR (12)   NULL,
    [SUPPR_PR40_REPL]           NUMERIC (4)     NOT NULL,
    [COMB_4050_REPL]            NUMERIC (4)     NOT NULL,
    [PICK_TO_LIGHT_FLAG]        NVARCHAR (4)    NULL,
    [PICK_TO_LIGHT_REPL_FLAG]   NVARCHAR (4)    NULL,
    [PICK_LOCN_HDR_ID]          NUMERIC (8)     NOT NULL,
    [WM_VERSION_ID]             NUMERIC (9)     NOT NULL,
    [LOCN_HDR_ID]               NUMERIC (8)     NULL,
    [Eff_Date]                  DATE            NOT NULL,
    [End_Date]                  DATE            NULL,
    [ActInd]                    CHAR (1)        NULL,
    [IsDeleted]                 CHAR (1)        NULL,
    [BatchID]                   BIGINT          NULL,
    [ProcessLogID]              BIGINT          NULL,
    [CREATED_DTTM]              DATETIME2 (7)   NULL,
    [INVN_LOCK_CODE]            NVARCHAR (2)    NULL,
    [LAST_UPDATED_DTTM]         DATETIME2 (7)   NULL,
    [LOCN_PUTAWAY_LOCK]         NVARCHAR (2)    NULL,
    CONSTRAINT [PK_MANH_PICK_LOCN_HDR] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [PICK_LOCN_HDR_ID] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];







