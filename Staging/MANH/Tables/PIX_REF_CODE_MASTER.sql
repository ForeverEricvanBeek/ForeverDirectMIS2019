﻿CREATE TABLE [MANH].[PIX_REF_CODE_MASTER] (
    [REF_CODE_ID]            NVARCHAR (3)  NOT NULL,
    [REF_CODE_ID_DESC]       NVARCHAR (50) NULL,
    [RULE_COLM_ID]           INT           NULL,
    [CREATE_DATE_TIME]       DATETIME2 (7) NULL,
    [MOD_DATE_TIME]          DATETIME2 (7) NULL,
    [USER_ID]                NVARCHAR (15) NULL,
    [PIX_REF_CODE_MASTER_ID] INT           NOT NULL,
    [WM_VERSION_ID]          INT           NOT NULL,
    [RULE_COLM_LIST_ID]      INT           NOT NULL,
    [CREATED_DTTM]           DATETIME2 (7) NOT NULL,
    [LAST_UPDATED_DTTM]      DATETIME2 (7) NULL,
    [BatchID]                BIGINT        NULL,
    [ProcessLogID]           BIGINT        NULL,
    CONSTRAINT [PK_MANH_PIX_REF_CODE_MASTER] PRIMARY KEY CLUSTERED ([PIX_REF_CODE_MASTER_ID] ASC)
);

