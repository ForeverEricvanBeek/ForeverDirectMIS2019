﻿CREATE TABLE [IFS].[INVENTORY_PART_UNIT_COST_SUM] (
    [CONTRACT]         NVARCHAR (5)    NOT NULL,
    [PART_NO]          NVARCHAR (25)   NOT NULL,
    [CONFIGURATION_ID] NVARCHAR (50)   NOT NULL,
    [LOT_BATCH_NO]     NVARCHAR (20)   NOT NULL,
    [SERIAL_NO]        NVARCHAR (50)   NOT NULL,
    [INVENTORY_VALUE]  INT             NULL,
    [OBJID]            NVARCHAR (4000) NULL,
    [OBJVERSION]       NVARCHAR (2000) NULL,
    [BatchID]          BIGINT          NULL,
    [ProcessLogID]     BIGINT          NULL
);

