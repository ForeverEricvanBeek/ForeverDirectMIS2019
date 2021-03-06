﻿CREATE TABLE [IFS].[C_FL_CUSTOMS_STATUS] (
    [ORDER_NO]     NVARCHAR (20) NOT NULL,
    [CONTRACT]     NVARCHAR (5)  NOT NULL,
    [PART_NO]      NVARCHAR (25) NOT NULL,
    [LOT_BATCH_NO] NVARCHAR (20) NOT NULL,
    [ROWVERSION]   DATETIME2 (7) NULL,
    [BatchID]      BIGINT        NULL,
    [ProcessLogID] BIGINT        NULL,
    [Issue]        TINYINT       NULL,
    CONSTRAINT [PK_C_FL_CUSTOMS_STATUS] PRIMARY KEY CLUSTERED ([ORDER_NO] ASC, [CONTRACT] ASC, [PART_NO] ASC, [LOT_BATCH_NO] ASC)
);

