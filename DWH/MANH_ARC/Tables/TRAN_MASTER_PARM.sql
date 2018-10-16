CREATE TABLE [MANH_ARC].[TRAN_MASTER_PARM] (
    [TRAN_MASTER_PARM_ID] INT            NOT NULL,
    [TRAN_ID]             INT            NOT NULL,
    [FROM_POSN]           INT            NOT NULL,
    [WHSE_MASTER_ID]      INT            NULL,
    [CD_MASTER_ID]        INT            NULL,
    [MENU_PARM]           NVARCHAR (255) NULL,
    [CREATE_DATE_TIME]    DATETIME2 (7)  NULL,
    [MOD_DATE_TIME]       DATETIME2 (7)  NULL,
    [USER_ID]             NVARCHAR (255) NULL,
    [WM_VERSION_ID]       INT            NOT NULL,
    [CREATED_DTTM]        DATETIME2 (7)  NOT NULL,
    [LAST_UPDATED_DTTM]   DATETIME2 (7)  NULL,
    [Eff_Date]            DATE           NOT NULL,
    [End_Date]            DATE           NULL,
    [ActInd]              CHAR (1)       NULL,
    [IsDeleted]           CHAR (1)       NULL,
    [BatchID]             BIGINT         NULL,
    [ProcessLogID]        BIGINT         NULL,
    CONSTRAINT [PK_MANH_TRAN_MASTER_PARM] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [TRAN_MASTER_PARM_ID] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];

