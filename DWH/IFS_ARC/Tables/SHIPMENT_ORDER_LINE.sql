CREATE TABLE [IFS_ARC].[SHIPMENT_ORDER_LINE] (
    [SHIPMENT_ID]              INT             NOT NULL,
    [ORDER_NO]                 NVARCHAR (12)   NOT NULL,
    [LINE_NO]                  NVARCHAR (4)    NOT NULL,
    [REL_NO]                   NVARCHAR (4)    NOT NULL,
    [LINE_ITEM_NO]             INT             NOT NULL,
    [C_SHIPMENT_CONNECTED_QTY] INT             NULL,
    [OBJID]                    NVARCHAR (4000) NULL,
    [OBJVERSION]               NVARCHAR (2000) NULL,
    [Eff_Date]                 DATE            NOT NULL,
    [End_Date]                 DATE            NULL,
    [ActInd]                   CHAR (1)        NULL,
    [IsDeleted]                CHAR (1)        NULL,
    [BatchID]                  BIGINT          NULL,
    [ProcessLogID]             BIGINT          NULL,
    CONSTRAINT [PK_SHIPMENT_ORDER_LINE] PRIMARY KEY CLUSTERED ([SHIPMENT_ID] ASC, [ORDER_NO] ASC, [LINE_NO] ASC, [REL_NO] ASC, [LINE_ITEM_NO] ASC, [Eff_Date] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];





