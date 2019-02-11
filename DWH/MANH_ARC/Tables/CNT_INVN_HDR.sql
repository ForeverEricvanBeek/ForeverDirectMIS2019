﻿CREATE TABLE [MANH_ARC].[CNT_INVN_HDR] (
    [WHSE]                NVARCHAR (3)    NOT NULL,
    [PROD_TYPE]           NVARCHAR (1)    NOT NULL,
    [CASE_NBR]            NVARCHAR (20)   NULL,
    [LOCN_ID]             NVARCHAR (10)   NULL,
    [PLT_ID]              NVARCHAR (20)   NULL,
    [TRANS_INVN_TYPE]     SMALLINT        NOT NULL,
    [NBR_OF_CNT]          SMALLINT        NOT NULL,
    [CREATE_DATE_TIME]    DATETIME2 (7)   NULL,
    [MOD_DATE_TIME]       DATETIME2 (7)   NULL,
    [USER_ID]             NVARCHAR (15)   NULL,
    [STAT_CODE]           SMALLINT        NOT NULL,
    [CNT_INVN_HDR_ID]     INT             NOT NULL,
    [WM_VERSION_ID]       INT             NOT NULL,
    [CASE_HDR_ID]         INT             NULL,
    [MANUFACTURED_DTTM]   DATETIME2 (7)   NULL,
    [EXPIRATION_DATE]     DATETIME2 (7)   NULL,
    [SHIP_BY_DATE]        DATETIME2 (7)   NULL,
    [LPN_FACILITY_STATUS] SMALLINT        NULL,
    [PHYS_INVN_HDR_ID]    INT             NULL,
    [WEIGHT]              NUMERIC (13, 4) NULL,
    [LPN_ID]              INT             NULL,
    [PARENT_LPN_ID]       INT             NULL,
    [CONS_CASE_PRTY]      NVARCHAR (12)   NULL,
    [CONS_PRTY_DATE]      DATETIME2 (7)   NULL,
    [CONS_SEQ]            NVARCHAR (12)   NULL,
    [Eff_Date]            DATE            NOT NULL,
    [End_Date]            DATE            NULL,
    [ActInd]              CHAR (1)        NULL,
    [IsDeleted]           CHAR (1)        NULL,
    [BatchID]             BIGINT          NULL,
    [ProcessLogID]        BIGINT          NULL,
    CONSTRAINT [PK_MANH_CNT_INVN_HDR] PRIMARY KEY CLUSTERED ([CNT_INVN_HDR_ID] ASC, [Eff_Date] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];





