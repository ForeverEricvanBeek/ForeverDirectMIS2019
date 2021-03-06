﻿CREATE TABLE [MANH].[PKT_CONSOL_LOCN] (
    [REC_TYPE]                NVARCHAR (1)    NOT NULL,
    [LOCN_ID]                 NVARCHAR (10)   NOT NULL,
    [WAVE_NBR]                NVARCHAR (12)   NOT NULL,
    [PRTY_SEQ_NBR]            INT             NOT NULL,
    [LOCN_STAT_CODE]          INT             NOT NULL,
    [MAX_NBR_OF_PKTS]         BIGINT          NOT NULL,
    [CURR_NBR_OF_PKTS]        INT             NOT NULL,
    [MAX_NBR_OF_SWC]          INT             NOT NULL,
    [CURR_NBR_OF_SWC]         INT             NOT NULL,
    [CURR_WT]                 NUMERIC (13, 4) NOT NULL,
    [MAX_WT]                  NUMERIC (13, 4) NOT NULL,
    [CURR_VOL]                NUMERIC (13, 4) NOT NULL,
    [MAX_VOL]                 NUMERIC (13, 4) NOT NULL,
    [CAPCTY_UOM]              NVARCHAR (1)    NULL,
    [MAX_UOM_QTY]             NUMERIC (15, 5) NOT NULL,
    [CURR_UOM_QTY]            NUMERIC (9, 2)  NOT NULL,
    [DIRCT_WT]                NUMERIC (13, 4) NOT NULL,
    [DIRCT_VOL]               NUMERIC (13, 4) NOT NULL,
    [DIRCT_UOM_QTY]           NUMERIC (9, 2)  NOT NULL,
    [DIRCT_NBR_OF_SWC]        NUMERIC (6)     NOT NULL,
    [DIRCT_PKTS]              NUMERIC (6)     NOT NULL,
    [LOCK_PKT_CONSOL_COLM_1]  NVARCHAR (1)    NULL,
    [LOCK_PKT_CONSOL_COLM_2]  NVARCHAR (1)    NULL,
    [LOCK_PKT_CONSOL_COLM_3]  NVARCHAR (1)    NULL,
    [LOCK_PKT_CONSOL_COLM_4]  NVARCHAR (1)    NULL,
    [LOCK_PKT_CONSOL_COLM_5]  NVARCHAR (1)    NULL,
    [LOCK_PKT_CONSOL_COLM_6]  NVARCHAR (1)    NULL,
    [LOCK_PKT_CONSOL_COLM_7]  NVARCHAR (1)    NULL,
    [LOCK_PKT_CONSOL_COLM_8]  NVARCHAR (1)    NULL,
    [LOCK_PKT_CONSOL_COLM_9]  NVARCHAR (1)    NULL,
    [LOCK_PKT_CONSOL_COLM_10] NVARCHAR (1)    NULL,
    [PKT_CONSOL_VALUE_1]      NVARCHAR (20)   NULL,
    [PKT_CONSOL_VALUE_2]      NVARCHAR (20)   NULL,
    [PKT_CONSOL_VALUE_3]      NVARCHAR (20)   NULL,
    [PKT_CONSOL_VALUE_4]      NVARCHAR (20)   NULL,
    [PKT_CONSOL_VALUE_5]      NVARCHAR (20)   NULL,
    [PKT_CONSOL_VALUE_6]      NVARCHAR (20)   NULL,
    [PKT_CONSOL_VALUE_7]      NVARCHAR (20)   NULL,
    [PKT_CONSOL_VALUE_8]      NVARCHAR (20)   NULL,
    [PKT_CONSOL_VALUE_9]      NVARCHAR (20)   NULL,
    [PKT_CONSOL_VALUE_10]     NVARCHAR (20)   NULL,
    [DOCK_DOOR_BRCD]          NVARCHAR (10)   NULL,
    [PKT_CONSOL_ATTR]         NVARCHAR (3)    NULL,
    [CREATE_DATE_TIME]        DATETIME2 (7)   NULL,
    [MOD_DATE_TIME]           DATETIME2 (7)   NULL,
    [USER_ID]                 NVARCHAR (15)   NULL,
    [PKT_CONSOL_LOCN_ID]      BIGINT          NOT NULL,
    [LOCN_HDR_ID]             BIGINT          NULL,
    [WM_VERSION_ID]           INT             NOT NULL,
    [Eff_Date]                DATE            NOT NULL,
    [End_Date]                DATE            NULL,
    [ActInd]                  CHAR (1)        NULL,
    [IsDeleted]               CHAR (1)        NULL,
    [BatchID]                 BIGINT          NULL,
    [ProcessLogID]            BIGINT          NULL,
    [CREATED_DTTM]            DATETIME2 (7)   NULL,
    [LAST_UPDATED_DTTM]       DATETIME2 (7)   NULL,
    [PKT_CONSOL_FLAG]         NVARCHAR (1)    NULL,
    CONSTRAINT [PK_MANH_PKT_CONSOL_LOCN] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [PKT_CONSOL_LOCN_ID] ASC) WITH (FILLFACTOR = 90) ON [DWH_MANH]
) ON [DWH_MANH];



