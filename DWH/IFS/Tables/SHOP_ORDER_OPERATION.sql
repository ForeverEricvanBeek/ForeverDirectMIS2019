﻿CREATE TABLE [IFS].[SHOP_ORDER_OPERATION] (
    [ORDER_NO]                  NVARCHAR (12)   NOT NULL,
    [RELEASE_NO]                NVARCHAR (4)    NOT NULL,
    [SEQUENCE_NO]               NVARCHAR (4)    NOT NULL,
    [OPERATION_NO]              INT             NOT NULL,
    [OPERATION_DESCRIPTION]     NVARCHAR (35)   NULL,
    [EFFICIENCY_FACTOR]         INT             NULL,
    [MACH_RUN_FACTOR]           INT             NULL,
    [MACH_SETUP_TIME]           DECIMAL (18, 2) NULL,
    [MOVE_TIME]                 INT             NULL,
    [QUEUE_TIME]                INT             NULL,
    [CBS_QUEUE_TIME]            INT             NULL,
    [LABOR_RUN_FACTOR]          INT             NULL,
    [LABOR_SETUP_TIME]          INT             NULL,
    [CREW_SIZE]                 INT             NULL,
    [OUTSIDE_OP_ITEM]           NVARCHAR (25)   NULL,
    [OP_START_DATE]             DATETIME2 (7)   NULL,
    [OP_START_TIME]             INT             NULL,
    [OP_FINISH_DATE]            DATETIME2 (7)   NULL,
    [OP_FINISH_TIME]            INT             NULL,
    [REVISED_QTY_DUE]           INT             NULL,
    [QTY_COMPLETE]              INT             NULL,
    [QTY_SCRAPPED]              INT             NULL,
    [REPORTED_MACH_SETUP_TIME]  INT             NULL,
    [REPORTED_MACH_TIME]        INT             NULL,
    [REPORTED_QTY]              INT             NULL,
    [REPORTED_SCRAP_QTY]        INT             NULL,
    [REPORTED_SCRAP_CATCH_QTY]  INT             NULL,
    [REPORTED_SCRAP_REASON]     NVARCHAR (25)   NULL,
    [REPORTED_LABOR_SETUP_TIME] INT             NULL,
    [REPORTED_LABOR_TIME]       INT             NULL,
    [CLIENT_TRANSACTION_TYPE]   NVARCHAR (25)   NULL,
    [MANUFACTURING_COST]        INT             NULL,
    [OP_ID]                     INT             NULL,
    [RESOURCE_ID]               NVARCHAR (5)    NULL,
    [MACHINE_NO]                NVARCHAR (15)   NULL,
    [NOTE_ID]                   INT             NULL,
    [NOTE_TEXT]                 NVARCHAR (2000) NULL,
    [SOURCE]                    NVARCHAR (25)   NULL,
    [LAST_ACTIVITY_DATE]        DATETIME2 (7)   NULL,
    [CAPACITY_FLAG]             NVARCHAR (200)  NULL,
    [CAPACITY_FLAG_DB]          NVARCHAR (20)   NULL,
    [SCHED_DIRECTION]           NVARCHAR (200)  NULL,
    [SCHED_DIRECTION_DB]        NVARCHAR (20)   NULL,
    [OPER_STATUS_CODE]          NVARCHAR (200)  NULL,
    [OPER_STATUS_CODE_DB]       NVARCHAR (20)   NULL,
    [RUN_TIME_CODE]             NVARCHAR (200)  NULL,
    [RUN_TIME_CODE_DB]          NVARCHAR (20)   NULL,
    [CONTRACT]                  NVARCHAR (5)    NULL,
    [WORK_CENTER_NO]            NVARCHAR (5)    NULL,
    [PART_NO]                   NVARCHAR (25)   NULL,
    [LABOR_CLASS_NO]            NVARCHAR (10)   NULL,
    [PARALLEL_OPERATION]        NVARCHAR (200)  NULL,
    [PARALLEL_OPERATION_DB]     NVARCHAR (20)   NULL,
    [OUTSIDE_QTY_SHIPPED]       INT             NULL,
    [BUFFER_TIME]               INT             NULL,
    [OPERATION_SCHED_STATUS]    NVARCHAR (200)  NULL,
    [OPERATION_SCHED_STATUS_DB] NVARCHAR (20)   NULL,
    [LABOR_CAPACITY]            NVARCHAR (200)  NULL,
    [LABOR_CAPACITY_DB]         NVARCHAR (20)   NULL,
    [SCHEDULED_SETUP_TIME]      INT             NULL,
    [BARCODE_ID]                NVARCHAR (20)   NULL,
    [OUTSIDE_OP_COMPLETE]       NVARCHAR (1)    NULL,
    [OUTSIDE_OP_NOTES]          NVARCHAR (2000) NULL,
    [OUTSIDE_OP_BACKFLUSH]      NVARCHAR (200)  NULL,
    [OUTSIDE_OP_BACKFLUSH_DB]   NVARCHAR (20)   NULL,
    [OUTSIDE_OP_SUPPLY_TYPE]    NVARCHAR (200)  NULL,
    [OUTSIDE_OP_SUPPLY_TYPE_DB] NVARCHAR (20)   NULL,
    [OVERLAP]                   INT             NULL,
    [OVERLAP_UNIT]              NVARCHAR (200)  NULL,
    [OVERLAP_UNIT_DB]           NVARCHAR (20)   NULL,
    [OPERATION_PRIORITY]        INT             NULL,
    [REPLICATE_CHANGES]         NVARCHAR (2000) NULL,
    [OBJID]                     NVARCHAR (100)  NULL,
    [OBJVERSION]                BIGINT          NULL,
    [Eff_Date]                  DATE            NOT NULL,
    [End_Date]                  DATE            NULL,
    [ActInd]                    CHAR (1)        NULL,
    [IsDeleted]                 CHAR (1)        NULL,
    [BatchID]                   BIGINT          NULL,
    [ProcessLogID]              BIGINT          NULL,
    CONSTRAINT [PK_SHOP_ORDER_OPERATION] PRIMARY KEY CLUSTERED ([ORDER_NO] ASC, [RELEASE_NO] ASC, [SEQUENCE_NO] ASC, [OPERATION_NO] ASC, [Eff_Date] ASC) ON [DWH_IFS]
) ON [DWH_IFS];











