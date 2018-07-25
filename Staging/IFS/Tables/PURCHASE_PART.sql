﻿CREATE TABLE [IFS].[PURCHASE_PART] (
    [CONTRACT]                     NVARCHAR (5)    NOT NULL,
    [PART_NO]                      NVARCHAR (25)   NOT NULL,
    [DESCRIPTION]                  NVARCHAR (200)  NULL,
    [ENG_ATTRIBUTE]                NVARCHAR (5)    NULL,
    [NOTE_ID]                      INT             NULL,
    [QC_CODE]                      NVARCHAR (20)   NULL,
    [STAT_GRP]                     NVARCHAR (6)    NULL,
    [CLOSE_CODE]                   NVARCHAR (4000) NULL,
    [CLOSE_CODE_DB]                NVARCHAR (1)    NULL,
    [CLOSE_TOLERANCE]              INT             NULL,
    [DATE_CRE]                     DATETIME2 (7)   NULL,
    [INVENTORY_FLAG]               NVARCHAR (4000) NULL,
    [INVENTORY_FLAG_DB]            NVARCHAR (1)    NULL,
    [NOTE_TEXT]                    NVARCHAR (2000) NULL,
    [QC_DATE]                      DATETIME2 (7)   NULL,
    [DEFAULT_BUY_UNIT_MEAS]        NVARCHAR (10)   NULL,
    [OVER_DELIVERY_TOLERANCE]      INT             NULL,
    [OVER_DELIVERY]                NVARCHAR (4000) NULL,
    [OVER_DELIVERY_DB]             NVARCHAR (20)   NULL,
    [BUYER_CODE]                   NVARCHAR (20)   NULL,
    [PROCESS_TYPE]                 NVARCHAR (3)    NULL,
    [STD_NAME_ID]                  INT             NULL,
    [STD_NAME_DESCRIPTION]         NVARCHAR (25)   NULL,
    [STANDARD_PACK_SIZE]           INT             NULL,
    [TECHNICAL_COORDINATOR_ID]     NVARCHAR (4000) NULL,
    [TAXABLE]                      NVARCHAR (4000) NULL,
    [TAXABLE_DB]                   NVARCHAR (5)    NULL,
    [DOP_PEGGED_PO_UPDATE_FLAG]    NVARCHAR (4000) NULL,
    [DOP_PEGGED_PO_UPDATE_FLAG_DB] NVARCHAR (20)   NULL,
    [TEXT_ID$]                     NVARCHAR (50)   NULL,
    [GTIN_NO]                      NVARCHAR (14)   NULL,
    [GTIN_SERIES]                  NVARCHAR (4000) NULL,
    [GTIN_SERIES_DB]               NVARCHAR (20)   NULL,
    [OBJID]                        NVARCHAR (4000) NULL,
    [OBJVERSION]                   NVARCHAR (2000) NULL,
    [BatchID]                      BIGINT          NULL,
    [ProcessLogID]                 BIGINT          NULL
);

