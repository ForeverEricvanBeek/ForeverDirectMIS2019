﻿CREATE TABLE [IFS].[CURRENCY_TYPE] (
    [COMPANY]           NVARCHAR (20)   NOT NULL,
    [CURRENCY_TYPE]     NVARCHAR (10)   NOT NULL,
    [DESCRIPTION]       NVARCHAR (4000) NULL,
    [TYPE_DEFAULT]      NVARCHAR (4000) NULL,
    [TYPE_DEFAULT_DB]   NVARCHAR (1)    NULL,
    [REF_CURRENCY_CODE] NVARCHAR (3)    NULL,
    [OBJID]             NVARCHAR (4000) NULL,
    [OBJVERSION]        NVARCHAR (2000) NULL,
    [Eff_Date]          DATE            NOT NULL,
    [End_Date]          DATE            NULL,
    [ActInd]            CHAR (1)        NULL,
    [IsDeleted]         CHAR (1)        NULL,
    [BatchID]           BIGINT          NULL,
    [ProcessLogID]      BIGINT          NULL,
    CONSTRAINT [PK_CURRENCY_TYPE] PRIMARY KEY CLUSTERED ([COMPANY] ASC, [CURRENCY_TYPE] ASC, [Eff_Date] ASC) ON [DWH_IFS]
) ON [DWH_IFS];
