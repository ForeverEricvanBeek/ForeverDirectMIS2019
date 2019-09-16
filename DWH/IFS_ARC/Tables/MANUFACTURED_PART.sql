﻿CREATE TABLE [IFS_ARC].[MANUFACTURED_PART] (
    [ORDER_NO]                 NVARCHAR (12)   NOT NULL,
    [RELEASE_NO]               NVARCHAR (4)    NOT NULL,
    [SEQUENCE_NO]              NVARCHAR (4)    NOT NULL,
    [PART_NO]                  NVARCHAR (25)   NOT NULL,
    [CONTRACT]                 NVARCHAR (5)    NULL,
    [ORDER_CODE]               NVARCHAR (4000) NULL,
    [ORDER_CODE_DB]            NVARCHAR (3)    NULL,
    [NOTE_ID]                  INT             NULL,
    [OPERATION_NO]             INT             NULL,
    [CREATE_DATE]              DATETIME2 (7)   NULL,
    [LAST_ACTIVITY_DATE]       DATETIME2 (7)   NULL,
    [LEADTIME_OFFSET]          INT             NULL,
    [LINE_ITEM_NO]             INT             NULL,
    [NOTE_TEXT]                NVARCHAR (2000) NULL,
    [OPERATION_SCRAPPED]       INT             NULL,
    [ORG_QTY_DUE]              INT             NULL,
    [QA_SCRAPPED]              INT             NULL,
    [QTY_COMPLETE]             INT             NULL,
    [QTY_PER_ASSEMBLY]         INT             NULL,
    [QTY_QA]                   INT             NULL,
    [QTY_REJECTED]             INT             NULL,
    [REVISED_QTY_DUE]          INT             NULL,
    [CONDITION_CODE]           NVARCHAR (10)   NULL,
    [PART_OWNERSHIP]           NVARCHAR (4000) NULL,
    [PART_OWNERSHIP_DB]        NVARCHAR (20)   NULL,
    [OWNING_CUSTOMER_NO]       NVARCHAR (20)   NULL,
    [OWNING_VENDOR_NO]         NVARCHAR (20)   NULL,
    [SERIAL_RECEIPT]           NVARCHAR (4000) NULL,
    [SERIAL_RECEIPT_DB]        NVARCHAR (20)   NULL,
    [VIM_STRUCTURE_SOURCE]     NVARCHAR (20)   NULL,
    [PARTIAL_PART_REQUIRED]    NVARCHAR (1)    NULL,
    [GEN_OH_COST_DISTRIBUTION] INT             NULL,
    [OPER_COST_DISTRIBUTION]   INT             NULL,
    [DISASSY_PRODUCT_LEVEL]    NVARCHAR (4000) NULL,
    [OBJID]                    NVARCHAR (4000) NULL,
    [OBJVERSION]               NVARCHAR (2000) NULL,
    [Eff_Date]                 DATE            NOT NULL,
    [End_Date]                 DATE            NULL,
    [ActInd]                   CHAR (1)        NULL,
    [IsDeleted]                CHAR (1)        NULL,
    [BatchID]                  BIGINT          NULL,
    [ProcessLogID]             BIGINT          NULL,
    CONSTRAINT [PK_MANUFACTURED_PART] PRIMARY KEY CLUSTERED ([ORDER_NO] ASC, [RELEASE_NO] ASC, [SEQUENCE_NO] ASC, [PART_NO] ASC, [Eff_Date] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];
