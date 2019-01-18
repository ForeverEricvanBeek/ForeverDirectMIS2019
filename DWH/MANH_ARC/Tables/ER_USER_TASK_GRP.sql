CREATE TABLE [MANH_ARC].[ER_USER_TASK_GRP] (
    [LOGIN_USER_ID]         NVARCHAR (50)   NULL,
    [TASK_GRP]              NVARCHAR (3)    NULL,
    [STAT_CODE]             INT             NULL,
    [USER_ID]               NVARCHAR (15)   NULL,
    [CREATE_DATE_TIME]      DATETIME2 (7)   NULL,
    [MOD_DATE_TIME]         DATETIME2 (7)   NULL,
    [TASK_GRP_JUMP_PRTY]    INT             NULL,
    [REOCCUR_TASK_INTERVAL] INT             NULL,
    [USER_TASK_GRP_ID]      INT             NULL,
    [USER_PROFILE_ID]       INT             NULL,
    [WM_VERSION_ID]         INT             NULL,
    [REOCCUR_INT]           INT             NULL,
    [ACTION]                NVARCHAR (2)    NULL,
    [ESIGN_USER_ID]         NVARCHAR (15)   NULL,
    [DB_SID]                INT             NULL,
    [TRANSACTION_ID]        INT             NULL,
    [EREC_CREATE_DATE_TIME] DATETIME2 (7)   NULL,
    [DB_USERNAME]           NVARCHAR (30)   NULL,
    [CLIENT_MACHINE_NAME]   NVARCHAR (64)   NULL,
    [CLIENT_OS_USER]        NVARCHAR (30)   NULL,
    [CLIENT_MODULE]         NVARCHAR (12)   NULL,
    [CLIENT_SQL]            NVARCHAR (1000) NULL,
    [ER_USER_TASK_GRP_ID]   INT             NULL,
    [BatchID]               BIGINT          NULL,
    [ProcessLogID]          BIGINT          NULL
)
WITH (DATA_COMPRESSION = PAGE);



