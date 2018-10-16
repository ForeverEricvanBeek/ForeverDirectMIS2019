CREATE TABLE [MANH_ARC].[PIX_REF_GRP_MASTER] (
    [PIX_REF_GRP_MASTER_ID] INT           NOT NULL,
    [REF_GRP]               INT           NOT NULL,
    [TBL_NAME]              NVARCHAR (30) NOT NULL,
    [CREATE_DATE_TIME]      DATETIME2 (7) NULL,
    [MOD_DATE_TIME]         DATETIME2 (7) NULL,
    [USER_ID]               NVARCHAR (15) NULL,
    [WM_VERSION_ID]         INT           NOT NULL,
    [CREATED_DTTM]          DATETIME2 (7) NOT NULL,
    [LAST_UPDATED_DTTM]     DATETIME2 (7) NULL,
    [Eff_Date]              DATE          NOT NULL,
    [End_Date]              DATE          NULL,
    [ActInd]                CHAR (1)      NULL,
    [IsDeleted]             CHAR (1)      NULL,
    [BatchID]               BIGINT        NULL,
    [ProcessLogID]          BIGINT        NULL,
    CONSTRAINT [PK_MANH_PIX_REF_GRP_MASTER] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [PIX_REF_GRP_MASTER_ID] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];

