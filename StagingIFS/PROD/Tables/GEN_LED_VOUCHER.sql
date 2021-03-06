﻿CREATE TABLE [PROD].[GEN_LED_VOUCHER] (
    [COMPANY]                   NVARCHAR (20)   NOT NULL,
    [VOUCHER_TYPE]              NVARCHAR (3)    NOT NULL,
    [ACCOUNTING_YEAR]           INT             NOT NULL,
    [VOUCHER_NO]                INT             NOT NULL,
    [INTERNAL_SEQ_NUMBER]       INT             NULL,
    [VOUCHER_DATE]              DATETIME2 (7)   NULL,
    [DATE_REG]                  DATETIME2 (7)   NULL,
    [ACCOUNTING_PERIOD]         INT             NULL,
    [USERID]                    NVARCHAR (30)   NULL,
    [CORRECTION]                NVARCHAR (10)   NULL,
    [ACCOUNTING_TEXT_ID]        NVARCHAR (20)   NULL,
    [BALANCE_VOUCHER]           INT             NULL,
    [TRANSFER_ID]               NVARCHAR (200)  NULL,
    [JOU_NO]                    INT             NULL,
    [USER_GROUP]                NVARCHAR (30)   NULL,
    [VOUCHER_TYPE_REFERENCE]    NVARCHAR (30)   NULL,
    [ACCOUNTING_YEAR_REFERENCE] INT             NULL,
    [VOUCHER_NO_REFERENCE]      INT             NULL,
    [INTERIM_VOUCHER]           NVARCHAR (4000) NULL,
    [INTERIM_VOUCHER_DB]        NVARCHAR (1)    NULL,
    [VOUCHER_TEXT]              NVARCHAR (2000) NULL,
    [VOUCHER_TEXT2]             NVARCHAR (2000) NULL,
    [ENTERED_BY_USER_GROUP]     NVARCHAR (30)   NULL,
    [APPROVAL_DATE]             DATETIME2 (7)   NULL,
    [APPROVED_BY_USERID]        NVARCHAR (30)   NULL,
    [APPROVED_BY_USER_GROUP]    NVARCHAR (30)   NULL,
    [MULTI_COMPANY_ID]          NVARCHAR (20)   NULL,
    [IS_MULTI_COMPANY_VOUCHER]  NVARCHAR (5)    NULL,
    [FUNCTION_GROUP]            NVARCHAR (10)   NULL,
    [SIMULATION_VOUCHER]        NVARCHAR (5)    NULL,
    [STATUS_CANCELLED]          NVARCHAR (5)    NULL,
    [TRANSFERRED]               NVARCHAR (5)    NULL,
    [TEXT_ID$]                  NVARCHAR (50)   NULL,
    [OBJID]                     NVARCHAR (4000) NULL,
    [OBJVERSION]                NVARCHAR (2000) NULL,
    [BatchID]                   BIGINT          NULL,
    [ProcessLogID]              BIGINT          NULL,
    CONSTRAINT [PK_GEN_LED_VOUCHER] PRIMARY KEY CLUSTERED ([ACCOUNTING_YEAR] ASC, [COMPANY] ASC, [VOUCHER_TYPE] ASC, [VOUCHER_NO] ASC)
);

