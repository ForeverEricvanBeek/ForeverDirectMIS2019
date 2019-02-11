﻿CREATE TABLE [IFS].[INVENTORY_PART] (
    [CONTRACT]                      NVARCHAR (5)    NOT NULL,
    [PART_NO]                       NVARCHAR (25)   NOT NULL,
    [ACCOUNTING_GROUP]              NVARCHAR (5)    NULL,
    [ASSET_CLASS]                   NVARCHAR (2)    NULL,
    [COUNTRY_OF_ORIGIN]             NVARCHAR (2)    NULL,
    [HAZARD_CODE]                   NVARCHAR (6)    NULL,
    [NOTE_ID]                       INT             NULL,
    [ESTIMATED_MATERIAL_COST]       DECIMAL (18, 2) NULL,
    [PART_PRODUCT_CODE]             NVARCHAR (5)    NULL,
    [PART_PRODUCT_FAMILY]           NVARCHAR (5)    NULL,
    [PART_STATUS]                   NVARCHAR (1)    NULL,
    [PLANNER_BUYER]                 NVARCHAR (20)   NULL,
    [PRIME_COMMODITY]               NVARCHAR (5)    NULL,
    [SECOND_COMMODITY]              NVARCHAR (5)    NULL,
    [UNIT_MEAS]                     NVARCHAR (10)   NULL,
    [CATCH_UNIT_MEAS]               NVARCHAR (30)   NULL,
    [DESCRIPTION]                   NVARCHAR (200)  NULL,
    [DESCRIPTION_COPY]              NVARCHAR (200)  NULL,
    [ABC_CLASS]                     NVARCHAR (1)    NULL,
    [COUNT_VARIANCE]                INT             NULL,
    [CREATE_DATE]                   DATETIME2 (7)   NULL,
    [CYCLE_CODE]                    NVARCHAR (200)  NULL,
    [CYCLE_CODE_DB]                 NVARCHAR (20)   NULL,
    [CYCLE_PERIOD]                  INT             NULL,
    [DIM_QUALITY]                   NVARCHAR (25)   NULL,
    [DURABILITY_DAY]                INT             NULL,
    [EXPECTED_LEADTIME]             INT             NULL,
    [LAST_ACTIVITY_DATE]            DATETIME2 (7)   NULL,
    [LEAD_TIME_CODE]                NVARCHAR (200)  NULL,
    [LEAD_TIME_CODE_DB]             NVARCHAR (20)   NULL,
    [MANUF_LEADTIME]                INT             NULL,
    [NOTE_TEXT]                     NVARCHAR (2000) NULL,
    [OE_ALLOC_ASSIGN_FLAG]          NVARCHAR (200)  NULL,
    [OE_ALLOC_ASSIGN_FLAG_DB]       NVARCHAR (20)   NULL,
    [ONHAND_ANALYSIS_FLAG]          NVARCHAR (200)  NULL,
    [ONHAND_ANALYSIS_FLAG_DB]       NVARCHAR (20)   NULL,
    [PURCH_LEADTIME]                INT             NULL,
    [SUPERSEDED_BY]                 NVARCHAR (25)   NULL,
    [SUPERSEDES]                    NVARCHAR (25)   NULL,
    [SUPPLY_CODE]                   NVARCHAR (200)  NULL,
    [SUPPLY_CODE_DB]                NVARCHAR (20)   NULL,
    [TYPE_CODE]                     NVARCHAR (200)  NULL,
    [TYPE_CODE_DB]                  NVARCHAR (20)   NULL,
    [CUSTOMS_STAT_NO]               NVARCHAR (10)   NULL,
    [TYPE_DESIGNATION]              NVARCHAR (25)   NULL,
    [ZERO_COST_FLAG]                NVARCHAR (200)  NULL,
    [ZERO_COST_FLAG_DB]             NVARCHAR (20)   NULL,
    [AVAIL_ACTIVITY_STATUS]         NVARCHAR (200)  NULL,
    [AVAIL_ACTIVITY_STATUS_DB]      NVARCHAR (20)   NULL,
    [ENG_ATTRIBUTE]                 NVARCHAR (5)    NULL,
    [SHORTAGE_FLAG]                 NVARCHAR (200)  NULL,
    [SHORTAGE_FLAG_DB]              NVARCHAR (20)   NULL,
    [FORECAST_CONSUMPTION_FLAG]     NVARCHAR (200)  NULL,
    [FORECAST_CONSUMPTION_FLAG_DB]  NVARCHAR (20)   NULL,
    [STOCK_MANAGEMENT]              NVARCHAR (200)  NULL,
    [STOCK_MANAGEMENT_DB]           NVARCHAR (20)   NULL,
    [INTRASTAT_CONV_FACTOR]         INT             NULL,
    [PART_COST_GROUP_ID]            NVARCHAR (5)    NULL,
    [DOP_CONNECTION]                NVARCHAR (200)  NULL,
    [DOP_CONNECTION_DB]             NVARCHAR (20)   NULL,
    [STD_NAME_ID]                   INT             NULL,
    [INVENTORY_VALUATION_METHOD]    NVARCHAR (200)  NULL,
    [INVENTORY_VALUATION_METHOD_DB] NVARCHAR (20)   NULL,
    [NEGATIVE_ON_HAND]              NVARCHAR (200)  NULL,
    [NEGATIVE_ON_HAND_DB]           NVARCHAR (20)   NULL,
    [TECHNICAL_COORDINATOR_ID]      NVARCHAR (20)   NULL,
    [INVOICE_CONSIDERATION]         NVARCHAR (200)  NULL,
    [INVOICE_CONSIDERATION_DB]      NVARCHAR (20)   NULL,
    [ACTUAL_COST_ACTIVATED]         DATETIME2 (7)   NULL,
    [MAX_ACTUAL_COST_UPDATE]        INT             NULL,
    [CUST_WARRANTY_ID]              INT             NULL,
    [SUP_WARRANTY_ID]               INT             NULL,
    [REGION_OF_ORIGIN]              NVARCHAR (10)   NULL,
    [INVENTORY_PART_COST_LEVEL]     NVARCHAR (200)  NULL,
    [INVENTORY_PART_COST_LEVEL_DB]  NVARCHAR (20)   NULL,
    [EXT_SERVICE_COST_METHOD]       NVARCHAR (200)  NULL,
    [EXT_SERVICE_COST_METHOD_DB]    NVARCHAR (20)   NULL,
    [SUPPLY_CHAIN_PART_GROUP]       NVARCHAR (20)   NULL,
    [AUTOMATIC_CAPABILITY_CHECK]    NVARCHAR (200)  NULL,
    [AUTOMATIC_CAPABILITY_CHECK_DB] NVARCHAR (20)   NULL,
    [INPUT_UNIT_MEAS_GROUP_ID]      NVARCHAR (30)   NULL,
    [DOP_NETTING]                   NVARCHAR (200)  NULL,
    [DOP_NETTING_DB]                NVARCHAR (20)   NULL,
    [CO_RESERVE_ONH_ANALYS_FLAG]    NVARCHAR (200)  NULL,
    [CO_RESERVE_ONH_ANALYS_FLAG_DB] NVARCHAR (20)   NULL,
    [QTY_CALC_ROUNDING]             INT             NULL,
    [TEXT_ID$]                      NVARCHAR (100)  NULL,
    [LIFECYCLE_STAGE]               NVARCHAR (200)  NULL,
    [LIFECYCLE_STAGE_DB]            NVARCHAR (20)   NULL,
    [FREQUENCY_CLASS]               NVARCHAR (200)  NULL,
    [FREQUENCY_CLASS_DB]            NVARCHAR (20)   NULL,
    [FIRST_STAT_ISSUE_DATE]         DATETIME2 (7)   NULL,
    [LATEST_STAT_ISSUE_DATE]        DATETIME2 (7)   NULL,
    [GTIN_NO]                       NVARCHAR (14)   NULL,
    [GTIN_SERIES]                   NVARCHAR (200)  NULL,
    [GTIN_SERIES_DB]                NVARCHAR (20)   NULL,
    [MIN_DURAB_DAYS_CO_DELIV]       INT             NULL,
    [AUTO_CREATED_GTIN]             NVARCHAR (5)    NULL,
    [INTFACE_DATE]                  DATETIME2 (7)   NULL,
    [C_DATE_SENT_TO_CMS]            DATETIME2 (7)   NULL,
    [OBJID]                         NVARCHAR (100)  NULL,
    [OBJVERSION]                    BIGINT          NULL,
    [Eff_Date]                      DATE            NOT NULL,
    [End_Date]                      DATE            NULL,
    [ActInd]                        CHAR (1)        NULL,
    [IsDeleted]                     CHAR (1)        NULL,
    [BatchID]                       BIGINT          NULL,
    [ProcessLogID]                  BIGINT          NULL,
    CONSTRAINT [PK_INVENTORY_PART] PRIMARY KEY CLUSTERED ([CONTRACT] ASC, [PART_NO] ASC, [Eff_Date] ASC) WITH (FILLFACTOR = 95) ON [DWH_IFS]
) ON [DWH_IFS];







