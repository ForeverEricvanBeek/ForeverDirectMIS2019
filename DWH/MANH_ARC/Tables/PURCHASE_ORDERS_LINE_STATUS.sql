CREATE TABLE [MANH_ARC].[PURCHASE_ORDERS_LINE_STATUS] (
    [PURCHASE_ORDERS_LINE_STATUS] INT           NOT NULL,
    [DESCRIPTION]                 NVARCHAR (40) NOT NULL,
    [NOTE]                        NVARCHAR (40) NULL,
    [Eff_Date]                    DATE          NOT NULL,
    [End_Date]                    DATE          NULL,
    [ActInd]                      CHAR (1)      NULL,
    [IsDeleted]                   CHAR (1)      NULL,
    [BatchID]                     BIGINT        NULL,
    [ProcessLogID]                BIGINT        NULL,
    CONSTRAINT [PK_MANH_PURCHASE_ORDERS_LINE_STATUS] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [PURCHASE_ORDERS_LINE_STATUS] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];



