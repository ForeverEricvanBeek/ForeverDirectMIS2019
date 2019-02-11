﻿CREATE TABLE [MANH].[LPN_DETAIL] (
    [TC_COMPANY_ID]              INT             NOT NULL,
    [LPN_ID]                     BIGINT          NOT NULL,
    [LPN_DETAIL_ID]              BIGINT          NOT NULL,
    [LPN_DETAIL_STATUS]          SMALLINT        NULL,
    [INTERNAL_ORDER_DTL_ID]      BIGINT          NULL,
    [DISTRIBUTION_ORDER_DTL_ID]  BIGINT          NULL,
    [RECEIVED_QTY]               NUMERIC (13, 4) NULL,
    [BUSINESS_PARTNER_ID]        NVARCHAR (10)   NULL,
    [ITEM_ID]                    INT             NULL,
    [GTIN]                       NVARCHAR (25)   NULL,
    [STD_PACK_QTY]               NUMERIC (13, 4) NULL,
    [STD_SUB_PACK_QTY]           NUMERIC (13, 4) NULL,
    [STD_BUNDLE_QTY]             NUMERIC (13, 4) NULL,
    [INCUBATION_DATE]            DATETIME2 (7)   NULL,
    [EXPIRATION_DATE]            DATETIME2 (7)   NULL,
    [SHIP_BY_DATE]               DATETIME2 (7)   NULL,
    [SELL_BY_DTTM]               DATETIME2 (7)   NULL,
    [CONSUMPTION_PRIORITY_DTTM]  DATETIME2 (7)   NULL,
    [MANUFACTURED_DTTM]          DATETIME2 (7)   NULL,
    [CNTRY_OF_ORGN]              NVARCHAR (4)    NULL,
    [INVENTORY_TYPE]             NVARCHAR (1)    NULL,
    [PRODUCT_STATUS]             NVARCHAR (3)    NULL,
    [ITEM_ATTR_1]                NVARCHAR (10)   NULL,
    [ITEM_ATTR_2]                NVARCHAR (10)   NULL,
    [ITEM_ATTR_3]                NVARCHAR (10)   NULL,
    [ITEM_ATTR_4]                NVARCHAR (10)   NULL,
    [ITEM_ATTR_5]                NVARCHAR (10)   NULL,
    [ASN_DTL_ID]                 INT             NULL,
    [PACK_WEIGHT]                NUMERIC (13, 4) NULL,
    [ESTIMATED_WEIGHT]           NUMERIC (13, 4) NULL,
    [ESTIMATED_VOLUME]           NUMERIC (13, 4) NULL,
    [SIZE_VALUE]                 NUMERIC (16, 4) NULL,
    [WEIGHT]                     NUMERIC (16, 4) NULL,
    [QTY_UOM_ID]                 BIGINT          NULL,
    [WEIGHT_UOM_ID]              INT             NULL,
    [VOLUME_UOM_ID]              INT             NULL,
    [ASSORT_NBR]                 NVARCHAR (12)   NULL,
    [CUT_NBR]                    NVARCHAR (12)   NULL,
    [PURCHASE_ORDERS_ID]         BIGINT          NULL,
    [TC_PURCHASE_ORDERS_ID]      NVARCHAR (50)   NULL,
    [PURCHASE_ORDERS_LINE_ID]    BIGINT          NULL,
    [TC_PURCHASE_ORDERS_LINE_ID] NVARCHAR (30)   NULL,
    [HIBERNATE_VERSION]          BIGINT          NULL,
    [INTERNAL_ORDER_ID]          NVARCHAR (10)   NULL,
    [INSTRTN_CODE_1]             NVARCHAR (2)    NULL,
    [INSTRTN_CODE_2]             NVARCHAR (2)    NULL,
    [INSTRTN_CODE_3]             NVARCHAR (2)    NULL,
    [INSTRTN_CODE_4]             NVARCHAR (2)    NULL,
    [INSTRTN_CODE_5]             NVARCHAR (2)    NULL,
    [CREATED_SOURCE_TYPE]        SMALLINT        NOT NULL,
    [CREATED_SOURCE]             NVARCHAR (25)   NULL,
    [CREATED_DTTM]               DATETIME2 (7)   NOT NULL,
    [LAST_UPDATED_SOURCE_TYPE]   SMALLINT        NOT NULL,
    [LAST_UPDATED_SOURCE]        NVARCHAR (25)   NULL,
    [LAST_UPDATED_DTTM]          DATETIME2 (7)   NOT NULL,
    [VENDOR_ITEM_NBR]            NVARCHAR (20)   NULL,
    [MANUFACTURED_PLANT]         NVARCHAR (3)    NULL,
    [BATCH_NBR]                  NVARCHAR (15)   NULL,
    [ASSIGNED_QTY]               NUMERIC (13, 4) NULL,
    [PREPACK_GROUP_CODE]         NVARCHAR (2)    NULL,
    [PACK_CODE]                  SMALLINT        NULL,
    [SHIPPED_QTY]                NUMERIC (13, 4) NULL,
    [INITIAL_QTY]                NUMERIC (13, 4) NULL,
    [QTY_CONV_FACTOR]            NUMERIC (17, 8) NOT NULL,
    [QTY_UOM_ID_BASE]            INT             NULL,
    [WEIGHT_UOM_ID_BASE]         INT             NULL,
    [VOLUME_UOM_ID_BASE]         INT             NULL,
    [ITEM_NAME]                  NVARCHAR (100)  NULL,
    [Eff_Date]                   DATE            NOT NULL,
    [End_Date]                   DATE            NULL,
    [ActInd]                     CHAR (1)        NULL,
    [IsDeleted]                  CHAR (1)        NULL,
    [BatchID]                    BIGINT          NULL,
    [ProcessLogID]               BIGINT          NULL,
    CONSTRAINT [PK_MANH_LPN_DETAIL] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [LPN_DETAIL_ID] ASC) ON [DWH_MANH]
) ON [DWH_MANH];








GO
CREATE NONCLUSTERED INDEX [NI_MANH_LPN_DETAIL_LPN_ID_ACTIND]
    ON [MANH].[LPN_DETAIL]([LPN_ID] ASC, [ActInd] ASC)
    INCLUDE([ITEM_ID], [SIZE_VALUE], [BATCH_NBR]);


GO
CREATE NONCLUSTERED INDEX [NI_MANH_LPN_DETAIL_ITEMID_BATCH_ACT]
    ON [MANH].[LPN_DETAIL]([ITEM_ID] ASC, [BATCH_NBR] ASC, [ActInd] ASC)
    INCLUDE([LPN_ID]);

