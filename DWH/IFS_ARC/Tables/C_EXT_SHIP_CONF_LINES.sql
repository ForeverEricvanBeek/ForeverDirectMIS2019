﻿CREATE TABLE [IFS_ARC].[C_EXT_SHIP_CONF_LINES] (
    [SEQ_ID]                 INT             NOT NULL,
    [APPLICATION_MESSAGE_ID] INT             NULL,
    [SHIPMENT_ID]            INT             NULL,
    [LINE_ITEM_ID]           INT             NULL,
    [ORDER_NO]               NVARCHAR (12)   NULL,
    [LINE_NO]                NVARCHAR (4)    NULL,
    [REL_NO]                 NVARCHAR (4)    NULL,
    [LOT_BATCH_NO]           NVARCHAR (20)   NULL,
    [PART_NO]                NVARCHAR (25)   NULL,
    [QTY_SHIPPED]            INT             NULL,
    [TRANSPORT_ID]           NVARCHAR (25)   NULL,
    [QTY_CANCELLED]          INT             NULL,
    [PRODUCT_STATUS]         NVARCHAR (3)    NULL,
    [HANDLING_UNIT_ID]       NVARCHAR (50)   NULL,
    [PACK_SEQ]               INT             NULL,
    [PACKAGE_UNIT_ID]        NVARCHAR (50)   NULL,
    [GROSS_WEIGHT]           INT             NULL,
    [PARCEL_NO]              NVARCHAR (35)   NULL,
    [QTY_IN_HANDLING_UNIT]   INT             NULL,
    [QTY_IN_PACKAGE_UNIT]    INT             NULL,
    [ERROR_MESSAGE]          NVARCHAR (2000) NULL,
    [CONTAINER_TYPE]         NVARCHAR (200)  NULL,
    [UNIT_ID]                NVARCHAR (50)   NULL,
    [QTY_IN_UNIT_ID]         INT             NULL,
    [OBJID]                  NVARCHAR (4000) NULL,
    [OBJVERSION]             NVARCHAR (14)   NULL,
    [OBJSTATE]               NVARCHAR (4000) NULL,
    [OBJEVENTS]              NVARCHAR (4000) NULL,
    [STATE]                  NVARCHAR (4000) NULL,
    [Eff_Date]               DATE            NOT NULL,
    [End_Date]               DATE            NULL,
    [ActInd]                 CHAR (1)        NULL,
    [IsDeleted]              CHAR (1)        NULL,
    [BatchID]                BIGINT          NULL,
    [ProcessLogID]           BIGINT          NULL,
    CONSTRAINT [PK_C_EXT_SHIP_CONF_LINES] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [SEQ_ID] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];

