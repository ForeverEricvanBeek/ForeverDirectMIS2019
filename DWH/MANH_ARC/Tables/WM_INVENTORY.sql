﻿CREATE TABLE [MANH_ARC].[WM_INVENTORY] (
    [TC_COMPANY_ID]               INT             NOT NULL,
    [LOCATION_ID]                 NVARCHAR (10)   NULL,
    [TC_LPN_ID]                   NVARCHAR (30)   NULL,
    [TRANSITIONAL_INVENTORY_TYPE] INT             NULL,
    [INVENTORY_TYPE]              NVARCHAR (1)    NULL,
    [PRODUCT_STATUS]              NVARCHAR (3)    NULL,
    [CNTRY_OF_ORGN]               NVARCHAR (4)    NULL,
    [ITEM_ATTR_1]                 NVARCHAR (10)   NULL,
    [ITEM_ATTR_2]                 NVARCHAR (10)   NULL,
    [ITEM_ATTR_3]                 NVARCHAR (10)   NULL,
    [ITEM_ATTR_4]                 NVARCHAR (10)   NULL,
    [ITEM_ATTR_5]                 NVARCHAR (10)   NULL,
    [LOCN_CLASS]                  NVARCHAR (1)    NULL,
    [ALLOCATABLE]                 NVARCHAR (1)    NULL,
    [CREATED_SOURCE]              NVARCHAR (25)   NOT NULL,
    [CREATED_DTTM]                DATETIME2 (7)   NOT NULL,
    [LAST_UPDATED_SOURCE_TYPE]    INT             NOT NULL,
    [LAST_UPDATED_SOURCE]         NVARCHAR (25)   NULL,
    [LAST_UPDATED_DTTM]           DATETIME2 (7)   NOT NULL,
    [INBOUND_OUTBOUND_INDICATOR]  NVARCHAR (1)    NULL,
    [LPN_DETAIL_ID]               INT             NULL,
    [C_FACILITY_ID]               INT             NOT NULL,
    [BATCH_NBR]                   NVARCHAR (15)   NULL,
    [LPN_ID]                      INT             NULL,
    [WM_INVENTORY_ID]             INT             NOT NULL,
    [ON_HAND_QTY]                 NUMERIC (13, 5) NULL,
    [WM_ALLOCATED_QTY]            NUMERIC (13, 5) NULL,
    [TO_BE_FILLED_QTY]            NUMERIC (13, 5) NULL,
    [WM_VERSION_ID]               INT             NOT NULL,
    [CREATED_SOURCE_TYPE]         SMALLINT        NOT NULL,
    [TO_BE_CONSOLIDATED_QTY]      NUMERIC (13, 5) NULL,
    [LOCATION_DTL_ID]             INT             NULL,
    [PACK_QTY]                    NUMERIC (13, 5) NULL,
    [SUB_PACK_QTY]                NUMERIC (13, 5) NULL,
    [ITEM_ID]                     INT             NOT NULL,
    [MARKED_FOR_DELETE]           NVARCHAR (1)    NOT NULL,
    [RECALL_ID]                   INT             NULL,
    [Eff_Date]                    DATE            NOT NULL,
    [End_Date]                    DATE            NULL,
    [ActInd]                      CHAR (1)        NULL,
    [IsDeleted]                   CHAR (1)        NULL,
    [BatchID]                     BIGINT          NULL,
    [ProcessLogID]                BIGINT          NULL,
    [CUMULATIVE_QTY]              NUMERIC (13, 4) NULL,
    CONSTRAINT [PK_MANH_WM_INVENTORY] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [WM_INVENTORY_ID] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];







