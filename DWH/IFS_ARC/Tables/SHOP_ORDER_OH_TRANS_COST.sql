﻿CREATE TABLE [IFS_ARC].[SHOP_ORDER_OH_TRANS_COST] (
    [TRANSACTION_ID]             INT             NOT NULL,
    [ACCOUNTING_YEAR]            NVARCHAR (4)    NULL,
    [COMPANY]                    NVARCHAR (20)   NULL,
    [COST_SOURCE_ID]             NVARCHAR (20)   NULL,
    [CONTRACT]                   NVARCHAR (5)    NULL,
    [PART_NO]                    NVARCHAR (25)   NULL,
    [COST_BUCKET_ID]             NVARCHAR (5)    NULL,
    [BUCKET_POSTING_GROUP_ID]    NVARCHAR (20)   NULL,
    [TOTAL_COST]                 INT             NULL,
    [COST_BUCKET_PUBLIC_TYPE]    NVARCHAR (4000) NULL,
    [COST_BUCKET_PUBLIC_TYPE_DB] NVARCHAR (20)   NULL,
    [ORIGINAL_TRANSACTION_ID]    INT             NULL,
    [OBJID]                      NVARCHAR (4000) NULL,
    [OBJVERSION]                 NVARCHAR (14)   NULL,
    [Eff_Date]                   DATE            NOT NULL,
    [End_Date]                   DATE            NULL,
    [ActInd]                     CHAR (1)        NULL,
    [IsDeleted]                  CHAR (1)        NULL,
    [BatchID]                    BIGINT          NULL,
    [ProcessLogID]               BIGINT          NULL,
    CONSTRAINT [PK_SHOP_ORDER_OH_TRANS_COST] PRIMARY KEY CLUSTERED ([TRANSACTION_ID] ASC, [Eff_Date] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];

