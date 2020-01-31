﻿CREATE TABLE [IFS].[MPCCOM_ACCOUNTING] (
    [ACCOUNTING_ID]             INT             NOT NULL,
    [SEQ]                       INT             NOT NULL,
    [COMPANY]                   NVARCHAR (20)   NULL,
    [ACCOUNT_NO]                NVARCHAR (10)   NULL,
    [CODENO_C]                  NVARCHAR (10)   NULL,
    [CODENO_D]                  NVARCHAR (10)   NULL,
    [CODENO_G]                  NVARCHAR (10)   NULL,
    [CODENO_H]                  NVARCHAR (10)   NULL,
    [CODENO_I]                  NVARCHAR (10)   NULL,
    [CODENO_J]                  NVARCHAR (10)   NULL,
    [COST_CENTER]               NVARCHAR (10)   NULL,
    [OBJECT_NO]                 NVARCHAR (10)   NULL,
    [PROJECT_NO]                NVARCHAR (10)   NULL,
    [STR_CODE]                  NVARCHAR (10)   NULL,
    [EVENT_CODE]                NVARCHAR (10)   NULL,
    [VOUCHER_NO]                INT             NULL,
    [VOUCHER_TYPE]              NVARCHAR (3)    NULL,
    [CURRENCY_CODE]             NVARCHAR (3)    NULL,
    [STATUS_CODE]               NVARCHAR (2)    NULL,
    [BOOKING_SOURCE]            NVARCHAR (10)   NULL,
    [CURR_AMOUNT]               DECIMAL (18, 8) NULL,
    [CURRENCY_RATE]             INT             NULL,
    [DATE_APPLIED]              DATETIME2 (7)   NULL,
    [DEBIT_CREDIT]              NVARCHAR (1)    NULL,
    [ERROR_DESC]                NVARCHAR (2000) NULL,
    [VALUE]                     DECIMAL (18, 8) NULL,
    [ACTIVITY_SEQ]              INT             NULL,
    [ACCOUNTING_YEAR]           INT             NULL,
    [ACCOUNTING_PERIOD]         INT             NULL,
    [CONTRACT]                  NVARCHAR (5)    NULL,
    [INVENTORY_VALUE_STATUS]    NVARCHAR (4000) NULL,
    [INVENTORY_VALUE_STATUS_DB] NVARCHAR (20)   NULL,
    [DATE_OF_ORIGIN]            DATETIME2 (7)   NULL,
    [ORIGINAL_ACCOUNTING_ID]    INT             NULL,
    [ORIGINAL_SEQ]              INT             NULL,
    [DEBIT_AMOUNT]              DECIMAL (18, 8) NULL,
    [CREDIT_AMOUNT]             DECIMAL (18, 8) NULL,
    [DEBIT_CREDIT_AMOUNT]       DECIMAL (18, 8) NULL,
    [USERID]                    NVARCHAR (30)   NULL,
    [BUCKET_POSTING_GROUP_ID]   NVARCHAR (20)   NULL,
    [COST_SOURCE_ID]            NVARCHAR (20)   NULL,
    [PER_OH_ADJUSTMENT_ID]      INT             NULL,
    [OBJID]                     NVARCHAR (4000) NULL,
    [OBJVERSION]                NVARCHAR (2000) NULL,
    [Eff_Date]                  DATE            NOT NULL,
    [End_Date]                  DATE            NULL,
    [ActInd]                    CHAR (1)        NULL,
    [IsDeleted]                 CHAR (1)        NULL,
    [BatchID]                   BIGINT          NULL,
    [ProcessLogID]              BIGINT          NULL,
    CONSTRAINT [PK_MPCCOM_ACCOUNTING] PRIMARY KEY CLUSTERED ([ACCOUNTING_ID] ASC, [SEQ] ASC, [Eff_Date] ASC) ON [DWH_IFS]
) ON [DWH_IFS];









