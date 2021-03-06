﻿CREATE TABLE [IFS].[EXT_DESADV_PALLET] (
    [MESSAGE_ID]            INT             NULL,
    [DELNOTE_NO]            NVARCHAR (50)   NULL,
    [SEQUENCE_NO]           INT             NULL,
    [HANDLING_UNIT_ID]      INT             NULL,
    [HANDLING_UNIT_QTY]     BIGINT          NULL,
    [NO_OF_PACKAGES]        INT             NULL,
    [NET_WEIGHT]            INT             NULL,
    [TARE_WEIGHT]           INT             NULL,
    [HANDLING_UNIT_TYPE]    NVARCHAR (2000) NULL,
    [PALLET_TYPE]           NVARCHAR (2000) NULL,
    [SUPPLIER_ORDER_NO]     NVARCHAR (2000) NULL,
    [SUPPLIER_LINE_NO]      NVARCHAR (2000) NULL,
    [SUPPLIER_REL_NO]       NVARCHAR (2000) NULL,
    [SUPPLIER_LINE_ITEM_NO] INT             NULL,
    [ENG_CHG_LEVEL]         NVARCHAR (2000) NULL,
    [LOT_BATCH_NO]          NVARCHAR (2000) NULL,
    [SERIAL_NO]             NVARCHAR (2000) NULL,
    [WAIV_DEV_REJ_NO]       NVARCHAR (15)   NULL,
    [SSCC]                  NVARCHAR (2000) NULL,
    [C_TRANSPORT_TYPE]      NVARCHAR (30)   NULL,
    [C_TRANSPORT_ID]        NVARCHAR (25)   NULL,
    [C_PARCEL_NO]           NVARCHAR (50)   NULL,
    [OBJID]                 NVARCHAR (4000) NULL,
    [OBJVERSION]            NVARCHAR (2000) NULL,
    [BatchID]               BIGINT          NULL,
    [ProcessLogID]          BIGINT          NULL
);



