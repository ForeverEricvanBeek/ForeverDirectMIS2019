CREATE TABLE [MANH_ARC].[BATCH_MASTER] (
    [BATCH_NBR]              NVARCHAR (15)  NOT NULL,
    [STAT_CODE]              SMALLINT       NOT NULL,
    [RCVD_DATE]              DATETIME2 (7)  NULL,
    [XPIRE_DATE]             DATETIME2 (7)  NULL,
    [XPIRE_FLAG]             NVARCHAR (1)   NULL,
    [MFG_RECALL_DATE]        DATETIME2 (7)  NULL,
    [MFG_RECALL_FLAG]        NVARCHAR (1)   NULL,
    [CASE_LOCK_CODE_HELD]    NVARCHAR (2)   NULL,
    [PICK_LOCK_CODE_HELD]    NVARCHAR (2)   NULL,
    [CASE_LOCK_CODE_EXP_REC] NVARCHAR (2)   NULL,
    [PICK_LOCK_CODE_EXP_REC] NVARCHAR (2)   NULL,
    [AUTH_NBR]               NVARCHAR (10)  NULL,
    [VENDOR_BATCH_NBR]       NVARCHAR (15)  NULL,
    [SPL_INSTR_CODE_1]       NVARCHAR (10)  NULL,
    [SPL_INSTR_CODE_2]       NVARCHAR (10)  NULL,
    [MISC_INSTR_CODE_1]      NVARCHAR (20)  NULL,
    [MISC_INSTR_CODE_2]      NVARCHAR (20)  NULL,
    [NUMERIC_1]              NUMERIC (9, 2) NOT NULL,
    [NUMERIC_2]              NUMERIC (9, 2) NOT NULL,
    [CREATE_DATE_TIME]       DATETIME2 (7)  NULL,
    [MOD_DATE_TIME]          DATETIME2 (7)  NULL,
    [USER_ID]                NVARCHAR (15)  NULL,
    [VENDOR_MASTER_ID]       INT            NULL,
    [WM_VERSION_ID]          INT            NOT NULL,
    [ITEM_ID]                BIGINT         NOT NULL,
    [BATCH_MASTER_ID]        INT            NOT NULL,
    [ITEM_MASTER_ID]         INT            NULL,
    [HAS_IMPORT_ERROR]       SMALLINT       NOT NULL,
    [HAS_SOFT_CHECK_ERROR]   SMALLINT       NOT NULL,
    [Eff_Date]               DATE           NOT NULL,
    [End_Date]               DATE           NULL,
    [ActInd]                 CHAR (1)       NULL,
    [IsDeleted]              CHAR (1)       NULL,
    [BatchID]                BIGINT         NULL,
    [ProcessLogID]           BIGINT         NULL,
    CONSTRAINT [PK_MANH_BATCH_MASTER] PRIMARY KEY CLUSTERED ([BATCH_MASTER_ID] ASC, [Eff_Date] ASC) WITH (FILLFACTOR = 90) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];





