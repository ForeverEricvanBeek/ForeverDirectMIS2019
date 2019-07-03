CREATE TABLE [MANH_ARC].[PIX_TRAN_CODE] (
    [TRAN_TYPE]             NVARCHAR (3)  NOT NULL,
    [TRAN_CODE]             NVARCHAR (3)  NOT NULL,
    [ACTN_CODE]             NVARCHAR (3)  NULL,
    [CREATE_DATE_TIME]      DATETIME2 (7) NULL,
    [MOD_DATE_TIME]         DATETIME2 (7) NULL,
    [USER_ID]               NVARCHAR (15) NULL,
    [PIX_XML_GROUPING_ATTR] NVARCHAR (10) NULL,
    [PIX_CREATE_STAT_CODE]  SMALLINT      NOT NULL,
    [PIX_DESC]              NVARCHAR (50) NULL,
    [PIX_TRAN_CODE_ID]      INT           NOT NULL,
    [CD_MASTER_ID]          INT           NULL,
    [WM_VERSION_ID]         INT           NOT NULL,
    [Eff_Date]              DATE          NOT NULL,
    [End_Date]              DATE          NULL,
    [ActInd]                CHAR (1)      NULL,
    [IsDeleted]             CHAR (1)      NULL,
    [BatchID]               BIGINT        NULL,
    [ProcessLogID]          BIGINT        NULL,
    [CREATED_DTTM]          DATETIME2 (7) NULL,
    [LAST_UPDATED_DTTM]     DATETIME2 (7) NULL,
    CONSTRAINT [PK_MANH_PIX_TRAN_CODE] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [PIX_TRAN_CODE_ID] ASC) WITH (FILLFACTOR = 90) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];







