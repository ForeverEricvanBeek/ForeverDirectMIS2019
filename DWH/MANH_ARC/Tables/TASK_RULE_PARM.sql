﻿CREATE TABLE [MANH_ARC].[TASK_RULE_PARM] (
    [TASK_PARM_ID]             INT             NOT NULL,
    [RULE_ID]                  INT             NOT NULL,
    [PRTY]                     INT             NOT NULL,
    [TASK_CAPCTY_UOM]          NVARCHAR (1)    NULL,
    [TASK_CAPCTY]              INT             NOT NULL,
    [TASK_PRTY]                INT             NOT NULL,
    [TASK_TYPE]                NVARCHAR (2)    NULL,
    [CREATE_PARTL_CAPCTY_TASK] NVARCHAR (1)    NULL,
    [TASK_CREATE_STAT_CODE]    INT             NOT NULL,
    [TASK_DESC]                NVARCHAR (40)   NULL,
    [TASK_BATCH]               NVARCHAR (6)    NULL,
    [PRT_TASK_LIST]            NVARCHAR (1)    NULL,
    [MAX_WT]                   DECIMAL (13, 4) NOT NULL,
    [MAX_VOL]                  DECIMAL (13, 4) NOT NULL,
    [CREATE_DATE_TIME]         DATETIME2 (7)   NULL,
    [MOD_DATE_TIME]            DATETIME2 (7)   NULL,
    [USER_ID]                  NVARCHAR (15)   NULL,
    [CREATE_SEC_TASKS]         INT             NOT NULL,
    [SEC_TASK_INT]             INT             NOT NULL,
    [LABOR_RATE]               DECIMAL (9, 4)  NOT NULL,
    [PICK_TO_TOTE_FLAG]        NVARCHAR (1)    NULL,
    [RPT_PRTR_REQSTR]          NVARCHAR (255)  NULL,
    [CART_PLAN_ID]             INT             NULL,
    [TASK_RULE_PARM_ID]        INT             NOT NULL,
    [RULE_HDR_ID]              INT             NULL,
    [WM_VERSION_ID]            INT             NOT NULL,
    [GROUP_LPN_TO_TASKS]       NVARCHAR (1)    NULL,
    [MAX_LPNS_PER_TASK]        INT             NULL,
    [PERF_PICK_PATH_OPT]       NVARCHAR (1)    NULL,
    [CREATED_DTTM]             DATETIME2 (7)   NOT NULL,
    [LAST_UPDATED_DTTM]        DATETIME2 (7)   NULL,
    [DEST_LOCN_ID]             NVARCHAR (10)   NULL,
    [Eff_Date]                 DATE            NOT NULL,
    [End_Date]                 DATE            NULL,
    [ActInd]                   CHAR (1)        NULL,
    [IsDeleted]                CHAR (1)        NULL,
    [BatchID]                  BIGINT          NULL,
    [ProcessLogID]             BIGINT          NULL,
    CONSTRAINT [PK_MANH_TASK_RULE_PARM] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [TASK_RULE_PARM_ID] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];



