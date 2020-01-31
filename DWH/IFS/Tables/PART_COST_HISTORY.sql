﻿CREATE TABLE [IFS].[PART_COST_HISTORY] (
    [CONTRACT]                      NVARCHAR (5)    NOT NULL,
    [PART_NO]                       NVARCHAR (25)   NOT NULL,
    [HISTORY_SEQ_NO]                INT             NOT NULL,
    [CONFIGURATION_ID]              NVARCHAR (50)   NOT NULL,
    [CALCULATION_DATE]              DATETIME2 (7)   NULL,
    [EFFECTIVE_DATE]                DATETIME2 (7)   NULL,
    [APPROVER_ID]                   NVARCHAR (35)   NULL,
    [APPROVE_DATE]                  DATETIME2 (7)   NULL,
    [COST_ESTIMATOR_ID]             NVARCHAR (20)   NULL,
    [TOTAL_ACCUM_COST]              DECIMAL (18, 8) NULL,
    [FIXED_ACCUM_COST]              DECIMAL (18, 8) NULL,
    [FIXED_LEVEL_COST]              DECIMAL (18, 8) NULL,
    [VARIABLE_ACCUM_COST]           DECIMAL (18, 8) NULL,
    [TOTAL_LEVEL_COST]              DECIMAL (18, 8) NULL,
    [VARIABLE_LEVEL_COST]           DECIMAL (18, 8) NULL,
    [INDIRECT_ACCUM_COST]           DECIMAL (18, 8) NULL,
    [INDIRECT_LEVEL_COST]           DECIMAL (18, 8) NULL,
    [DIRECT_ACCUM_COST]             DECIMAL (18, 8) NULL,
    [DIRECT_LEVEL_COST]             DECIMAL (18, 8) NULL,
    [SUNK_ACCUM_COST]               DECIMAL (18, 8) NULL,
    [SUNK_LEVEL_COST]               DECIMAL (18, 8) NULL,
    [RELEVANT_ACCUM_COST]           DECIMAL (18, 8) NULL,
    [RELEVANT_LEVEL_COST]           DECIMAL (18, 8) NULL,
    [VALUE_ADDED_LEVEL_COST]        DECIMAL (18, 8) NULL,
    [NON_VALUE_ADDED_LEVEL_COST]    DECIMAL (18, 8) NULL,
    [SUPPORTIVE_ACT_LEVEL_COST]     DECIMAL (18, 8) NULL,
    [UNIT_RELATED_LEVEL_COST]       DECIMAL (18, 8) NULL,
    [BATCH_RELATED_LEVEL_COST]      DECIMAL (18, 8) NULL,
    [PRODUCT_RELATED_LEVEL_COST]    DECIMAL (18, 8) NULL,
    [FACILITY_SUST_LEVEL_COST]      DECIMAL (18, 8) NULL,
    [VALUE_ADDED_ACCUM_COST]        DECIMAL (18, 8) NULL,
    [NON_VALUE_ADDED_ACCUM_COST]    DECIMAL (18, 8) NULL,
    [SUPPORTIVE_ACT_ACCUM_COST]     DECIMAL (18, 8) NULL,
    [UNIT_RELATED_ACCUM_COST]       DECIMAL (18, 8) NULL,
    [BATCH_RELATED_ACCUM_COST]      DECIMAL (18, 8) NULL,
    [PRODUCT_RELATED_ACCUM_COST]    DECIMAL (18, 8) NULL,
    [FACILITY_SUST_ACCUM_COST]      DECIMAL (18, 8) NULL,
    [NOTE_TEXT]                     NVARCHAR (2000) NULL,
    [ESTIMATED_MATERIAL_COST]       DECIMAL (18, 8) NULL,
    [AVERAGE_PURCHASE_PRICE]        DECIMAL (18, 8) NULL,
    [LATEST_PURCHASE_PRICE]         DECIMAL (18, 8) NULL,
    [PART_COST_GROUP_ID]            NVARCHAR (5)    NULL,
    [EFFECTIVE_SERIAL_NO]           DECIMAL (18, 8) NULL,
    [COST_TEMPLATE_ID]              NVARCHAR (5)    NULL,
    [DATE_ENTERED]                  DATETIME2 (7)   NULL,
    [COPY_DATE]                     DATETIME2 (7)   NULL,
    [STOP_COST_ROLL]                NVARCHAR (4000) NULL,
    [STOP_COST_ROLL_DB]             NVARCHAR (20)   NULL,
    [ROLLED_UP_FLAG]                NVARCHAR (4000) NULL,
    [ROLLED_UP_FLAG_DB]             NVARCHAR (20)   NULL,
    [END_ITEM]                      NVARCHAR (4000) NULL,
    [END_ITEM_DB]                   NVARCHAR (20)   NULL,
    [COST_CALCULATION_STATUS]       NVARCHAR (4000) NULL,
    [COST_CALCULATION_STATUS_DB]    NVARCHAR (20)   NULL,
    [LEVEL_SCRAP_COST]              DECIMAL (18, 8) NULL,
    [ACCUM_SCRAP_COST]              DECIMAL (18, 8) NULL,
    [EXTERNAL_SITE_MTRL_PERCENTAGE] INT             NULL,
    [SUPPLY_SITE_MTRL_PERCENTAGE]   INT             NULL,
    [USED_PERCENT_MANUF]            INT             NULL,
    [USED_PERCENT_ACQUIRED]         INT             NULL,
    [STD_ORDER_SIZE]                INT             NULL,
    [COST_SET_EST_MTRL_COST]        DECIMAL (18, 8) NULL,
    [STANDARD_SALES_QTY]            INT             NULL,
    [LEVEL_SALES_COST]              DECIMAL (18, 8) NULL,
    [TOTAL_SALES_COST]              DECIMAL (18, 8) NULL,
    [OBJID]                         NVARCHAR (4000) NULL,
    [OBJVERSION]                    NVARCHAR (2000) NULL,
    [Eff_Date]                      DATE            NOT NULL,
    [End_Date]                      DATE            NULL,
    [ActInd]                        CHAR (1)        NULL,
    [IsDeleted]                     CHAR (1)        NULL,
    [BatchID]                       BIGINT          NULL,
    [ProcessLogID]                  BIGINT          NULL,
    CONSTRAINT [PK_PART_COST_HISTORY] PRIMARY KEY CLUSTERED ([PART_NO] ASC, [CONTRACT] ASC, [HISTORY_SEQ_NO] ASC, [CONFIGURATION_ID] ASC, [Eff_Date] ASC) ON [DWH_IFS]
) ON [DWH_IFS];

