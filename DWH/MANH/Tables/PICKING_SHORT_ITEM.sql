﻿CREATE TABLE [MANH].[PICKING_SHORT_ITEM] (
    [PICKING_SHORT_ITEM_ID] BIGINT          NOT NULL,
    [ITEM_ID]               BIGINT          NULL,
    [LOCN_ID]               NVARCHAR (10)   NULL,
    [LINE_ITEM_ID]          BIGINT          NULL,
    [TC_ORDER_ID]           NVARCHAR (50)   NULL,
    [WAVE_NBR]              NVARCHAR (12)   NULL,
    [SHORT_QTY]             DECIMAL (13, 5) NULL,
    [STAT_CODE]             INT             NULL,
    [TC_COMPANY_ID]         BIGINT          NOT NULL,
    [CREATED_DTTM]          DATE            NULL,
    [CREATED_SOURCE]        NVARCHAR (25)   NULL,
    [LAST_UPDATED_DTTM]     DATE            NULL,
    [LAST_UPDATED_SOURCE]   NVARCHAR (25)   NULL,
    [SHORT_TYPE]            NVARCHAR (1)    NULL,
    [TC_LPN_ID]             NVARCHAR (50)   NULL,
    [LPN_DETAIL_ID]         BIGINT          NULL,
    [REQD_INVN_TYPE]        NVARCHAR (1)    NULL,
    [REQD_PROD_STAT]        NVARCHAR (3)    NULL,
    [REQD_BATCH_NBR]        NVARCHAR (15)   NULL,
    [REQD_SKU_ATTR_1]       NVARCHAR (10)   NULL,
    [REQD_SKU_ATTR_2]       NVARCHAR (10)   NULL,
    [REQD_SKU_ATTR_3]       NVARCHAR (10)   NULL,
    [REQD_SKU_ATTR_4]       NVARCHAR (10)   NULL,
    [REQD_SKU_ATTR_5]       NVARCHAR (10)   NULL,
    [REQD_CNTRY_OF_ORGN]    NVARCHAR (4)    NULL,
    [BatchID]               BIGINT          NULL,
    [ProcessLogID]          BIGINT          NULL,
    CONSTRAINT [PK_PICKING_SHORT_ITEM] PRIMARY KEY CLUSTERED ([PICKING_SHORT_ITEM_ID] ASC) ON [DWH_MANH]
) ON [DWH_MANH];



