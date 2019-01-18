﻿CREATE TABLE [IFS_ARC].[INVENTORY_TRANSACTION_HIST] (
    [TRANSACTION_ID]                 INT             NOT NULL,
    [ACCOUNTING_ID]                  INT             NULL,
    [CONTRACT]                       NVARCHAR (5)    NULL,
    [PART_NO]                        NVARCHAR (25)   NULL,
    [CONFIGURATION_ID]               NVARCHAR (50)   NULL,
    [LOCATION_NO]                    NVARCHAR (35)   NULL,
    [LOT_BATCH_NO]                   NVARCHAR (20)   NULL,
    [SERIAL_NO]                      NVARCHAR (50)   NULL,
    [WAIV_DEV_REJ_NO]                NVARCHAR (15)   NULL,
    [ENG_CHG_LEVEL]                  NVARCHAR (2)    NULL,
    [ACTIVITY_SEQ]                   INT             NULL,
    [ORDER_NO]                       NVARCHAR (12)   NULL,
    [RELEASE_NO]                     NVARCHAR (4)    NULL,
    [SEQUENCE_NO]                    NVARCHAR (30)   NULL,
    [LINE_ITEM_NO]                   INT             NULL,
    [REJECT_CODE]                    NVARCHAR (8)    NULL,
    [TRANSACTION]                    NVARCHAR (4000) NULL,
    [PRE_ACCOUNTING_ID]              INT             NULL,
    [COST]                           INT             NULL,
    [DATE_APPLIED]                   DATETIME2 (7)   NULL,
    [DIRECTION]                      NVARCHAR (1)    NULL,
    [ORDER_TYPE]                     NVARCHAR (4000) NULL,
    [ORDER_TYPE_DB]                  NVARCHAR (20)   NULL,
    [PARTSTAT_FLAG]                  NVARCHAR (1)    NULL,
    [QUANTITY]                       INT             NULL,
    [SOURCE]                         NVARCHAR (2000) NULL,
    [USERID]                         NVARCHAR (30)   NULL,
    [VALUESTAT_FLAG]                 NVARCHAR (1)    NULL,
    [QTY_REVERSED]                   INT             NULL,
    [DEL_TYPE]                       NVARCHAR (2)    NULL,
    [TRANSACTION_CODE]               NVARCHAR (10)   NULL,
    [ORIGINAL_TRANSACTION_ID]        INT             NULL,
    [CONDITION_CODE]                 NVARCHAR (10)   NULL,
    [LOCATION_GROUP]                 NVARCHAR (20)   NULL,
    [PART_OWNERSHIP]                 NVARCHAR (4000) NULL,
    [PART_OWNERSHIP_DB]              NVARCHAR (20)   NULL,
    [OWNING_VENDOR_NO]               NVARCHAR (20)   NULL,
    [OWNING_CUSTOMER_NO]             NVARCHAR (20)   NULL,
    [PREVIOUS_PART_OWNERSHIP]        NVARCHAR (4000) NULL,
    [PREVIOUS_PART_OWNERSHIP_DB]     NVARCHAR (20)   NULL,
    [PREVIOUS_OWNING_VENDOR_NO]      NVARCHAR (20)   NULL,
    [PREVIOUS_OWNING_CUSTOMER_NO]    NVARCHAR (20)   NULL,
    [DELIVERY_OVERHEAD]              INT             NULL,
    [EXPIRATION_DATE]                DATETIME2 (7)   NULL,
    [PROJECT_ID]                     NVARCHAR (10)   NULL,
    [CATCH_QUANTITY]                 INT             NULL,
    [CATCH_DIRECTION]                NVARCHAR (1)    NULL,
    [ALT_SOURCE_REF1]                NVARCHAR (50)   NULL,
    [ALT_SOURCE_REF2]                NVARCHAR (50)   NULL,
    [ALT_SOURCE_REF3]                NVARCHAR (50)   NULL,
    [ALT_SOURCE_REF4]                NVARCHAR (50)   NULL,
    [ALT_SOURCE_REF_TYPE]            NVARCHAR (4000) NULL,
    [ALT_SOURCE_REF_TYPE_DB]         NVARCHAR (50)   NULL,
    [INVENTORY_PART_COST_LEVEL]      NVARCHAR (4000) NULL,
    [INVENTORY_PART_COST_LEVEL_DB]   NVARCHAR (50)   NULL,
    [INVENTORY_VALUATION_METHOD]     NVARCHAR (4000) NULL,
    [INVENTORY_VALUATION_METHOD_DB]  NVARCHAR (50)   NULL,
    [PRE_TRANS_LEVEL_QTY_IN_STOCK]   INT             NULL,
    [PRE_TRANS_LEVEL_QTY_IN_TRANSIT] INT             NULL,
    [DATE_CREATED]                   DATETIME2 (7)   NULL,
    [DATE_TIME_CREATED]              DATETIME2 (7)   NULL,
    [PALLET_ID]                      NVARCHAR (10)   NULL,
    [RECEIPT_DATE]                   DATETIME2 (7)   NULL,
    [TRANSACTION_REPORT_ID]          NVARCHAR (30)   NULL,
    [MODIFY_DATE_APPLIED_DATE]       DATETIME2 (7)   NULL,
    [MODIFY_DATE_APPLIED_USER]       NVARCHAR (30)   NULL,
    [TRANSIT_LOCATION_GROUP]         NVARCHAR (20)   NULL,
    [ABNORMAL_DEMAND]                NVARCHAR (4000) NULL,
    [ABNORMAL_DEMAND_DB]             NVARCHAR (20)   NULL,
    [C_CMS_SENT]                     NVARCHAR (5)    NULL,
    [C_CMS_SENT_DATE]                DATETIME2 (7)   NULL,
    [OBJID]                          NVARCHAR (4000) NULL,
    [OBJVERSION]                     NVARCHAR (2000) NULL,
    [Eff_Date]                       DATE            NOT NULL,
    [End_Date]                       DATE            NULL,
    [ActInd]                         CHAR (1)        NULL,
    [IsDeleted]                      CHAR (1)        NULL,
    [BatchID]                        BIGINT          NULL,
    [ProcessLogID]                   BIGINT          NULL,
    CONSTRAINT [PK_INVENTORY_TRANSACTION_HIST] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [TRANSACTION_ID] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];



