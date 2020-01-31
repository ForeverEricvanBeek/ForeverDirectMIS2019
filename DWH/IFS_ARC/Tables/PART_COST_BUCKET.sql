﻿CREATE TABLE [IFS_ARC].[PART_COST_BUCKET] (
    [CONTRACT]                    NVARCHAR (5)    NOT NULL,
    [PART_NO]                     NVARCHAR (25)   NOT NULL,
    [COST_SET]                    INT             NOT NULL,
    [ALTERNATIVE_NO]              NVARCHAR (20)   NOT NULL,
    [ROUTING_ALTERNATIVE_NO]      NVARCHAR (20)   NOT NULL,
    [BUCKET_LEVEL]                INT             NOT NULL,
    [BUCKET_SEQ]                  INT             NOT NULL,
    [TOP_LEVEL_PART_NO]           NVARCHAR (25)   NOT NULL,
    [TOP_ALTERNATIVE_NO]          NVARCHAR (20)   NOT NULL,
    [TOP_ROUTING_NO]              NVARCHAR (20)   NOT NULL,
    [COST_BUCKET_ID]              NVARCHAR (5)    NOT NULL,
    [PARENT_BUCKET_SEQ]           INT             NULL,
    [BUCKET_LEVEL_COST]           DECIMAL (18, 8) NULL,
    [BUCKET_ACCUM_COST]           DECIMAL (18, 8) NULL,
    [QTY_PER_ASSEMBLY]            INT             NULL,
    [CUMM_QTY_PER_ASSEMBLY]       INT             NULL,
    [SPLIT_QTY_PER_ASSEMBLY]      INT             NULL,
    [COST_QTY_PER_ASSEMBLY]       INT             NULL,
    [NOTE_TEXT]                   NVARCHAR (2000) NULL,
    [CALCULATION_DATE]            DATETIME2 (7)   NOT NULL,
    [DIRECT_INDIRECT_COST]        NVARCHAR (4000) NULL,
    [DIRECT_INDIRECT_COST_DB]     NVARCHAR (20)   NULL,
    [SUNK_RELEVANT_COST]          NVARCHAR (4000) NULL,
    [SUNK_RELEVANT_COST_DB]       NVARCHAR (20)   NULL,
    [FIXED_VARIABLE_COST]         NVARCHAR (4000) NULL,
    [FIXED_VARIABLE_COST_DB]      NVARCHAR (20)   NULL,
    [COST_ACTIVITY_VALUE_TYPE]    NVARCHAR (4000) NULL,
    [COST_ACTIVITY_VALUE_TYPE_DB] NVARCHAR (20)   NULL,
    [COST_ACTIVITY_TYPE]          NVARCHAR (4000) NULL,
    [COST_ACTIVITY_TYPE_DB]       NVARCHAR (20)   NULL,
    [COST_BUCKET_PUBLIC_TYPE]     NVARCHAR (4000) NULL,
    [COST_BUCKET_PUBLIC_TYPE_DB]  NVARCHAR (20)   NULL,
    [PARENT_PART_NO]              NVARCHAR (25)   NULL,
    [LINE_ITEM_NO]                INT             NULL,
    [LEVEL_SCRAP_COST]            INT             NULL,
    [ACCUM_SCRAP_COST]            INT             NULL,
    [OBJID]                       NVARCHAR (4000) NULL,
    [OBJVERSION]                  NVARCHAR (2000) NULL,
    [Eff_Date]                    DATE            NOT NULL,
    [End_Date]                    DATE            NULL,
    [ActInd]                      CHAR (1)        NULL,
    [IsDeleted]                   CHAR (1)        NULL,
    [BatchID]                     BIGINT          NULL,
    [ProcessLogID]                BIGINT          NULL,
    CONSTRAINT [PK_PART_COST_BUCKET] PRIMARY KEY CLUSTERED ([PART_NO] ASC, [CONTRACT] ASC, [COST_SET] ASC, [ALTERNATIVE_NO] ASC, [ROUTING_ALTERNATIVE_NO] ASC, [BUCKET_SEQ] ASC, [TOP_LEVEL_PART_NO] ASC, [BUCKET_LEVEL] ASC, [TOP_ALTERNATIVE_NO] ASC, [TOP_ROUTING_NO] ASC, [COST_BUCKET_ID] ASC, [CALCULATION_DATE] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];

