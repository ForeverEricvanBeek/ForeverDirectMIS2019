﻿CREATE TABLE [IFS].[INVENTORY_PART_PLANNING] (
    [CONTRACT]                  NVARCHAR (5)    NOT NULL,
    [PART_NO]                   NVARCHAR (25)   NOT NULL,
    [CARRY_RATE]                INT             NULL,
    [LAST_ACTIVITY_DATE]        DATETIME2 (7)   NULL,
    [LOT_SIZE]                  INT             NULL,
    [LOT_SIZE_AUTO]             NVARCHAR (4000) NULL,
    [LOT_SIZE_AUTO_DB]          NVARCHAR (1)    NULL,
    [MAXWEEK_SUPPLY]            INT             NULL,
    [MAX_ORDER_QTY]             INT             NULL,
    [MIN_ORDER_QTY]             INT             NULL,
    [MUL_ORDER_QTY]             INT             NULL,
    [ORDER_POINT_QTY]           INT             NULL,
    [ORDER_POINT_QTY_AUTO]      NVARCHAR (4000) NULL,
    [ORDER_POINT_QTY_AUTO_DB]   NVARCHAR (1)    NULL,
    [ORDER_TRIP_DATE]           DATETIME2 (7)   NULL,
    [SAFETY_STOCK]              INT             NULL,
    [SAFETY_STOCK_AUTO]         NVARCHAR (4000) NULL,
    [SAFETY_STOCK_AUTO_DB]      NVARCHAR (1)    NULL,
    [SERVICE_RATE]              INT             NULL,
    [SETUP_COST]                INT             NULL,
    [SHRINKAGE_FAC]             INT             NULL,
    [STD_ORDER_SIZE]            INT             NULL,
    [ORDER_REQUISITION]         NVARCHAR (4000) NULL,
    [ORDER_REQUISITION_DB]      NVARCHAR (1)    NULL,
    [QTY_PREDICTED_CONSUMPTION] INT             NULL,
    [PLANNING_METHOD]           NVARCHAR (1)    NULL,
    [MRP_ORDER_CODE]            NVARCHAR (1)    NULL,
    [OLD_LOT_SIZE]              INT             NULL,
    [OLD_ORDER_POINT_QTY]       INT             NULL,
    [OLD_SAFETY_STOCK]          INT             NULL,
    [PROPOSAL_RELEASE]          NVARCHAR (4000) NULL,
    [PROPOSAL_RELEASE_DB]       NVARCHAR (20)   NULL,
    [PERCENT_MANUFACTURED]      INT             NULL,
    [PERCENT_ACQUIRED]          INT             NULL,
    [SPLIT_MANUF_ACQUIRED]      NVARCHAR (4000) NULL,
    [SPLIT_MANUF_ACQUIRED_DB]   NVARCHAR (20)   NULL,
    [ACQUIRED_SUPPLY_TYPE]      NVARCHAR (4000) NULL,
    [ACQUIRED_SUPPLY_TYPE_DB]   NVARCHAR (20)   NULL,
    [MANUF_SUPPLY_TYPE]         NVARCHAR (4000) NULL,
    [MANUF_SUPPLY_TYPE_DB]      NVARCHAR (20)   NULL,
    [PLANNING_METHOD_AUTO]      NVARCHAR (4000) NULL,
    [PLANNING_METHOD_AUTO_DB]   NVARCHAR (20)   NULL,
    [OBJID]                     NVARCHAR (4000) NULL,
    [OBJVERSION]                NVARCHAR (2000) NULL,
    [Eff_Date]                  DATE            NOT NULL,
    [End_Date]                  DATE            NULL,
    [ActInd]                    CHAR (1)        NULL,
    [IsDeleted]                 CHAR (1)        NULL,
    [BatchID]                   BIGINT          NULL,
    [ProcessLogID]              BIGINT          NULL,
    CONSTRAINT [PK_INVENTORY_PART_PLANNING] PRIMARY KEY CLUSTERED ([PART_NO] ASC, [CONTRACT] ASC, [Eff_Date] ASC) ON [DWH_IFS]
) ON [DWH_IFS];





