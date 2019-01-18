﻿CREATE TABLE [MANH_ARC].[ER_USER_NAVIGATION] (
    [USER_NAVIGATION_ID]    INT             NULL,
    [USER_ID]               BIGINT          NULL,
    [NAVIGATION_ID]         INT             NULL,
    [PARENT_ID]             INT             NULL,
    [TITLE]                 NVARCHAR (50)   NULL,
    [HIBERNATE_VERSION]     INT             NULL,
    [LAST_UPDATED_DTTM]     DATETIME2 (7)   NULL,
    [CHILDREN_ORDER]        NVARCHAR (2000) NULL,
    [UDEF_SEQ]              INT             NULL,
    [REF_ID]                NVARCHAR (256)  NULL,
    [REC_TYPE]              NVARCHAR (10)   NULL,
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
    [ER_USER_NAVIGATION_ID] INT             NULL,
    [BatchID]               BIGINT          NULL,
    [ProcessLogID]          BIGINT          NULL
)
WITH (DATA_COMPRESSION = PAGE);



