﻿CREATE TABLE [IFS_ARC].[MANUF_STRUCT_ALTERNATE] (
    [CONTRACT]                 NVARCHAR (5)    NOT NULL,
    [PART_NO]                  NVARCHAR (25)   NOT NULL,
    [ENG_CHG_LEVEL]            NVARCHAR (2)    NOT NULL,
    [BOM_TYPE]                 NVARCHAR (200)  NULL,
    [BOM_TYPE_DB]              NVARCHAR (20)   NOT NULL,
    [ALTERNATIVE_NO]           NVARCHAR (20)   NOT NULL,
    [ALTERNATIVE_DESCRIPTION]  NVARCHAR (50)   NULL,
    [NOTE_ID]                  INT             NULL,
    [NOTE_TEXT]                NVARCHAR (2000) NULL,
    [USE_COST_DISTRIBUTION]    NVARCHAR (200)  NULL,
    [USE_COST_DISTRIBUTION_DB] NVARCHAR (20)   NULL,
    [ROWTYPE]                  NVARCHAR (30)   NULL,
    [MANUF_STRUCT_ALT_TYPE]    NVARCHAR (30)   NULL,
    [OBJID]                    NVARCHAR (4000) NULL,
    [OBJVERSION]               NVARCHAR (2000) NULL,
    [Eff_Date]                 DATE            NOT NULL,
    [End_Date]                 DATE            NULL,
    [ActInd]                   CHAR (1)        NULL,
    [IsDeleted]                CHAR (1)        NULL,
    [BatchID]                  BIGINT          NULL,
    [ProcessLogID]             BIGINT          NULL,
    CONSTRAINT [PK_MANUF_STRUCT_ALTERNATE] PRIMARY KEY CLUSTERED ([ALTERNATIVE_NO] ASC, [BOM_TYPE_DB] ASC, [CONTRACT] ASC, [Eff_Date] ASC, [ENG_CHG_LEVEL] ASC, [PART_NO] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];
