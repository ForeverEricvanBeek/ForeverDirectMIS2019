﻿CREATE TABLE [PROD].[WORK_CENTER] (
    [CONTRACT]                NVARCHAR (5)    NOT NULL,
    [WORK_CENTER_NO]          NVARCHAR (5)    NOT NULL,
    [NOTE_ID]                 INT             NULL,
    [UOM]                     NVARCHAR (10)   NULL,
    [CREATE_DATE]             DATETIME2 (7)   NULL,
    [CUM_DEVIATION]           INT             NULL,
    [DEPARTMENT_NO]           NVARCHAR (5)    NULL,
    [DESCRIPTION]             NVARCHAR (35)   NULL,
    [INPUT_HRS_WEEK]          INT             NULL,
    [INPUT_OUTPUT_CODE]       NVARCHAR (20)   NULL,
    [LAST_ACTIVITY_DATE]      DATETIME2 (7)   NULL,
    [OUTPUT_HRS_WEEK]         INT             NULL,
    [QUEUE_TIME]              INT             NULL,
    [SOURCE]                  NVARCHAR (25)   NULL,
    [TIME_TYPE]               NVARCHAR (4000) NULL,
    [TIME_TYPE_DB]            NVARCHAR (20)   NULL,
    [SCHED_CAPACITY]          NVARCHAR (4000) NULL,
    [SCHED_CAPACITY_DB]       NVARCHAR (20)   NULL,
    [WORK_CENTER_CODE]        NVARCHAR (4000) NULL,
    [WORK_CENTER_CODE_DB]     NVARCHAR (20)   NULL,
    [NOTE_TEXT]               NVARCHAR (2000) NULL,
    [USAGE_CODE]              NVARCHAR (4000) NULL,
    [USAGE_CODE_DB]           NVARCHAR (20)   NULL,
    [PRODUCTION_LINE]         NVARCHAR (12)   NULL,
    [UTILIZATION]             INT             NULL,
    [SCHED_FINITE_LOCK]       NVARCHAR (4000) NULL,
    [SCHED_FINITE_LOCK_DB]    NVARCHAR (20)   NULL,
    [MAX_HOURS_PER_ORDER]     INT             NULL,
    [UNITS_PER_DAYS]          INT             NULL,
    [RESOURCE_DAYS]           INT             NULL,
    [TIME_REPORTING]          NVARCHAR (4000) NULL,
    [TIME_REPORTING_DB]       NVARCHAR (20)   NULL,
    [CALENDAR_ID]             NVARCHAR (10)   NULL,
    [RRP_EFFICIENCY]          INT             NULL,
    [AVERAGE_CAPACITY]        INT             NULL,
    [COMPANY]                 NVARCHAR (20)   NULL,
    [CODE_PART]               NVARCHAR (1)    NULL,
    [COST_CENTER_ID]          NVARCHAR (20)   NULL,
    [DEMONSTRATED_CAPACITY]   INT             NULL,
    [OUTSIDE_OP_BACKFLUSH]    NVARCHAR (4000) NULL,
    [OUTSIDE_OP_BACKFLUSH_DB] NVARCHAR (20)   NULL,
    [VENDOR_NO]               NVARCHAR (20)   NULL,
    [OBJID]                   NVARCHAR (4000) NULL,
    [OBJVERSION]              NVARCHAR (2000) NULL,
    [BatchID]                 BIGINT          NULL,
    [ProcessLogID]            BIGINT          NULL,
    CONSTRAINT [PK_WORK_CENTER] PRIMARY KEY CLUSTERED ([CONTRACT] ASC, [WORK_CENTER_NO] ASC)
);

