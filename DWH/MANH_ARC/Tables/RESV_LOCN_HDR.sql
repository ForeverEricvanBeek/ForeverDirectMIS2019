﻿CREATE TABLE [MANH_ARC].[RESV_LOCN_HDR] (
    [LOCN_ID]           NVARCHAR (10)   NOT NULL,
    [LOCN_SIZE_TYPE]    NVARCHAR (3)    NULL,
    [LOCN_PUTAWAY_LOCK] NVARCHAR (2)    NULL,
    [INVN_LOCK_CODE]    NVARCHAR (2)    NULL,
    [CURR_WT]           DECIMAL (13, 4) NOT NULL,
    [DIRCT_WT]          DECIMAL (13, 4) NOT NULL,
    [MAX_WT]            DECIMAL (13, 4) NOT NULL,
    [CURR_VOL]          DECIMAL (13, 4) NOT NULL,
    [DIRCT_VOL]         DECIMAL (13, 4) NOT NULL,
    [MAX_VOL]           DECIMAL (13, 4) NOT NULL,
    [CURR_UOM_QTY]      DECIMAL (9, 2)  NOT NULL,
    [DIRCT_UOM_QTY]     DECIMAL (9, 2)  NOT NULL,
    [MAX_UOM_QTY]       DECIMAL (15, 5) NOT NULL,
    [CREATE_DATE_TIME]  DATETIME2 (7)   NULL,
    [MOD_DATE_TIME]     DATETIME2 (7)   NULL,
    [USER_ID]           NVARCHAR (15)   NULL,
    [DEDCTN_BATCH_NBR]  NVARCHAR (15)   NULL,
    [DEDCTN_PACK_QTY]   DECIMAL (9, 2)  NOT NULL,
    [PACK_ZONE]         NVARCHAR (4)    NULL,
    [SORT_LOCN_FLAG]    INT             NOT NULL,
    [INBD_STAGING_FLAG] NVARCHAR (1)    NULL,
    [RESV_LOCN_HDR_ID]  INT             NOT NULL,
    [WM_VERSION_ID]     INT             NOT NULL,
    [DEDCTN_ITEM_ID]    INT             NULL,
    [LOCN_HDR_ID]       INT             NULL,
    [Eff_Date]          DATE            NOT NULL,
    [End_Date]          DATE            NULL,
    [ActInd]            CHAR (1)        NULL,
    [IsDeleted]         CHAR (1)        NULL,
    [BatchID]           BIGINT          NULL,
    [ProcessLogID]      BIGINT          NULL,
    CONSTRAINT [PK_MANH_RESV_LOCN_HDR] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [RESV_LOCN_HDR_ID] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];





