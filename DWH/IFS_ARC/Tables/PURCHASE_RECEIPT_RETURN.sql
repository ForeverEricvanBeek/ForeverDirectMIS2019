CREATE TABLE [IFS_ARC].[PURCHASE_RECEIPT_RETURN] (
    [ORDER_NO]               NVARCHAR (12)   NOT NULL,
    [LINE_NO]                NVARCHAR (4)    NOT NULL,
    [RELEASE_NO]             NVARCHAR (4)    NOT NULL,
    [RECEIPT_NO]             INT             NOT NULL,
    [LOT_BATCH_NO]           NVARCHAR (20)   NOT NULL,
    [SERIAL_NO]              NVARCHAR (50)   NOT NULL,
    [RETURN_REASON]          NVARCHAR (8)    NOT NULL,
    [RECEIPT_RETURN_TYPE]    NVARCHAR (4000) NULL,
    [RECEIPT_RETURN_TYPE_DB] NVARCHAR (20)   NOT NULL,
    [QTY_RETURNED]           INT             NULL,
    [CATCH_QTY_RETURNED]     INT             NULL,
    [INV_QTY_RETURNED]       INT             NULL,
    [OBJID]                  NVARCHAR (4000) NULL,
    [OBJVERSION]             NVARCHAR (2000) NULL,
    [Eff_Date]               DATE            NOT NULL,
    [End_Date]               DATE            NULL,
    [ActInd]                 CHAR (1)        NULL,
    [IsDeleted]              CHAR (1)        NULL,
    [BatchID]                BIGINT          NULL,
    [ProcessLogID]           BIGINT          NULL,
    CONSTRAINT [PK_PURCHASE_RECEIPT_RETURN] PRIMARY KEY CLUSTERED ([ORDER_NO] ASC, [LINE_NO] ASC, [RELEASE_NO] ASC, [RECEIPT_NO] ASC, [LOT_BATCH_NO] ASC, [SERIAL_NO] ASC, [RECEIPT_RETURN_TYPE_DB] ASC, [RETURN_REASON] ASC, [Eff_Date] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];

