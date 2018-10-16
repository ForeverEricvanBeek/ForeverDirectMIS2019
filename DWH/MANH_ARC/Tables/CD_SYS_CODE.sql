CREATE TABLE [MANH_ARC].[CD_SYS_CODE] (
    [CD_SYS_CODE_ID]   BIGINT         NOT NULL,
    [REC_TYPE]         NVARCHAR (1)   NULL,
    [CODE_TYPE]        NVARCHAR (3)   NULL,
    [CODE_ID]          NVARCHAR (15)  NULL,
    [CODE_DESC]        NVARCHAR (100) NULL,
    [SHORT_DESC]       NVARCHAR (10)  NULL,
    [MISC_FLAGS]       NVARCHAR (100) NULL,
    [CREATE_DATE_TIME] DATETIME2 (7)  NULL,
    [MOD_DATE_TIME]    DATETIME2 (7)  NULL,
    [USER_ID]          NVARCHAR (15)  NULL,
    [CD_MASTER_ID]     INT            NULL,
    [WM_VERSION_ID]    INT            NULL,
    [SYS_CODE_TYPE_ID] INT            NULL,
    [Eff_Date]         DATE           NOT NULL,
    [End_Date]         DATE           NULL,
    [ActInd]           CHAR (1)       NULL,
    [IsDeleted]        CHAR (1)       NULL,
    [BatchID]          BIGINT         NULL,
    [ProcessLogID]     BIGINT         NULL,
    CONSTRAINT [PK_MANH_CD_SYS_CODE] PRIMARY KEY CLUSTERED ([CD_SYS_CODE_ID] ASC, [Eff_Date] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];

