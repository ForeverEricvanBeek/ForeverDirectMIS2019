﻿CREATE TABLE [MANH].[LOCN_HDR] (
    [LOCN_ID]                  NVARCHAR (10)   NOT NULL,
    [WHSE]                     NVARCHAR (3)    NOT NULL,
    [LOCN_CLASS]               NVARCHAR (1)    NOT NULL,
    [LOCN_BRCD]                NVARCHAR (15)   NOT NULL,
    [AREA]                     NVARCHAR (4)    NULL,
    [ZONE]                     NVARCHAR (4)    NULL,
    [AISLE]                    NVARCHAR (4)    NULL,
    [BAY]                      NVARCHAR (4)    NULL,
    [LVL]                      NVARCHAR (4)    NULL,
    [POSN]                     NVARCHAR (4)    NULL,
    [DSP_LOCN]                 NVARCHAR (15)   NULL,
    [LOCN_PICK_SEQ]            NVARCHAR (24)   NULL,
    [SKU_DEDCTN_TYPE]          NVARCHAR (1)    NULL,
    [SLOT_TYPE]                NVARCHAR (3)    NULL,
    [PUTWY_ZONE]               NVARCHAR (3)    NULL,
    [PULL_ZONE]                NVARCHAR (3)    NULL,
    [PICK_DETRM_ZONE]          NVARCHAR (3)    NULL,
    [LEN]                      NUMERIC (16, 4) NOT NULL,
    [WIDTH]                    NUMERIC (16, 4) NOT NULL,
    [HT]                       NUMERIC (16, 4) NOT NULL,
    [X_COORD]                  NUMERIC (13, 5) NOT NULL,
    [Y_COORD]                  NUMERIC (13, 5) NOT NULL,
    [Z_COORD]                  NUMERIC (13, 5) NOT NULL,
    [WORK_GRP]                 NVARCHAR (4)    NULL,
    [WORK_AREA]                NVARCHAR (4)    NULL,
    [LAST_FROZN_DATE_TIME]     DATETIME2 (7)   NULL,
    [LAST_CNT_DATE_TIME]       DATETIME2 (7)   NULL,
    [CYCLE_CNT_PENDING]        NVARCHAR (1)    NULL,
    [PRT_LABEL_FLAG]           NVARCHAR (1)    NULL,
    [TRAVEL_AISLE]             NVARCHAR (4)    NULL,
    [TRAVEL_ZONE]              NVARCHAR (4)    NULL,
    [STORAGE_UOM]              NVARCHAR (1)    NULL,
    [PICK_UOM]                 NVARCHAR (1)    NULL,
    [CREATE_DATE_TIME]         DATETIME2 (7)   NULL,
    [MOD_DATE_TIME]            DATETIME2 (7)   NULL,
    [USER_ID]                  NVARCHAR (15)   NULL,
    [SLOT_UNUSABLE]            NVARCHAR (2)    NULL,
    [CHECK_DIGIT]              NVARCHAR (5)    NOT NULL,
    [VOCO_INTRNL_REVERSE_BRCD] NVARCHAR (15)   NULL,
    [LOCN_HDR_ID]              INT             NOT NULL,
    [WM_VERSION_ID]            INT             NOT NULL,
    [BatchID]                  BIGINT          NULL,
    [ProcessLogID]             BIGINT          NULL,
    CONSTRAINT [PK_MANH_LOCN_HDR] PRIMARY KEY CLUSTERED ([LOCN_HDR_ID] ASC)
);
