﻿CREATE TABLE [MANH].[CNTR_TYPE] (
    [WHSE]                     NVARCHAR (3)    NULL,
    [SOLDTO]                   NVARCHAR (10)   NULL,
    [CNTR_TYPE]                NVARCHAR (3)    NULL,
    [CNTR_SIZE]                NVARCHAR (3)    NULL,
    [CNTR_DESC]                NVARCHAR (35)   NULL,
    [MAX_CNTR_VOL]             NUMERIC (13, 4) NULL,
    [ACTL_CNTR_VOL]            NUMERIC (13, 4) NULL,
    [XTERNL_CNTR_VOL]          NUMERIC (13, 4) NULL,
    [MIN_CNTR_WT]              NUMERIC (13, 4) NULL,
    [MAX_CNTR_WT]              NUMERIC (13, 4) NULL,
    [EMPTY_CNTR_WT]            NUMERIC (13, 4) NULL,
    [MAX_CNTR_UNITS]           NUMERIC (13, 4) NULL,
    [MIN_CNTR_VOL]             NUMERIC (13, 4) NULL,
    [OVRSZ_FLAG]               NVARCHAR (1)    NULL,
    [OVRSZ_WT]                 NUMERIC (13, 4) NULL,
    [PKG_DESC]                 NVARCHAR (5)    NULL,
    [LEN]                      NUMERIC (16, 4) NULL,
    [WIDTH]                    NUMERIC (16, 4) NULL,
    [HT]                       NUMERIC (16, 4) NULL,
    [CNTR_DIM_UOM]             NVARCHAR (2)    NULL,
    [PROC_ATTR_1]              NVARCHAR (2)    NULL,
    [PROC_ATTR_2]              NVARCHAR (2)    NULL,
    [PROC_ATTR_3]              NVARCHAR (2)    NULL,
    [PROC_ATTR_4]              NVARCHAR (2)    NULL,
    [PROC_ATTR_5]              NVARCHAR (2)    NULL,
    [CNTR_CLASS]               NUMERIC (1)     NULL,
    [MIN_NBR_UOM]              NUMERIC (9)     NULL,
    [MAX_NBR_OF_PKTS]          NUMERIC (9)     NULL,
    [USER_ID]                  NVARCHAR (15)   NULL,
    [CREATED_SOURCE_TYPE]      NUMERIC (2)     NULL,
    [CREATED_SOURCE]           NVARCHAR (25)   NULL,
    [CREATED_DTTM]             DATETIME2 (7)   NULL,
    [LAST_UPDATED_SOURCE_TYPE] NUMERIC (2)     NULL,
    [LAST_UPDATED_SOURCE]      NVARCHAR (25)   NULL,
    [LAST_UPDATED_DTTM]        DATETIME2 (7)   NULL,
    [CNTR_TYPE_ID]             NUMERIC (8)     NOT NULL,
    [PROTN_FACTOR]             NVARCHAR (3)    NULL,
    [Eff_Date]                 DATE            NOT NULL,
    [End_Date]                 DATE            NULL,
    [ActInd]                   CHAR (1)        NULL,
    [IsDeleted]                CHAR (1)        NULL,
    [BatchID]                  BIGINT          NULL,
    [ProcessLogID]             BIGINT          NULL,
    CONSTRAINT [PK_MANH_CNTR_TYPE] PRIMARY KEY CLUSTERED ([CNTR_TYPE_ID] ASC, [Eff_Date] ASC)
);
