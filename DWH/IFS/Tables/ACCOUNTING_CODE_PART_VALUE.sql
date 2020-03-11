﻿CREATE TABLE [IFS].[ACCOUNTING_CODE_PART_VALUE] (
    [COMPANY]              NVARCHAR (20)   NOT NULL,
    [CODE_PART]            NVARCHAR (1)    NOT NULL,
    [CODE_PART_VALUE]      NVARCHAR (20)   NOT NULL,
    [DESCRIPTION]          NVARCHAR (4000) NULL,
    [ACCNT_TYPE]           NVARCHAR (20)   NULL,
    [VALID_FROM]           DATETIME2 (7)   NULL,
    [VALID_UNTIL]          DATETIME2 (7)   NULL,
    [ACCOUNTING_TEXT_ID]   NVARCHAR (200)  NULL,
    [TEXT]                 NVARCHAR (2000) NULL,
    [CONS_COMPANY]         NVARCHAR (4000) NULL,
    [CONS_CODE_PART]       NVARCHAR (4000) NULL,
    [CONS_CODE_PART_VALUE] NVARCHAR (20)   NULL,
    [SORT_VALUE]           NVARCHAR (30)   NULL,
    [OBJID]                NVARCHAR (4000) NULL,
    [OBJVERSION]           NVARCHAR (2000) NULL,
    [Eff_Date]             DATE            NOT NULL,
    [End_Date]             DATE            NULL,
    [ActInd]               CHAR (1)        NULL,
    [IsDeleted]            CHAR (1)        NULL,
    [BatchID]              BIGINT          NULL,
    [ProcessLogID]         BIGINT          NULL,
    CONSTRAINT [PK_ACCOUNTING_CODE_PART_VALUE] PRIMARY KEY CLUSTERED ([COMPANY] ASC, [CODE_PART] ASC, [CODE_PART_VALUE] ASC, [Eff_Date] ASC) ON [DWH_IFS]
) ON [DWH_IFS];

