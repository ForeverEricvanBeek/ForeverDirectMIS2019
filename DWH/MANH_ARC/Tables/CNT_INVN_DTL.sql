﻿CREATE TABLE [MANH_ARC].[CNT_INVN_DTL] (
    [CNT_INVN_SEQ_NBR] INT             NOT NULL,
    [INVN_TYPE]        NVARCHAR (1)    NULL,
    [PROD_STAT]        NVARCHAR (3)    NULL,
    [BATCH_NBR]        NVARCHAR (15)   NULL,
    [INVN_QTY]         NUMERIC (13, 5) NOT NULL,
    [CREATE_DATE_TIME] DATETIME2 (7)   NULL,
    [MOD_DATE_TIME]    DATETIME2 (7)   NULL,
    [USER_ID]          NVARCHAR (15)   NULL,
    [STD_PACK_QTY]     NUMERIC (9, 2)  NOT NULL,
    [CNT_INVN_DTL_ID]  INT             NOT NULL,
    [CNT_INVN_HDR_ID]  INT             NULL,
    [WM_VERSION_ID]    INT             NOT NULL,
    [RSN_CODE]         NVARCHAR (2)    NULL,
    [ITEM_ID]          INT             NOT NULL,
    [ITEM_ATTR_1]      NVARCHAR (10)   NULL,
    [ITEM_ATTR_2]      NVARCHAR (10)   NULL,
    [ITEM_ATTR_3]      NVARCHAR (10)   NULL,
    [ITEM_ATTR_4]      NVARCHAR (10)   NULL,
    [ITEM_ATTR_5]      NVARCHAR (10)   NULL,
    [CNTRY_OF_ORGN]    NVARCHAR (4)    NULL,
    [Eff_Date]         DATE            NOT NULL,
    [End_Date]         DATE            NULL,
    [ActInd]           CHAR (1)        NULL,
    [IsDeleted]        CHAR (1)        NULL,
    [BatchID]          BIGINT          NULL,
    [ProcessLogID]     BIGINT          NULL,
    CONSTRAINT [PK_MANH_CNT_INVN_DTL] PRIMARY KEY CLUSTERED ([CNT_INVN_DTL_ID] ASC, [Eff_Date] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];



