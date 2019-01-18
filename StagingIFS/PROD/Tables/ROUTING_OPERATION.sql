﻿CREATE TABLE [PROD].[ROUTING_OPERATION] (
    [CONTRACT]                  NVARCHAR (5)    NOT NULL,
    [PART_NO]                   NVARCHAR (25)   NOT NULL,
    [ROUTING_REVISION]          NVARCHAR (4)    NOT NULL,
    [BOM_TYPE]                  NVARCHAR (4000) NULL,
    [BOM_TYPE_DB]               NVARCHAR (20)   NOT NULL,
    [ALTERNATIVE_NO]            NVARCHAR (20)   NOT NULL,
    [OPERATION_ID]              INT             NOT NULL,
    [OPERATION_NO]              INT             NULL,
    [OPERATION_DESCRIPTION]     NVARCHAR (35)   NULL,
    [PHASE_IN_DATE]             DATETIME2 (7)   NULL,
    [PHASE_OUT_DATE]            DATETIME2 (7)   NULL,
    [LOT_QTY]                   INT             NULL,
    [EFFICIENCY_FACTOR]         INT             NULL,
    [MACH_RUN_FACTOR]           INT             NULL,
    [MACH_SETUP_TIME]           DECIMAL (18, 2) NULL,
    [MOVE_TIME]                 INT             NULL,
    [LABOR_RUN_FACTOR]          INT             NULL,
    [LABOR_SETUP_TIME]          INT             NULL,
    [CREW_SIZE]                 INT             NULL,
    [OUTSIDE_OP_ITEM]           NVARCHAR (25)   NULL,
    [MACHINE_NO]                NVARCHAR (15)   NULL,
    [NOTE_ID]                   INT             NULL,
    [NOTE_TEXT]                 NVARCHAR (2000) NULL,
    [SOURCE]                    NVARCHAR (25)   NULL,
    [CREATE_DATE]               DATETIME2 (7)   NULL,
    [LAST_ACTIVITY_DATE]        DATETIME2 (7)   NULL,
    [PARALLEL_OPERATION]        NVARCHAR (4000) NULL,
    [PARALLEL_OPERATION_DB]     NVARCHAR (20)   NULL,
    [RUN_TIME_CODE]             NVARCHAR (4000) NULL,
    [RUN_TIME_CODE_DB]          NVARCHAR (20)   NULL,
    [WORK_CENTER_NO]            NVARCHAR (5)    NULL,
    [ALTERNATE_WORK_CENTER]     NVARCHAR (5)    NULL,
    [LABOR_CLASS_NO]            NVARCHAR (10)   NULL,
    [STD_OPERATION_NAME]        NVARCHAR (12)   NULL,
    [OPERATION_USAGE_FACTOR]    INT             NULL,
    [OUTSIDE_OP_SUPPLY_TYPE]    NVARCHAR (4000) NULL,
    [OUTSIDE_OP_SUPPLY_TYPE_DB] NVARCHAR (20)   NULL,
    [OUTSIDE_OP_BACKFLUSH]      NVARCHAR (4000) NULL,
    [OUTSIDE_OP_BACKFLUSH_DB]   NVARCHAR (20)   NULL,
    [OVERLAP]                   INT             NULL,
    [OVERLAP_UNIT]              NVARCHAR (4000) NULL,
    [OVERLAP_UNIT_DB]           NVARCHAR (20)   NULL,
    [OBJID]                     NVARCHAR (4000) NULL,
    [OBJVERSION]                NVARCHAR (2000) NULL,
    [BatchID]                   BIGINT          NULL,
    [ProcessLogID]              BIGINT          NULL,
    CONSTRAINT [PK_ROUTING_OPERATION] PRIMARY KEY CLUSTERED ([PART_NO] ASC, [CONTRACT] ASC, [ROUTING_REVISION] ASC, [ALTERNATIVE_NO] ASC, [BOM_TYPE_DB] ASC, [OPERATION_ID] ASC)
);



