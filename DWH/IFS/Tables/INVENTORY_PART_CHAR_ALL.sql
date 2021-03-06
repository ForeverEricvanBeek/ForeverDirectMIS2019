﻿CREATE TABLE [IFS].[INVENTORY_PART_CHAR_ALL] (
    [CONTRACT]            NVARCHAR (5)    NOT NULL,
    [PART_NO]             NVARCHAR (25)   NOT NULL,
    [CHARACTERISTIC_CODE] NVARCHAR (5)    NOT NULL,
    [UNIT_MEAS]           NVARCHAR (10)   NULL,
    [ATTR_VALUE]          NVARCHAR (60)   NULL,
    [ATTR_VALUE_NUMERIC]  INT             NULL,
    [ATTR_VALUE_ALPHA]    NVARCHAR (60)   NULL,
    [OBJID]               NVARCHAR (4000) NULL,
    [OBJVERSION]          NVARCHAR (2000) NULL,
    [Eff_Date]            DATE            NOT NULL,
    [End_Date]            DATE            NULL,
    [ActInd]              CHAR (1)        NULL,
    [IsDeleted]           CHAR (1)        NULL,
    [BatchID]             BIGINT          NULL,
    [ProcessLogID]        BIGINT          NULL,
    CONSTRAINT [PK_INVENTORY_PART_CHAR_ALL] PRIMARY KEY CLUSTERED ([PART_NO] ASC, [CONTRACT] ASC, [CHARACTERISTIC_CODE] ASC, [Eff_Date] ASC) ON [DWH_IFS]
) ON [DWH_IFS];





