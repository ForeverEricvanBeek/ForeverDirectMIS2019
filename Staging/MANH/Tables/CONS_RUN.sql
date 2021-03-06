﻿CREATE TABLE [MANH].[CONS_RUN] (
    [CONS_RUN_ID]                    INT             NOT NULL,
    [TC_COMPANY_ID]                  INT             NOT NULL,
    [OPT_ENGINE_ID]                  NVARCHAR (4)    NOT NULL,
    [CONS_RUN_STATUS]                NVARCHAR (50)   NOT NULL,
    [CONS_RUN_INT_STATUS]            NVARCHAR (16)   NOT NULL,
    [START_DTTM]                     DATETIME2 (7)   NOT NULL,
    [END_DTTM]                       DATETIME2 (7)   NULL,
    [CONS_TEMPLATE_ID]               INT             NOT NULL,
    [KILL_RUN_TYPE]                  NVARCHAR (2)    NULL,
    [KILL_RUN_SOURCE_TYPE]           INT             NULL,
    [KILL_RUN_SOURCE]                NVARCHAR (50)   NULL,
    [KILL_RUN_DTTM]                  DATETIME2 (7)   NULL,
    [DESCRIPTION]                    NVARCHAR (100)  NULL,
    [SELECTED_ORDERS]                INT             NULL,
    [PRE_ORDERS_ON_CONS_SHIPMENTS]   INT             NULL,
    [PRE_ORDERS_ON_ALT_SHIPMENTS]    INT             NULL,
    [PRE_ORDERS_IN_ERROR]            INT             NULL,
    [PRE_CONS_SHIPMENTS]             INT             NULL,
    [PRE_ALT_SHIPMENTS]              INT             NULL,
    [PRE_BASELINE_COST]              DECIMAL (14, 3) NULL,
    [PRE_ESTIMATED_COST]             DECIMAL (14, 3) NULL,
    [PRE_COSTABLE_SHIPMENTS]         INT             NULL,
    [POST_ORDERS_ON_CONS_SHIPMENTS]  INT             NULL,
    [POST_ORDERS_ON_ALT_SHIPMENTS]   INT             NULL,
    [POST_ORDERS_IN_ERROR]           INT             NULL,
    [POST_CONS_SHIPMENTS]            INT             NULL,
    [POST_ALT_SHIPMENTS]             INT             NULL,
    [POST_SHIPMENTS_IN_ERROR]        INT             NULL,
    [POST_BASELINE_COST]             DECIMAL (14, 3) NULL,
    [POST_ESTIMATED_COST]            DECIMAL (14, 3) NULL,
    [POST_COSTABLE_SHIPMENTS]        INT             NULL,
    [CURRENCY_CODE]                  NVARCHAR (3)    NULL,
    [LAST_UPDATED_DTTM]              DATETIME2 (7)   NULL,
    [PRE_STOPS_PER_SHIPMENT]         INT             NULL,
    [POST_STOPS_PER_SHIPMENT]        INT             NULL,
    [POSTRUN_STATUS]                 NVARCHAR (16)   NULL,
    [POSTRUN_SHIPMENTS_SIZE_VALUE1]  DECIMAL (13, 2) NULL,
    [POSTRUN_SHIPMENTS_SIZE_VALUE2]  DECIMAL (13, 2) NULL,
    [POSTRUN_SHIPMENTS_SIZE_VALUE3]  DECIMAL (13, 2) NULL,
    [POSTRUN_COSTABLE_SIZE_VALUE1]   DECIMAL (13, 2) NULL,
    [POSTRUN_COSTABLE_SIZE_VALUE2]   DECIMAL (13, 2) NULL,
    [POSTRUN_COSTABLE_SIZE_VALUE3]   DECIMAL (13, 2) NULL,
    [POSTRUN_SIZEABLE_SHIPMENTS1]    INT             NULL,
    [POSTRUN_SIZEABLE_SHIPMENTS2]    INT             NULL,
    [POSTRUN_SIZEABLE_SHIPMENTS3]    INT             NULL,
    [POSTRUN_DISTANCE_VALUE]         DECIMAL (13, 2) NULL,
    [POSTRUN_DISTANCE_UOM]           NVARCHAR (8)    NULL,
    [PLANNING_DATE]                  DATETIME2 (7)   NULL,
    [CONS_RUN_TYPE]                  NVARCHAR (4)    NULL,
    [PRE_ORDS_ON_SIN_ORD_SHPS]       INT             NULL,
    [PRE_ORDS_ON_MUL_ORD_SHPS]       INT             NULL,
    [PRE_ORDS_ON_SIN_ORD_ALT_SHPS]   INT             NULL,
    [PRE_ORDS_ON_MUL_ORD_ALT_SHPS]   INT             NULL,
    [PRE_ORDS_ON_POOL_POINT_SHPS]    INT             NULL,
    [PRE_ORDS_ON_VIA_WAYPOINTS]      INT             NULL,
    [PRE_SIN_ORD_SHPS]               INT             NULL,
    [PRE_MUL_ORD_SHPS]               INT             NULL,
    [PRE_SIN_ORD_ALT_SHPS]           INT             NULL,
    [PRE_MUL_ORD_ALT_SHPS]           INT             NULL,
    [PRE_POOL_POINT_OPER_SHPS]       INT             NULL,
    [PRE_SHPS_VIA_WAYPOINTS]         INT             NULL,
    [POST_ORDS_ON_SIN_ORD_SHPS]      INT             NULL,
    [POST_ORDS_ON_MUL_ORD_SHPS]      INT             NULL,
    [POST_ORDS_ON_SIN_ORD_ALT_SHPS]  INT             NULL,
    [POST_ORDS_ON_MUL_ORD_ALT_SHPS]  INT             NULL,
    [POST_ORDS_ON_POOL_POINT_SHPS]   INT             NULL,
    [POST_ORDS_ON_VIA_WAYPOINTS]     INT             NULL,
    [POST_SIN_ORD_SHPS]              INT             NULL,
    [POST_MUL_ORD_SHPS]              INT             NULL,
    [POST_SIN_ORD_ALT_SHPS]          INT             NULL,
    [POST_MUL_ORD_ALT_SHPS]          INT             NULL,
    [POST_POOL_POINT_OPER_SHPS]      INT             NULL,
    [POST_SHPS_VIA_WAYPOINTS]        INT             NULL,
    [PRE_TOT_ORDS]                   INT             NULL,
    [PRE_TOT_SHPS]                   INT             NULL,
    [POST_TOT_ORDS]                  INT             NULL,
    [POST_TOT_SHPS]                  INT             NULL,
    [POST_SHPS_WITH_HCE]             INT             NULL,
    [MODE_1]                         NVARCHAR (4)    NULL,
    [MODE_2]                         NVARCHAR (4)    NULL,
    [MODE_3]                         NVARCHAR (4)    NULL,
    [MODE_4]                         NVARCHAR (4)    NULL,
    [MODE_5]                         NVARCHAR (4)    NULL,
    [NUM_OF_HIRED_DRIVERS]           INT             NULL,
    [NUM_OF_HIRED_TRACTORS]          INT             NULL,
    [NUM_OF_HIRED_TRAILERS]          INT             NULL,
    [POSTRUN_SHIPMENTS_SIZE_VALUE4]  DECIMAL (13, 2) NULL,
    [POSTRUN_COSTABLE_SIZE_VALUE4]   DECIMAL (13, 2) NULL,
    [POSTRUN_SIZEABLE_SHIPMENTS4]    INT             NULL,
    [NUM_OF_UNPLANNED_ORDERS]        INT             NULL,
    [PLANNER_REGION_ID]              NVARCHAR (10)   NULL,
    [NUM_OF_ORDERS_ERROR]            INT             NULL,
    [NUM_OF_SHIP_ERROR]              INT             NULL,
    [NUM_OF_REV_LOG_SHIPMENTS]       INT             NULL,
    [NUM_OF_BACKHAUL_SHIPMENTS]      INT             NULL,
    [NUM_OF_STORE_DELIV]             INT             NULL,
    [POSTRUN_SHIPMENTS_SIZE_UOM1_ID] INT             NULL,
    [POSTRUN_SHIPMENTS_SIZE_UOM2_ID] INT             NULL,
    [POSTRUN_SHIPMENTS_SIZE_UOM3_ID] INT             NULL,
    [POSTRUN_SHIPMENTS_SIZE_UOM4_ID] INT             NULL,
    [MODE_ID_1]                      INT             NULL,
    [MODE_ID_2]                      INT             NULL,
    [MODE_ID_3]                      INT             NULL,
    [MODE_ID_4]                      INT             NULL,
    [MODE_ID_5]                      INT             NULL,
    [RTE_WAVE_NBR]                   NVARCHAR (12)   NULL,
    [BatchID]                        BIGINT          NULL,
    [ProcessLogID]                   BIGINT          NULL,
    CONSTRAINT [PK_MANH_CONS_RUN] PRIMARY KEY CLUSTERED ([CONS_RUN_ID] ASC)
);

