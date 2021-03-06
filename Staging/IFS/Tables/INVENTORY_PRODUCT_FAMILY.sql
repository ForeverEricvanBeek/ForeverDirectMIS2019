﻿CREATE TABLE [IFS].[INVENTORY_PRODUCT_FAMILY] (
    [PART_PRODUCT_FAMILY] NVARCHAR (5)   NOT NULL,
    [DESCRIPTION]         NVARCHAR (35)  NULL,
    [C_TO_CMS]            NVARCHAR (5)   NULL,
    [OBJID]               NVARCHAR (100) NULL,
    [OBJVERSION]          BIGINT         NULL,
    [BatchID]             BIGINT         NULL,
    [ProcessLogID]        BIGINT         NULL
);

