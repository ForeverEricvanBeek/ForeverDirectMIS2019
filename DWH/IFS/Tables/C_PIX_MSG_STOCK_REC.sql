﻿CREATE TABLE [IFS].[C_PIX_MSG_STOCK_REC] (
    [TRAN_NBR]     INT             NOT NULL,
    [PIX_SEQ_NBR]  INT             NOT NULL,
    [TRAN_TYPE]    INT             NULL,
    [TRAN_CODE]    NVARCHAR (20)   NULL,
    [PIX_TRAN_ID]  INT             NULL,
    [ITEM_NAME]    NVARCHAR (35)   NULL,
    [BATCH_NBR]    NVARCHAR (50)   NULL,
    [INV_ADJ_QTY]  INT             NULL,
    [OBJID]        NVARCHAR (4000) NULL,
    [OBJVERSION]   NVARCHAR (14)   NULL,
    [Eff_Date]     DATE            NOT NULL,
    [End_Date]     DATE            NULL,
    [ActInd]       CHAR (1)        NULL,
    [IsDeleted]    CHAR (1)        NULL,
    [BatchID]      BIGINT          NULL,
    [ProcessLogID] BIGINT          NULL,
    CONSTRAINT [PK_C_PIX_MSG_STOCK_REC] PRIMARY KEY CLUSTERED ([TRAN_NBR] ASC, [PIX_SEQ_NBR] ASC, [Eff_Date] ASC) ON [DWH_IFS]
) ON [DWH_IFS];





