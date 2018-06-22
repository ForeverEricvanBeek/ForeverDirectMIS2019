﻿CREATE TABLE [MANH].[BATCH_HIST_SHIP] (
    [ACCT_RCVBL_ACCT_NBR]      NVARCHAR (10) NULL,
    [ASN_ID]                   INT           NULL,
    [BATCH_HIST_SHIP_ID]       INT           NOT NULL,
    [BATCH_MASTER_ID]          INT           NULL,
    [BATCH_NBR]                NVARCHAR (15) NULL,
    [BOL]                      NVARCHAR (20) NULL,
    [CREATED_DTTM]             DATETIME2 (7) NOT NULL,
    [CREATED_SOURCE]           NVARCHAR (25) NOT NULL,
    [CREATED_SOURCE_TYPE]      SMALLINT      NOT NULL,
    [ITEM_ID]                  INT           NULL,
    [TC_SHIPMENT_ID]           NVARCHAR (50) NULL,
    [MANIF_NBR]                NVARCHAR (20) NULL,
    [LAST_UPDATED_DTTM]        DATETIME2 (7) NOT NULL,
    [LAST_UPDATED_SOURCE]      NVARCHAR (32) NOT NULL,
    [LAST_UPDATED_SOURCE_TYPE] INT           NOT NULL,
    [TC_ORDER_ID]              NVARCHAR (50) NULL,
    [TC_PURCHASE_ORDERS_ID]    NVARCHAR (50) NULL,
    [PRO_NBR]                  NVARCHAR (20) NULL,
    [RETURN_TO_VENDOR]         NVARCHAR (1)  NULL,
    [D_FACILITY_ALIAS_ID]      NVARCHAR (16) NULL,
    [D_FACILITY_NAME]          NVARCHAR (50) NULL,
    [SHIP_VIA]                 NVARCHAR (4)  NULL,
    [BILL_FACILITY_ALIAS_ID]   NVARCHAR (16) NULL,
    [BILL_TO_NAME]             NVARCHAR (50) NULL,
    [VERSION_NBR]              INT           NOT NULL,
    [Eff_Date]                 DATE          NOT NULL,
    [End_Date]                 DATE          NULL,
    [ActInd]                   CHAR (1)      NULL,
    [IsDeleted]                CHAR (1)      NULL,
    [BatchID]                  BIGINT        NULL,
    [ProcessLogID]             BIGINT        NULL,
    CONSTRAINT [PK_MANH_BATCH_HIST_SHIP] PRIMARY KEY CLUSTERED ([BATCH_HIST_SHIP_ID] ASC, [Eff_Date] ASC)
);

