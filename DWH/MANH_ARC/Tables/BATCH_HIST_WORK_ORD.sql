CREATE TABLE [MANH_ARC].[BATCH_HIST_WORK_ORD] (
    [BATCH_HIST_WORK_ORD_ID] INT           NOT NULL,
    [BATCH_NBR]              NVARCHAR (15) NOT NULL,
    [WORK_ORD_NBR]           NVARCHAR (12) NULL,
    [COMP_SKU_BATCH]         NVARCHAR (15) NULL,
    [CREATE_DATE_TIME]       DATETIME2 (7) NULL,
    [MOD_DATE_TIME]          DATETIME2 (7) NULL,
    [USER_ID]                NVARCHAR (15) NULL,
    [WM_VERSION_ID]          INT           NOT NULL,
    [BATCH_MASTER_ID]        INT           NULL,
    [ITEM_ID]                INT           NOT NULL,
    [WORK_ORD_HDR_ID]        INT           NULL,
    [COMP_ITEM_ID]           INT           NULL,
    [Eff_Date]               DATE          NOT NULL,
    [End_Date]               DATE          NULL,
    [ActInd]                 CHAR (1)      NULL,
    [IsDeleted]              CHAR (1)      NULL,
    [BatchID]                BIGINT        NULL,
    [ProcessLogID]           BIGINT        NULL,
    CONSTRAINT [PK_MANH_BATCH_HIST_WORK_ORD] PRIMARY KEY CLUSTERED ([BATCH_HIST_WORK_ORD_ID] ASC, [Eff_Date] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];

