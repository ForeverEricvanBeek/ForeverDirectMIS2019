﻿CREATE TABLE [MANH].[RULE_HDR] (
    [RULE_ID]           INT           NOT NULL,
    [RULE_GRP]          NVARCHAR (2)  NOT NULL,
    [RULE_TYPE]         NVARCHAR (4)  NOT NULL,
    [RULE_NAME]         NVARCHAR (20) NULL,
    [RULE_DESC]         NVARCHAR (40) NULL,
    [STAT_CODE]         INT           NOT NULL,
    [CREATE_DATE_TIME]  DATETIME2 (7) NULL,
    [MOD_DATE_TIME]     DATETIME2 (7) NULL,
    [USER_ID]           NVARCHAR (15) NULL,
    [REC_TYPE]          NVARCHAR (1)  NULL,
    [RULE_HDR_ID]       INT           NOT NULL,
    [WM_VERSION_ID]     INT           NOT NULL,
    [MHE_RULE_GROUP_ID] INT           NULL,
    [CREATED_DTTM]      DATETIME2 (7) NOT NULL,
    [LAST_UPDATED_DTTM] DATETIME2 (7) NULL,
    [BatchID]           BIGINT        NULL,
    [ProcessLogID]      BIGINT        NULL,
    CONSTRAINT [PK_MANH_RULE_HDR] PRIMARY KEY CLUSTERED ([RULE_HDR_ID] ASC)
);

