﻿CREATE TABLE [IFS].[LOT_BATCH_MASTER] (
    [PART_NO]           NVARCHAR (25)   NOT NULL,
    [LOT_BATCH_NO]      NVARCHAR (20)   NOT NULL,
    [SHIPPED_QTY]       INT             NULL,
    [SCRAPPED_QTY]      INT             NULL,
    [EXPIRATION_DATE]   DATETIME2 (7)   NULL,
    [MANUFACTURED_DATE] DATETIME2 (7)   NULL,
    [BEST_BEFORE_DATE]  DATETIME2 (7)   NULL,
    [LAST_SALES_DATE]   DATETIME2 (7)   NULL,
    [POTENCY]           INT             NULL,
    [PARENT_PART_NO]    NVARCHAR (25)   NULL,
    [PARENT_LOT]        NVARCHAR (20)   NULL,
    [CREATE_DATE]       DATETIME2 (7)   NULL,
    [NOTE_TEXT]         NVARCHAR (2000) NULL,
    [RECEIVED_QTY]      INT             NULL,
    [ORDER_TYPE]        NVARCHAR (4000) NULL,
    [ORDER_TYPE_DB]     NVARCHAR (20)   NULL,
    [ORDER_REF1]        NVARCHAR (12)   NULL,
    [ORDER_REF2]        NVARCHAR (4)    NULL,
    [ORDER_REF3]        NVARCHAR (30)   NULL,
    [ORDER_REF4]        INT             NULL,
    [INITIAL_CONTRACT]  NVARCHAR (5)    NULL,
    [CONDITION_CODE]    NVARCHAR (10)   NULL,
    [TEXT_ID$]          NVARCHAR (50)   NULL,
    [OBJID]             NVARCHAR (4000) NULL,
    [OBJVERSION]        NVARCHAR (2000) NULL,
    [Eff_Date]          DATE            NOT NULL,
    [End_Date]          DATE            NULL,
    [ActInd]            CHAR (1)        NULL,
    [IsDeleted]         CHAR (1)        NULL,
    [BatchID]           BIGINT          NULL,
    [ProcessLogID]      BIGINT          NULL,
    CONSTRAINT [PK_LOT_BATCH_MASTER] PRIMARY KEY CLUSTERED ([PART_NO] ASC, [LOT_BATCH_NO] ASC, [Eff_Date] ASC) ON [DWH_IFS]
) ON [DWH_IFS];





