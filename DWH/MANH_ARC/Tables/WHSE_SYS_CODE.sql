CREATE TABLE [MANH_ARC].[WHSE_SYS_CODE] (
    [REC_TYPE]          NVARCHAR (1)   NOT NULL,
    [CODE_TYPE]         NVARCHAR (3)   NOT NULL,
    [WHSE]              NVARCHAR (3)   NOT NULL,
    [CODE_ID]           NVARCHAR (15)  NOT NULL,
    [CODE_DESC]         NVARCHAR (100) NULL,
    [SHORT_DESC]        NVARCHAR (10)  NULL,
    [MISC_FLAGS]        NVARCHAR (100) NULL,
    [CREATE_DATE_TIME]  DATETIME2 (7)  NULL,
    [MOD_DATE_TIME]     DATETIME2 (7)  NULL,
    [USER_ID]           NVARCHAR (15)  NULL,
    [WHSE_SYS_CODE_ID]  INT            NOT NULL,
    [SYS_CODE_TYPE_ID]  INT            NULL,
    [WM_VERSION_ID]     INT            NOT NULL,
    [Eff_Date]          DATE           NOT NULL,
    [End_Date]          DATE           NULL,
    [ActInd]            CHAR (1)       NULL,
    [IsDeleted]         CHAR (1)       NULL,
    [BatchID]           BIGINT         NULL,
    [ProcessLogID]      BIGINT         NULL,
    [CREATED_DTTM]      DATETIME2 (7)  NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7)  NULL,
    CONSTRAINT [PK_MANH_WHSE_SYS_CODE] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [WHSE_SYS_CODE_ID] ASC) WITH (FILLFACTOR = 90) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];







