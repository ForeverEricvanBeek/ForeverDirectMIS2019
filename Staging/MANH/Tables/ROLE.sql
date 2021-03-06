﻿CREATE TABLE [MANH].[ROLE] (
    [ROLE_ID]                     INT            NOT NULL,
    [COMPANY_ID]                  INT            NULL,
    [ROLE_NAME]                   NVARCHAR (100) NULL,
    [IS_ROLE_PRIVATE]             INT            NULL,
    [IS_ACTIVE]                   INT            NULL,
    [CREATED_SOURCE_TYPE_ID]      INT            NULL,
    [CREATED_SOURCE]              NVARCHAR (50)  NULL,
    [CREATED_DTTM]                DATETIME2 (7)  NULL,
    [LAST_UPDATED_SOURCE_TYPE_ID] INT            NULL,
    [LAST_UPDATED_SOURCE]         NVARCHAR (50)  NULL,
    [LAST_UPDATED_DTTM]           DATETIME2 (7)  NULL,
    [HIBERNATE_VERSION]           INT            NULL,
    [APPLY_TO_BUSINESS_PARTNERS]  INT            NULL,
    [ROLE_TYPE_ID]                INT            NULL,
    [DESCRIPTION]                 NVARCHAR (255) NULL,
    [BatchID]                     BIGINT         NULL,
    [ProcessLogID]                BIGINT         NULL,
    CONSTRAINT [PK_MANH_ROLE] PRIMARY KEY CLUSTERED ([ROLE_ID] ASC)
);

