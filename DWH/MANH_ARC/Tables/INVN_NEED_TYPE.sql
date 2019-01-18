CREATE TABLE [MANH_ARC].[INVN_NEED_TYPE] (
    [WHSE]                       NVARCHAR (3)  NOT NULL,
    [INVN_NEED_TYPE]             SMALLINT      NOT NULL,
    [CASE_PULLD_STAT_CODE]       SMALLINT      NOT NULL,
    [ALLOC_CORR_UPD]             SMALLINT      NOT NULL,
    [TASK_CMPL_CORR_UPD]         SMALLINT      NOT NULL,
    [TRANS_INVN_TYPE]            SMALLINT      NOT NULL,
    [PIX_RSN_CODE]               NVARCHAR (2)  NULL,
    [TASK_CMPL_REF_CODE]         NVARCHAR (3)  NULL,
    [ALLOW_SKU_SUB_ON_PULL]      NVARCHAR (1)  NULL,
    [ALLOW_SKU_ATTR_SUB_ON_PULL] NVARCHAR (1)  NULL,
    [ALLOW_QTY_CHG_ON_PULL]      NVARCHAR (1)  NULL,
    [DSTN_LOCN_ID]               NVARCHAR (10) NULL,
    [CHK_LOCKS_ON_ALLOCN]        NVARCHAR (1)  NULL,
    [CREATE_DATE_TIME]           DATETIME2 (7) NULL,
    [MOD_DATE_TIME]              DATETIME2 (7) NULL,
    [USER_ID]                    NVARCHAR (15) NULL,
    [ALLOW_PACK_QTY_SUB_ON_PULL] NVARCHAR (1)  NULL,
    [CPCTY_TYPE]                 NVARCHAR (3)  NULL,
    [CD_MASTER_ID]               INT           NOT NULL,
    [WM_VERSION_ID]              INT           NOT NULL,
    [INT_MASTER_ID]              INT           NULL,
    [INVN_NEED_TYPE_ID]          INT           NOT NULL,
    [Eff_Date]                   DATE          NOT NULL,
    [End_Date]                   DATE          NULL,
    [ActInd]                     CHAR (1)      NULL,
    [IsDeleted]                  CHAR (1)      NULL,
    [BatchID]                    BIGINT        NULL,
    [ProcessLogID]               BIGINT        NULL,
    CONSTRAINT [PK_MANH_INVN_NEED_TYPE] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [INVN_NEED_TYPE_ID] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];



