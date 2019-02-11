CREATE TABLE [MANH_ARC].[FROZN_INVN_HDR] (
    [WHSE]                 NVARCHAR (3)    NOT NULL,
    [PROD_TYPE]            NVARCHAR (1)    NOT NULL,
    [CASE_NBR]             NVARCHAR (20)   NULL,
    [LOCN_ID]              NVARCHAR (10)   NULL,
    [PLT_ID]               NVARCHAR (20)   NULL,
    [TRANS_INVN_TYPE]      SMALLINT        NOT NULL,
    [CASE_STAT_CODE]       SMALLINT        NULL,
    [CREATE_DATE_TIME]     DATETIME2 (7)   NULL,
    [MOD_DATE_TIME]        DATETIME2 (7)   NULL,
    [USER_ID]              NVARCHAR (15)   NULL,
    [STAT_CODE]            SMALLINT        NOT NULL,
    [FROZN_INVN_HDR_ID]    INT             NOT NULL,
    [WM_VERSION_ID]        INT             NOT NULL,
    [LOCN_HDR_ID]          INT             NULL,
    [PHYS_INVN_HDR_ID]     INT             NOT NULL,
    [CONS_CASE_PRTY]       NVARCHAR (12)   NULL,
    [CONS_PRTY_DATE]       DATETIME2 (7)   NULL,
    [CONS_SEQ]             NVARCHAR (12)   NULL,
    [MFG_DATE]             DATETIME2 (7)   NULL,
    [RCVD_DATE]            DATETIME2 (7)   NULL,
    [XPIRE_DATE]           DATETIME2 (7)   NULL,
    [SHIP_BY_DATE]         DATETIME2 (7)   NULL,
    [ACTL_WT]              NUMERIC (13, 4) NOT NULL,
    [MANUFACTURED_DTTM]    DATETIME2 (7)   NULL,
    [EXPIRATION_DATE]      DATETIME2 (7)   NULL,
    [WEIGHT]               NUMERIC (13, 4) NULL,
    [LPN_ID]               INT             NULL,
    [PARENT_LPN_ID]        INT             NULL,
    [LPN_FACILITY_STATUS]  SMALLINT        NULL,
    [FROZN_INVN_CONFIG_ID] INT             NOT NULL,
    [Eff_Date]             DATE            NOT NULL,
    [End_Date]             DATE            NULL,
    [ActInd]               CHAR (1)        NULL,
    [IsDeleted]            CHAR (1)        NULL,
    [BatchID]              BIGINT          NULL,
    [ProcessLogID]         BIGINT          NULL,
    CONSTRAINT [PK_MANH_FROZN_INVN_HDR] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [FROZN_INVN_HDR_ID] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];





