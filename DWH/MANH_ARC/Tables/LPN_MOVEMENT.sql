﻿CREATE TABLE [MANH_ARC].[LPN_MOVEMENT] (
    [TC_COMPANY_ID]            INT           NULL,
    [LPN_MOVEMENT_ID]          INT           NOT NULL,
    [SEQUENCE]                 INT           NULL,
    [TC_LPN_ID]                NVARCHAR (50) NULL,
    [LPN_ID]                   INT           NOT NULL,
    [PARENT_LPN_ID]            INT           NULL,
    [O_FACILITY_ALIAS_ID]      NVARCHAR (16) NULL,
    [O_FACILITY_ID]            INT           NULL,
    [D_FACILITY_ALIAS_ID]      NVARCHAR (16) NULL,
    [D_FACILITY_ID]            INT           NULL,
    [SHIPPED_DTTM]             DATETIME2 (7) NULL,
    [RCVD_DTTM]                DATETIME2 (7) NULL,
    [TC_SHIPMENT_ID]           NVARCHAR (50) NULL,
    [SHIPMENT_ID]              INT           NULL,
    [TC_ASN_ID]                NVARCHAR (50) NULL,
    [ASN_ID]                   INT           NULL,
    [PURCHASE_ORDERS_ID]       INT           NULL,
    [TC_PURCHASE_ORDERS_ID]    NVARCHAR (50) NULL,
    [ORDER_ID]                 INT           NULL,
    [TC_ORDER_ID]              NVARCHAR (50) NULL,
    [EXT_CREATED_DTTM]         DATETIME2 (7) NULL,
    [CREATED_SOURCE_TYPE]      INT           NOT NULL,
    [CREATED_SOURCE]           NVARCHAR (25) NULL,
    [CREATED_DTTM]             DATETIME2 (7) NOT NULL,
    [LAST_UPDATED_SOURCE_TYPE] INT           NOT NULL,
    [LAST_UPDATED_SOURCE]      NVARCHAR (25) NULL,
    [LAST_UPDATED_DTTM]        DATETIME2 (7) NOT NULL,
    [Eff_Date]                 DATE          NOT NULL,
    [End_Date]                 DATE          NULL,
    [ActInd]                   CHAR (1)      NULL,
    [IsDeleted]                CHAR (1)      NULL,
    [BatchID]                  BIGINT        NULL,
    [ProcessLogID]             BIGINT        NULL,
    CONSTRAINT [PK_MANH_LPN_MOVEMENT] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [LPN_MOVEMENT_ID] ASC) WITH (FILLFACTOR = 90) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];





