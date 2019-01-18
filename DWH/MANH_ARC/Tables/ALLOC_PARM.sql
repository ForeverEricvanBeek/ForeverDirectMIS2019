CREATE TABLE [MANH_ARC].[ALLOC_PARM] (
    [ALLOC_PARM_ID]              INT            NOT NULL,
    [WHSE]                       NVARCHAR (3)   NOT NULL,
    [INVN_NEED_TYPE]             SMALLINT       NOT NULL,
    [TASK_PRTY]                  INT            NOT NULL,
    [SEL_MXD_SKU_CASE]           NVARCHAR (1)   NULL,
    [PARTL_CASE_PROC]            NVARCHAR (1)   NULL,
    [PCNT_SML_THAN_STD_CASE_QTY] NUMERIC (5, 2) NOT NULL,
    [PCNT_LRG_THAN_STD_CASE_QTY] NUMERIC (5, 2) NOT NULL,
    [XCEED_REQMT_BY_ONE_CASE]    NVARCHAR (1)   NULL,
    [PROC_SHRTG]                 NVARCHAR (1)   NULL,
    [IMMD_NEED_TMPL_ID]          NVARCHAR (10)  NULL,
    [CREATE_DATE_TIME]           DATETIME2 (7)  NULL,
    [MOD_DATE_TIME]              DATETIME2 (7)  NULL,
    [USER_ID]                    NVARCHAR (15)  NULL,
    [CD_MASTER_ID]               INT            NOT NULL,
    [WM_VERSION_ID]              INT            NOT NULL,
    [Eff_Date]                   DATE           NOT NULL,
    [End_Date]                   DATE           NULL,
    [ActInd]                     CHAR (1)       NULL,
    [IsDeleted]                  CHAR (1)       NULL,
    [BatchID]                    BIGINT         NULL,
    [ProcessLogID]               BIGINT         NULL,
    CONSTRAINT [PK_MANH_ALLOC_PARM] PRIMARY KEY CLUSTERED ([ALLOC_PARM_ID] ASC, [Eff_Date] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];



