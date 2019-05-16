﻿CREATE TABLE [IFS].[C_KFD_CMSCOUNTER_HIST] (
    [TRANSACTION_ID] INT           NOT NULL,
    [CONTRACT]       NVARCHAR (5)  NOT NULL,
    [PART_NO]        NVARCHAR (35) NOT NULL,
    [LOT_BATCH_NO]   NVARCHAR (50) NOT NULL,
    [PKG_UNIT_ID]    INT           NOT NULL,
    [ROWVERSION]     DATETIME2 (7) NULL,
    [BatchID]        BIGINT        NULL,
    [ProcessLogID]   BIGINT        NULL,
    [Issue]          TINYINT       NULL,
    CONSTRAINT [PK_C_KFD_CMSCOUNTER_HIST] PRIMARY KEY CLUSTERED ([TRANSACTION_ID] ASC, [CONTRACT] ASC, [PART_NO] ASC, [LOT_BATCH_NO] ASC, [PKG_UNIT_ID] ASC)
);

