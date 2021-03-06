﻿CREATE TABLE [IFS].[MATERIAL_HISTORY] (
    [MATERIAL_HISTORY_ID]        INT             NOT NULL,
    [TRANSACTION_ID]             INT             NULL,
    [TIME_STAMP]                 DATETIME2 (7)   NULL,
    [USER_ID]                    NVARCHAR (30)   NULL,
    [ORDER_REF1]                 NVARCHAR (25)   NULL,
    [ORDER_REF2]                 NVARCHAR (25)   NULL,
    [ORDER_REF3]                 NVARCHAR (25)   NULL,
    [ORDER_REF4]                 NVARCHAR (25)   NULL,
    [PART_NO]                    NVARCHAR (25)   NULL,
    [CONTRACT]                   NVARCHAR (5)    NULL,
    [CONFIGURATION_ID]           NVARCHAR (50)   NULL,
    [LOCATION_NO]                NVARCHAR (35)   NULL,
    [LOT_BATCH_NO]               NVARCHAR (20)   NULL,
    [SERIAL_NO]                  NVARCHAR (50)   NULL,
    [ENG_CHG_LEVEL]              NVARCHAR (2)    NULL,
    [WAIV_DEV_REJ_NO]            NVARCHAR (15)   NULL,
    [ACTIVITY_SEQ]               INT             NULL,
    [EXPECTED_PART_NO]           NVARCHAR (25)   NULL,
    [CONDITION_CODE]             NVARCHAR (10)   NULL,
    [OWNERSHIP]                  NVARCHAR (200)  NULL,
    [OWNERSHIP_DB]               NVARCHAR (20)   NULL,
    [OWNER]                      NVARCHAR (10)   NULL,
    [INVENTORY_QTY]              INT             NULL,
    [INVENTORY_UOM]              NVARCHAR (30)   NULL,
    [CATCH_QTY]                  INT             NULL,
    [CATCH_UOM]                  NVARCHAR (30)   NULL,
    [INPUT_UOM_GROUP_ID]         NVARCHAR (30)   NULL,
    [INPUT_UOM]                  NVARCHAR (30)   NULL,
    [INPUT_QTY]                  INT             NULL,
    [INPUT_VALUE]                NVARCHAR (2000) NULL,
    [MATERIAL_HISTORY_ACTION]    NVARCHAR (200)  NULL,
    [MATERIAL_HISTORY_ACTION_DB] NVARCHAR (20)   NULL,
    [ORDER_TYPE]                 NVARCHAR (200)  NULL,
    [ORDER_TYPE_DB]              NVARCHAR (20)   NULL,
    [REVERSED_SCRAP_QTY]         INT             NULL,
    [OPERATION_NO]               INT             NULL,
    [ASSOC_MATERIAL_HIST_ID]     INT             NULL,
    [REJECT_REASON]              NVARCHAR (8)    NULL,
    [REPORT_POINT_ID]            NVARCHAR (10)   NULL,
    [C_CMS_COUNTER]              INT             NULL,
    [OBJID]                      NVARCHAR (100)  NULL,
    [OBJVERSION]                 BIGINT          NULL,
    [Eff_Date]                   DATE            NOT NULL,
    [End_Date]                   DATE            NULL,
    [ActInd]                     CHAR (1)        NULL,
    [IsDeleted]                  CHAR (1)        NULL,
    [BatchID]                    BIGINT          NULL,
    [ProcessLogID]               BIGINT          NULL,
    CONSTRAINT [PK_MATERIAL_HISTORY] PRIMARY KEY CLUSTERED ([MATERIAL_HISTORY_ID] ASC, [Eff_Date] ASC) ON [DWH_IFS]
) ON [DWH_IFS];





