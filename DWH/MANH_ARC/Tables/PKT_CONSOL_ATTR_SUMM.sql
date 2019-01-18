﻿CREATE TABLE [MANH_ARC].[PKT_CONSOL_ATTR_SUMM] (
    [PKT_CONSOL_ATTR_SUMM_ID] INT             NOT NULL,
    [PKT_CTRL_NBR]            NVARCHAR (10)   NOT NULL,
    [LOCN_ID]                 NVARCHAR (10)   NOT NULL,
    [PKT_CONSOL_ATTR]         NVARCHAR (3)    NULL,
    [DIRCT_WT]                DECIMAL (13, 4) NOT NULL,
    [DIRCT_VOL]               DECIMAL (13, 4) NOT NULL,
    [DIRCT_UOM_QTY]           DECIMAL (13, 5) NOT NULL,
    [CURR_WT]                 DECIMAL (13, 4) NOT NULL,
    [CURR_VOL]                DECIMAL (13, 4) NOT NULL,
    [CURR_UOM_QTY]            DECIMAL (13, 5) NOT NULL,
    [RESV_WT]                 DECIMAL (13, 4) NOT NULL,
    [RESV_VOL]                DECIMAL (13, 4) NOT NULL,
    [RESV_UOM_QTY]            DECIMAL (13, 5) NOT NULL,
    [CREATE_DATE_TIME]        DATETIME2 (7)   NULL,
    [MOD_DATE_TIME]           DATETIME2 (7)   NULL,
    [USER_ID]                 NVARCHAR (15)   NULL,
    [WM_VERSION_ID]           INT             NOT NULL,
    [ORDER_ID]                INT             NOT NULL,
    [SHIP_WAVE_NBR]           NVARCHAR (48)   NULL,
    [CREATED_DTTM]            DATETIME2 (7)   NOT NULL,
    [LAST_UPDATED_DTTM]       DATETIME2 (7)   NULL,
    [Eff_Date]                DATE            NOT NULL,
    [End_Date]                DATE            NULL,
    [ActInd]                  CHAR (1)        NULL,
    [IsDeleted]               CHAR (1)        NULL,
    [BatchID]                 BIGINT          NULL,
    [ProcessLogID]            BIGINT          NULL,
    CONSTRAINT [PK_MANH_PKT_CONSOL_ATTR_SUMM] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [PKT_CONSOL_ATTR_SUMM_ID] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];



