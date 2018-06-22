CREATE TABLE [MANH].[TRAN_MASTER_PARM] (
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
    [BatchID]             BIGINT         NULL,
    [ProcessLogID]        BIGINT         NULL,
    CONSTRAINT [PK_MANH_TRAN_MASTER_PARM] PRIMARY KEY CLUSTERED ([TRAN_MASTER_PARM_ID] ASC)
);

