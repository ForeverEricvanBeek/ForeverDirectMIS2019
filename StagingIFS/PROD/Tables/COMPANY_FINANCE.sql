﻿CREATE TABLE [PROD].[COMPANY_FINANCE] (
    [COMPANY]                  NVARCHAR (20)   NOT NULL,
    [CONS_COMPANY]             NVARCHAR (20)   NULL,
    [DESCRIPTION]              NVARCHAR (4000) NULL,
    [CURRENCY_CODE]            NVARCHAR (3)    NULL,
    [VALID_FROM]               DATETIME2 (7)   NULL,
    [CONSOLIDATION_FILE]       NVARCHAR (255)  NULL,
    [CORRECTION_TYPE]          NVARCHAR (4000) NULL,
    [CORRECTION_TYPE_DB]       NVARCHAR (20)   NULL,
    [PARALLEL_ACC_CURRENCY]    NVARCHAR (3)    NULL,
    [TIME_STAMP]               DATETIME2 (7)   NULL,
    [CONS_CODE_PART_VALUE]     NVARCHAR (20)   NULL,
    [CONS_CODE_PART]           NVARCHAR (4000) NULL,
    [RECALCULATION_DATE]       NVARCHAR (8)    NULL,
    [LEVEL_IN_PERCENT]         DECIMAL (18, 2) NULL,
    [LEVEL_IN_ACC_CURRENCY]    DECIMAL (18, 2) NULL,
    [DEF_AMOUNT_METHOD]        NVARCHAR (4000) NULL,
    [DEF_AMOUNT_METHOD_DB]     NVARCHAR (200)  NULL,
    [CREATION_FINISHED]        NVARCHAR (5)    NULL,
    [CITY_TAX_CODE]            NVARCHAR (20)   NULL,
    [STATE_TAX_CODE]           NVARCHAR (20)   NULL,
    [COUNTY_TAX_CODE]          NVARCHAR (20)   NULL,
    [DISTRICT_TAX_CODE]        NVARCHAR (20)   NULL,
    [TAX_ROUNDING_METHOD]      NVARCHAR (4000) NULL,
    [TAX_ROUNDING_METHOD_DB]   NVARCHAR (20)   NULL,
    [USE_VOU_NO_PERIOD]        NVARCHAR (5)    NULL,
    [REVERSE_VOU_CORR_TYPE]    NVARCHAR (4000) NULL,
    [REVERSE_VOU_CORR_TYPE_DB] NVARCHAR (20)   NULL,
    [PERIOD_CLOSING_METHOD]    NVARCHAR (4000) NULL,
    [PERIOD_CLOSING_METHOD_DB] NVARCHAR (20)   NULL,
    [OBJID]                    NVARCHAR (4000) NULL,
    [OBJVERSION]               NVARCHAR (2000) NULL,
    [BatchID]                  BIGINT          NULL,
    [ProcessLogID]             BIGINT          NULL,
    CONSTRAINT [PK_COMPANY_FINANCE] PRIMARY KEY CLUSTERED ([COMPANY] ASC)
);

