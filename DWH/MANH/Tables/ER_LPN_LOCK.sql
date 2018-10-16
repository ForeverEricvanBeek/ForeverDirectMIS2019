CREATE TABLE [MANH].[ER_LPN_LOCK] (
    [LPN_LOCK_ID]              INT             NOT NULL,
    [LPN_ID]                   INT             NOT NULL,
    [INVENTORY_LOCK_CODE]      NVARCHAR (2)    NULL,
    [REASON_CODE]              NVARCHAR (2)    NULL,
    [LOCK_COUNT]               INT             NULL,
    [TC_LPN_ID]                NVARCHAR (50)   NULL,
    [CREATED_SOURCE_TYPE]      INT             NULL,
    [CREATED_SOURCE]           NVARCHAR (25)   NULL,
    [CREATED_DTTM]             DATETIME2 (7)   NULL,
    [LAST_UPDATED_SOURCE_TYPE] INT             NULL,
    [LAST_UPDATED_SOURCE]      NVARCHAR (25)   NULL,
    [LAST_UPDATED_DTTM]        DATETIME2 (7)   NULL,
    [ACTION]                   NVARCHAR (2)    NOT NULL,
    [ESIGN_USER_ID]            NVARCHAR (15)   NULL,
    [DB_SID]                   INT             NULL,
    [TRANSACTION_ID]           INT             NOT NULL,
    [EREC_CREATE_DATE_TIME]    DATETIME2 (7)   NULL,
    [DB_USERNAME]              NVARCHAR (30)   NULL,
    [CLIENT_MACHINE_NAME]      NVARCHAR (64)   NULL,
    [CLIENT_OS_USER]           NVARCHAR (30)   NULL,
    [CLIENT_MODULE]            NVARCHAR (12)   NULL,
    [CLIENT_SQL]               NVARCHAR (1000) NULL,
    [ER_LPN_LOCK_ID]           INT             NULL,
    [BatchID]                  BIGINT          NULL,
    [ProcessLogID]             BIGINT          NULL,
    CONSTRAINT [PK_ER_LPN_LOCK] PRIMARY KEY CLUSTERED ([ACTION] ASC, [LPN_ID] ASC, [LPN_LOCK_ID] ASC, [TRANSACTION_ID] ASC) ON [DWH_MANH]
) ON [DWH_MANH];



