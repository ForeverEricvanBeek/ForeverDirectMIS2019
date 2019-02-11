CREATE TABLE [IFS_ARC].[C_KEWILL_STOCK_RECON] (
    [CONTRACT]           NVARCHAR (5)    NOT NULL,
    [CUST_NO]            NVARCHAR (50)   NOT NULL,
    [PART_NO]            NVARCHAR (50)   NOT NULL,
    [CUSTOMS_STATUS]     NVARCHAR (50)   NOT NULL,
    [LOT_BATCH_NO]       NVARCHAR (20)   NOT NULL,
    [QTY_OPEN_INBOUND]   INT             NULL,
    [QTY_PHYSICAL_STOCK] INT             NULL,
    [QTY_OPEN_OUTBOUND]  INT             NULL,
    [INVENTORY_UOM]      NVARCHAR (10)   NULL,
    [OBJID]              NVARCHAR (4000) NULL,
    [OBJVERSION]         NVARCHAR (14)   NOT NULL,
    [Eff_Date]           DATE            NOT NULL,
    [End_Date]           DATE            NULL,
    [ActInd]             CHAR (1)        NULL,
    [IsDeleted]          CHAR (1)        NULL,
    [BatchID]            BIGINT          NULL,
    [ProcessLogID]       BIGINT          NULL,
    CONSTRAINT [PK_C_KEWILL_STOCK_RECON] PRIMARY KEY CLUSTERED ([CONTRACT] ASC, [CUST_NO] ASC, [PART_NO] ASC, [CUSTOMS_STATUS] ASC, [LOT_BATCH_NO] ASC, [OBJVERSION] ASC, [Eff_Date] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];





