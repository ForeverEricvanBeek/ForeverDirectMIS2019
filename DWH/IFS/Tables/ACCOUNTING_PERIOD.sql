﻿CREATE TABLE [IFS].[ACCOUNTING_PERIOD] (
    [COMPANY]              NVARCHAR (80)   NOT NULL,
    [ACCOUNTING_YEAR]      INT             NOT NULL,
    [ACCOUNTING_PERIOD]    INT             NOT NULL,
    [DESCRIPTION]          NVARCHAR (4000) NULL,
    [YEAR_END_PERIOD]      NVARCHAR (4000) NULL,
    [YEAR_END_PERIOD_DB]   NVARCHAR (40)   NULL,
    [PERIOD_STATUS]        NVARCHAR (4000) NULL,
    [PERIOD_STATUS_DB]     NVARCHAR (4)    NULL,
    [PERIOD_STATUS_INT]    NVARCHAR (4000) NULL,
    [PERIOD_STATUS_INT_DB] NVARCHAR (4)    NULL,
    [DATE_FROM]            DATETIME2 (7)   NULL,
    [DATE_UNTIL]           DATETIME2 (7)   NULL,
    [CONSOLIDATED]         NVARCHAR (4000) NULL,
    [CONSOLIDATED_DB]      NVARCHAR (4)    NULL,
    [REPORT_FROM_DATE]     DATETIME2 (7)   NULL,
    [REPORT_UNTIL_DATE]    DATETIME2 (7)   NULL,
    [OBJID]                NVARCHAR (4000) NULL,
    [OBJVERSION]           NVARCHAR (4000) NULL,
    [Eff_Date]             DATE            NOT NULL,
    [End_Date]             DATE            NULL,
    [ActInd]               CHAR (1)        NULL,
    [IsDeleted]            CHAR (1)        NULL,
    [BatchID]              BIGINT          NULL,
    [ProcessLogID]         BIGINT          NULL,
    CONSTRAINT [PK_ACCOUNTING_PERIOD] PRIMARY KEY CLUSTERED ([COMPANY] ASC, [ACCOUNTING_YEAR] ASC, [ACCOUNTING_PERIOD] ASC, [Eff_Date] ASC) ON [DWH_IFS]
) ON [DWH_IFS];





