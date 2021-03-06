﻿CREATE TABLE [IFS].[SHOP_ORDER_OH_HISTORY] (
    [TRANSACTION_ID]           INT             NOT NULL,
    [ACCOUNTING_ID]            INT             NULL,
    [PART_NO]                  NVARCHAR (25)   NULL,
    [TRANSACTION]              NVARCHAR (4000) NULL,
    [DATED]                    DATETIME2 (7)   NULL,
    [DATE_APPLIED]             DATETIME2 (7)   NULL,
    [GENERAL_OH_COST]          INT             NULL,
    [ORDER_TYPE]               NVARCHAR (4000) NULL,
    [ORDER_TYPE_DB]            NVARCHAR (20)   NULL,
    [CONTRACT]                 NVARCHAR (5)    NULL,
    [ORDER_NO]                 NVARCHAR (12)   NULL,
    [RELEASE_NO]               NVARCHAR (4)    NULL,
    [SEQUENCE_NO]              NVARCHAR (4)    NULL,
    [TRANSACTION_CODE]         NVARCHAR (10)   NULL,
    [MODIFY_DATE_APPLIED_DATE] DATETIME2 (7)   NULL,
    [MODIFY_DATE_APPLIED_USER] NVARCHAR (30)   NULL,
    [OBJID]                    NVARCHAR (4000) NULL,
    [OBJVERSION]               NVARCHAR (2000) NULL,
    [BatchID]                  BIGINT          NULL,
    [ProcessLogID]             BIGINT          NULL,
    CONSTRAINT [PK_SHOP_ORDER_OH_HISTORY] PRIMARY KEY CLUSTERED ([TRANSACTION_ID] ASC)
);

