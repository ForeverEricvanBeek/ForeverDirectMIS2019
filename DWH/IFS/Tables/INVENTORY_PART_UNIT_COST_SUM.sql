﻿CREATE TABLE [IFS].[INVENTORY_PART_UNIT_COST_SUM] (
    [CONTRACT]         NVARCHAR (5)    NOT NULL,
    [PART_NO]          NVARCHAR (25)   NOT NULL,
    [CONFIGURATION_ID] NVARCHAR (50)   NOT NULL,
    [LOT_BATCH_NO]     NVARCHAR (20)   NOT NULL,
    [SERIAL_NO]        NVARCHAR (50)   NOT NULL,
    [INVENTORY_VALUE]  DECIMAL (18, 5) NULL,
    [OBJID]            NVARCHAR (4000) NULL,
    [OBJVERSION]       NVARCHAR (2000) NULL,
    [Eff_Date]         DATE            NOT NULL,
    [End_Date]         DATE            NULL,
    [ActInd]           CHAR (1)        NULL,
    [IsDeleted]        CHAR (1)        NULL,
    [BatchID]          BIGINT          NULL,
    [ProcessLogID]     BIGINT          NULL,
    CONSTRAINT [PK_INVENTORY_PART_UNIT_COST_SUM] PRIMARY KEY CLUSTERED ([CONTRACT] ASC, [PART_NO] ASC, [CONFIGURATION_ID] ASC, [LOT_BATCH_NO] ASC, [SERIAL_NO] ASC, [Eff_Date] ASC) WITH (FILLFACTOR = 80) ON [DWH_IFS]
) ON [DWH_IFS];











