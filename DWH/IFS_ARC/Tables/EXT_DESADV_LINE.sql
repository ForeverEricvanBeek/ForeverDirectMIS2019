﻿CREATE TABLE [IFS_ARC].[EXT_DESADV_LINE] (
    [MESSAGE_ID]               INT             NOT NULL,
    [DELNOTE_NO]               NVARCHAR (50)   NOT NULL,
    [SEQUENCE_NO]              INT             NOT NULL,
    [ORDER_NO]                 NVARCHAR (2000) NULL,
    [LINE_NO]                  NVARCHAR (2000) NULL,
    [RELEASE_NO]               NVARCHAR (2000) NULL,
    [PART_NO]                  NVARCHAR (2000) NULL,
    [DESPATCH_QTY]             BIGINT          NULL,
    [SALES_UNIT_MEAS]          NVARCHAR (2000) NULL,
    [SALES_PART_NO]            NVARCHAR (2000) NULL,
    [SUPPLIER_ORDER_NO]        NVARCHAR (2000) NULL,
    [SUPPLIER_LINE_NO]         NVARCHAR (2000) NULL,
    [SUPPLIER_REL_NO]          NVARCHAR (2000) NULL,
    [SUPPLIER_LINE_ITEM_NO]    INT             NULL,
    [ERROR_MESSAGE]            NVARCHAR (2000) NULL,
    [ORDER_LINE_MATCH]         NVARCHAR (4000) NULL,
    [ORDER_LINE_MATCH_DB]      NVARCHAR (20)   NULL,
    [REFERENCE_ID]             NVARCHAR (2000) NULL,
    [LOCATION_NO]              NVARCHAR (2000) NULL,
    [DOCK_CODE]                NVARCHAR (2000) NULL,
    [SUB_DOCK_CODE]            NVARCHAR (2000) NULL,
    [LOT_BATCH_NO]             NVARCHAR (2000) NULL,
    [SERIAL_NO]                NVARCHAR (2000) NULL,
    [WAIV_DEV_REJ_NO]          NVARCHAR (2000) NULL,
    [ENG_CHG_LEVEL]            NVARCHAR (2000) NULL,
    [RECEIPT_NO]               INT             NULL,
    [HANDLING_UNIT_ID]         INT             NULL,
    [PACKAGE_UNIT_ID]          INT             NULL,
    [EXPIRATION_DATE]          DATETIME2 (7)   NULL,
    [GTIN_NO]                  NVARCHAR (14)   NULL,
    [CLASSIFICATION_STANDARD]  NVARCHAR (2000) NULL,
    [CLASSIFICATION_PART_NO]   NVARCHAR (2000) NULL,
    [CLASSIFICATION_UNIT_MEAS] NVARCHAR (2000) NULL,
    [C_MRN]                    NVARCHAR (25)   NULL,
    [C_ATB]                    NVARCHAR (25)   NULL,
    [OBJID]                    NVARCHAR (4000) NULL,
    [OBJVERSION]               NVARCHAR (2000) NULL,
    [OBJSTATE]                 NVARCHAR (20)   NULL,
    [OBJEVENTS]                NVARCHAR (4000) NULL,
    [STATE]                    NVARCHAR (4000) NULL,
    [Eff_Date]                 DATE            NOT NULL,
    [End_Date]                 DATE            NULL,
    [ActInd]                   CHAR (1)        NULL,
    [IsDeleted]                CHAR (1)        NULL,
    [BatchID]                  BIGINT          NULL,
    [ProcessLogID]             BIGINT          NULL,
    CONSTRAINT [PK_EXT_DESADV_LINE] PRIMARY KEY CLUSTERED ([MESSAGE_ID] ASC, [DELNOTE_NO] ASC, [SEQUENCE_NO] ASC, [Eff_Date] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];

