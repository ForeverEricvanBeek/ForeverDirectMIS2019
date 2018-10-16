﻿CREATE TABLE [IFS_ARC].[SHOP_ORD] (
    [ORDER_NO]                 NVARCHAR (12)   NOT NULL,
    [RELEASE_NO]               NVARCHAR (4)    NOT NULL,
    [SEQUENCE_NO]              NVARCHAR (4)    NOT NULL,
    [ORDER_CODE]               NVARCHAR (200)  NULL,
    [ORDER_CODE_DB]            NVARCHAR (20)   NULL,
    [CONTRACT]                 NVARCHAR (5)    NULL,
    [PART_NO]                  NVARCHAR (25)   NULL,
    [ENG_CHG_LEVEL]            NVARCHAR (2)    NULL,
    [LOT_BATCH_NO]             NVARCHAR (20)   NULL,
    [STRUCTURE_ALTERNATIVE]    NVARCHAR (20)   NULL,
    [ROUTING_REVISION]         NVARCHAR (4)    NULL,
    [ROUTING_ALTERNATIVE]      NVARCHAR (20)   NULL,
    [SERIAL_BEGIN]             NVARCHAR (50)   NULL,
    [SERIAL_END]               NVARCHAR (50)   NULL,
    [SHOP_ORD_ROUT_SERIAL]     NVARCHAR (50)   NULL,
    [ORG_START_DATE]           DATETIME2 (7)   NULL,
    [ORG_DUE_DATE]             DATETIME2 (7)   NULL,
    [REVISED_START_DATE]       DATETIME2 (7)   NULL,
    [REVISED_DUE_DATE]         DATETIME2 (7)   NULL,
    [NEED_DATE]                DATETIME2 (7)   NULL,
    [EARLIEST_START_DATE]      DATETIME2 (7)   NULL,
    [COMPLETE_DATE]            DATETIME2 (7)   NULL,
    [CLOSE_DATE]               DATETIME2 (7)   NULL,
    [CLOSE_TOLERANCE]          INT             NULL,
    [ORG_QTY_DUE]              INT             NULL,
    [REVISED_QTY_DUE]          INT             NULL,
    [QTY_ON_ORDER]             INT             NULL,
    [QTY_RELEASED]             INT             NULL,
    [QTY_COMPLETE]             INT             NULL,
    [QTY_QA]                   INT             NULL,
    [QTY_REJECTED]             INT             NULL,
    [QA_SCRAPPED]              INT             NULL,
    [QTY_DIFF]                 INT             NULL,
    [OPERATION_SCRAPPED]       INT             NULL,
    [DEMAND_CODE]              NVARCHAR (200)  NULL,
    [DEMAND_CODE_DB]           NVARCHAR (20)   NULL,
    [CLOSE_CODE]               NVARCHAR (200)  NULL,
    [CLOSE_CODE_DB]            NVARCHAR (20)   NULL,
    [PARTIAL_DIRECTION]        NVARCHAR (1)    NULL,
    [PARTIAL_OPERATION]        NVARCHAR (3)    NULL,
    [SCHED_DIRECTION]          NVARCHAR (200)  NULL,
    [SCHED_DIRECTION_DB]       NVARCHAR (20)   NULL,
    [SCHED_CAPACITY]           NVARCHAR (200)  NULL,
    [SCHED_CAPACITY_DB]        NVARCHAR (20)   NULL,
    [RESCHED_FLAG]             NVARCHAR (200)  NULL,
    [RESCHED_FLAG_DB]          NVARCHAR (20)   NULL,
    [RESCHED_CODE]             NVARCHAR (200)  NULL,
    [RESCHED_CODE_DB]          NVARCHAR (20)   NULL,
    [PRIORITY_NO]              INT             NULL,
    [SECURITY_CLASS]           NVARCHAR (6)    NULL,
    [SOURCE]                   NVARCHAR (25)   NULL,
    [ASSIGN_FLAG]              NVARCHAR (200)  NULL,
    [ASSIGN_FLAG_DB]           NVARCHAR (20)   NULL,
    [PICK_LIST]                NVARCHAR (200)  NULL,
    [PICK_LIST_DB]             NVARCHAR (20)   NULL,
    [PRE_ACCOUNTING_ID]        INT             NULL,
    [REJECT_REASON]            NVARCHAR (8)    NULL,
    [PROPOSED_LOCATION]        NVARCHAR (35)   NULL,
    [WORK_INSTRUCT]            NVARCHAR (200)  NULL,
    [WORK_INSTRUCT_DB]         NVARCHAR (20)   NULL,
    [NOTE_ID]                  INT             NULL,
    [NOTE_TEXT]                NVARCHAR (2000) NULL,
    [DATE_ENTERED]             DATETIME2 (7)   NULL,
    [LAST_ACTIVITY_DATE]       DATETIME2 (7)   NULL,
    [PROCESS_TYPE]             NVARCHAR (6)    NULL,
    [CUSTOMER_ORDER_NO]        NVARCHAR (12)   NULL,
    [CUSTOMER_LINE_NO]         NVARCHAR (4)    NULL,
    [CUSTOMER_REL_NO]          NVARCHAR (4)    NULL,
    [CUSTOMER_LINE_ITEM_NO]    INT             NULL,
    [CUSTOMER_NO]              NVARCHAR (20)   NULL,
    [PROJECT_ID]               NVARCHAR (10)   NULL,
    [ACTIVITY_SEQ]             INT             NULL,
    [PRIORITY_CATEGORY]        NVARCHAR (10)   NULL,
    [SOURCE_ORDER_NO]          NVARCHAR (12)   NULL,
    [SOURCE_RELEASE_NO]        NVARCHAR (4)    NULL,
    [SOURCE_SEQUENCE_NO]       NVARCHAR (4)    NULL,
    [SPLIT_REASON]             NVARCHAR (20)   NULL,
    [MRB_NUMBER]               NVARCHAR (20)   NULL,
    [PICKLIST_TYPE]            NVARCHAR (200)  NULL,
    [PICKLIST_TYPE_DB]         NVARCHAR (20)   NULL,
    [CONFIGURATION_ID]         NVARCHAR (50)   NULL,
    [BALANCED_COST_DIFF]       INT             NULL,
    [JOB_ID]                   NVARCHAR (10)   NULL,
    [CONDITION_CODE]           NVARCHAR (10)   NULL,
    [LOT_BATCH_STRING]         NVARCHAR (10)   NULL,
    [MAINT_LEVEL_STRUCT]       NVARCHAR (10)   NULL,
    [MAINT_LEVEL_ROUT]         NVARCHAR (10)   NULL,
    [PART_OWNERSHIP]           NVARCHAR (200)  NULL,
    [PART_OWNERSHIP_DB]        NVARCHAR (20)   NULL,
    [OWNING_CUSTOMER_NO]       NVARCHAR (20)   NULL,
    [MRO_VISIT_ID]             INT             NULL,
    [MRO_INT_ORD_HEADER]       NVARCHAR (12)   NULL,
    [MRO_INT_ORDER]            NVARCHAR (12)   NULL,
    [DISPO_ORDER_NO]           NVARCHAR (12)   NULL,
    [DISPO_RELEASE_NO]         NVARCHAR (4)    NULL,
    [DISPO_SEQUENCE_NO]        NVARCHAR (4)    NULL,
    [DISPO_LINE_ITEM]          INT             NULL,
    [MODS_DEFINED]             NVARCHAR (200)  NULL,
    [MODS_DEFINED_DB]          NVARCHAR (20)   NULL,
    [REPAIRS_DEFINED]          NVARCHAR (200)  NULL,
    [REPAIRS_DEFINED_DB]       NVARCHAR (20)   NULL,
    [PARTIAL_PART_REQUIRED]    NVARCHAR (1)    NULL,
    [REPLICATE_CHANGES]        NVARCHAR (5)    NULL,
    [ALTERNATE_COMPONENT_USED] NVARCHAR (200)  NULL,
    [USE_COST_DISTRIBUTION]    NVARCHAR (200)  NULL,
    [USE_COST_DISTRIBUTION_DB] NVARCHAR (20)   NULL,
    [CLOSED_IN_CBS]            NVARCHAR (200)  NULL,
    [CLOSED_IN_CBS_DB]         NVARCHAR (20)   NULL,
    [CASE_ID]                  INT             NULL,
    [TASK_ID]                  INT             NULL,
    [LAST_AVAIL_RUN_DATE]      DATETIME2 (7)   NULL,
    [CRO_NO]                   INT             NULL,
    [CRO_LINE]                 INT             NULL,
    [ESO_SERVICE_TYPE]         NVARCHAR (20)   NULL,
    [SHRINKAGE_FACTOR]         INT             NULL,
    [PLANNED_OP_SCRAP]         INT             NULL,
    [TEXT_ID$]                 NVARCHAR (50)   NULL,
    [C_INTFACE_DATE]           DATETIME2 (7)   NULL,
    [STATE]                    NVARCHAR (4000) NULL,
    [OBJID]                    NVARCHAR (100)  NULL,
    [OBJVERSION]               BIGINT          NULL,
    [Eff_Date]                 DATE            NOT NULL,
    [End_Date]                 DATE            NULL,
    [ActInd]                   CHAR (1)        NULL,
    [IsDeleted]                CHAR (1)        NULL,
    [BatchID]                  BIGINT          NULL,
    [ProcessLogID]             BIGINT          NULL,
    CONSTRAINT [PK_SHOP_ORD] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [ORDER_NO] ASC, [RELEASE_NO] ASC, [SEQUENCE_NO] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];

