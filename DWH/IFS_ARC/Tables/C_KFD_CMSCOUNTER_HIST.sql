CREATE TABLE [IFS_ARC].[C_KFD_CMSCOUNTER_HIST] (
    [TRANSACTION_ID]   INT           NOT NULL,
    [CONTRACT]         NVARCHAR (5)  NOT NULL,
    [PART_NO]          NVARCHAR (35) NOT NULL,
    [LOT_BATCH_NO]     NVARCHAR (50) NOT NULL,
    [ORDER_REF1]       NVARCHAR (25) NULL,
    [ORDER_REF2]       NVARCHAR (25) NULL,
    [ORDER_REF3]       NVARCHAR (25) NULL,
    [ORDER_REF4]       NVARCHAR (25) NULL,
    [PKG_UNIT_ID]      INT           NOT NULL,
    [CMS_COUNTER]      INT           NULL,
    [ROWVERSION]       DATETIME2 (7) NULL,
    [TRANSACTION_CODE] NVARCHAR (25) NOT NULL,
    [Eff_Date]         DATE          NOT NULL,
    [End_Date]         DATE          NULL,
    [ActInd]           CHAR (1)      NULL,
    [IsDeleted]        CHAR (1)      NULL,
    [BatchID]          BIGINT        NULL,
    [ProcessLogID]     BIGINT        NULL,
    CONSTRAINT [PK_C_KFD_CMSCOUNTER_HIST] PRIMARY KEY CLUSTERED ([CONTRACT] ASC, [Eff_Date] ASC, [LOT_BATCH_NO] ASC, [PART_NO] ASC, [PKG_UNIT_ID] ASC, [TRANSACTION_ID] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];

