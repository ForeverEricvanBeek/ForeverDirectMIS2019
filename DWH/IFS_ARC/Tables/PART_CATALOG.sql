﻿CREATE TABLE [IFS_ARC].[PART_CATALOG] (
    [PART_NO]                       NVARCHAR (25)   NOT NULL,
    [DESCRIPTION]                   NVARCHAR (200)  NULL,
    [INFO_TEXT]                     NVARCHAR (2000) NULL,
    [STD_NAME_ID]                   INT             NULL,
    [UNIT_CODE]                     NVARCHAR (30)   NULL,
    [LU_NAME]                       NVARCHAR (11)   NULL,
    [KEY_REF]                       NVARCHAR (600)  NULL,
    [LOT_TRACKING_CODE]             NVARCHAR (4000) NULL,
    [LOT_TRACKING_CODE_DB]          NVARCHAR (30)   NULL,
    [SERIAL_RULE]                   NVARCHAR (4000) NULL,
    [SERIAL_RULE_DB]                NVARCHAR (20)   NULL,
    [SERIAL_TRACKING_CODE]          NVARCHAR (4000) NULL,
    [SERIAL_TRACKING_CODE_DB]       NVARCHAR (30)   NULL,
    [ENG_SERIAL_TRACKING_CODE]      NVARCHAR (4000) NULL,
    [ENG_SERIAL_TRACKING_CODE_DB]   NVARCHAR (20)   NULL,
    [PART_MAIN_GROUP]               NVARCHAR (1)    NULL,
    [CONFIGURABLE]                  NVARCHAR (4000) NULL,
    [CONFIGURABLE_DB]               NVARCHAR (20)   NULL,
    [CUST_WARRANTY_ID]              INT             NULL,
    [SUP_WARRANTY_ID]               INT             NULL,
    [CONDITION_CODE_USAGE]          NVARCHAR (4000) NULL,
    [CONDITION_CODE_USAGE_DB]       NVARCHAR (20)   NULL,
    [SUB_LOT_RULE]                  NVARCHAR (4000) NULL,
    [SUB_LOT_RULE_DB]               NVARCHAR (20)   NULL,
    [LOT_QUANTITY_RULE]             NVARCHAR (4000) NULL,
    [LOT_QUANTITY_RULE_DB]          NVARCHAR (20)   NULL,
    [POSITION_PART]                 NVARCHAR (4000) NULL,
    [POSITION_PART_DB]              NVARCHAR (20)   NULL,
    [INPUT_UNIT_MEAS_GROUP_ID]      NVARCHAR (30)   NULL,
    [CATCH_UNIT_ENABLED]            NVARCHAR (4000) NULL,
    [CATCH_UNIT_ENABLED_DB]         NVARCHAR (5)    NULL,
    [MULTILEVEL_TRACKING]           NVARCHAR (4000) NULL,
    [MULTILEVEL_TRACKING_DB]        NVARCHAR (20)   NULL,
    [COMPONENT_LOT_RULE]            NVARCHAR (4000) NULL,
    [COMPONENT_LOT_RULE_DB]         NVARCHAR (20)   NULL,
    [TEXT_ID$]                      NVARCHAR (100)  NULL,
    [GTIN_STATE_MODIFIED]           DATETIME2 (7)   NULL,
    [ACTIVE_GTIN]                   NVARCHAR (4000) NULL,
    [ACTIVE_GTIN_DB]                NVARCHAR (20)   NULL,
    [AUTO_CREATED_GTIN]             NVARCHAR (4000) NULL,
    [AUTO_CREATED_GTIN_DB]          NVARCHAR (20)   NULL,
    [GTIN_NO]                       NVARCHAR (14)   NULL,
    [GTIN_SERIES]                   NVARCHAR (4000) NULL,
    [GTIN_SERIES_DB]                NVARCHAR (20)   NULL,
    [STOP_ARRIVAL_ISSUED_SERIAL]    NVARCHAR (4000) NULL,
    [STOP_ARRIVAL_ISSUED_SERIAL_DB] NVARCHAR (5)    NULL,
    [WEIGHT_NET]                    DECIMAL (18, 4) NULL,
    [UOM_FOR_WEIGHT_NET]            NVARCHAR (30)   NULL,
    [VOLUME_NET]                    DECIMAL (18, 2) NULL,
    [UOM_FOR_VOLUME_NET]            NVARCHAR (30)   NULL,
    [FREIGHT_FACTOR]                INT             NULL,
    [ALLOW_AS_NOT_CONSUMED]         NVARCHAR (4000) NULL,
    [ALLOW_AS_NOT_CONSUMED_DB]      NVARCHAR (5)    NULL,
    [OBJID]                         NVARCHAR (4000) NULL,
    [OBJVERSION]                    NVARCHAR (2000) NULL,
    [Eff_Date]                      DATE            NOT NULL,
    [End_Date]                      DATE            NULL,
    [ActInd]                        CHAR (1)        NULL,
    [IsDeleted]                     CHAR (1)        NULL,
    [BatchID]                       BIGINT          NULL,
    [ProcessLogID]                  BIGINT          NULL,
    CONSTRAINT [PK_PART_CATALOG] PRIMARY KEY CLUSTERED ([PART_NO] ASC, [Eff_Date] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];





