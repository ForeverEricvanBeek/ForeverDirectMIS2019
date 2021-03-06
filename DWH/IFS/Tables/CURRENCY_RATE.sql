﻿CREATE TABLE [IFS].[CURRENCY_RATE] (
    [COMPANY]           NVARCHAR (20)   NOT NULL,
    [CURRENCY_TYPE]     NVARCHAR (10)   NOT NULL,
    [CURRENCY_CODE]     NVARCHAR (3)    NOT NULL,
    [VALID_FROM]        DATETIME2 (7)   NOT NULL,
    [CURRENCY_RATE]     DECIMAL (18, 6) NULL,
    [CONV_FACTOR]       INT             NULL,
    [REF_CURRENCY_CODE] NVARCHAR (3)    NULL,
    [OBJID]             NVARCHAR (4000) NULL,
    [OBJVERSION]        NVARCHAR (14)   NULL,
    [Eff_Date]          DATE            NOT NULL,
    [End_Date]          DATE            NULL,
    [ActInd]            CHAR (1)        NULL,
    [IsDeleted]         CHAR (1)        NULL,
    [BatchID]           BIGINT          NULL,
    [ProcessLogID]      BIGINT          NULL,
    CONSTRAINT [PK_CURRENCY_RATE] PRIMARY KEY CLUSTERED ([COMPANY] ASC, [CURRENCY_TYPE] ASC, [CURRENCY_CODE] ASC, [VALID_FROM] ASC, [Eff_Date] ASC) ON [DWH_IFS]
) ON [DWH_IFS];

