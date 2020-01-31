CREATE TABLE [IFS_ARC].[INVENTORY_PART_CONFIG] (
    [CONTRACT]                  NVARCHAR (5)    NOT NULL,
    [PART_NO]                   NVARCHAR (25)   NOT NULL,
    [CONFIGURATION_ID]          NVARCHAR (50)   NOT NULL,
    [LATEST_PURCHASE_PRICE]     DECIMAL (18, 6) NULL,
    [AVERAGE_PURCHASE_PRICE]    DECIMAL (18, 6) NULL,
    [ESTIMATED_MATERIAL_COST]   DECIMAL (18, 6) NULL,
    [ACCUMULATED_PURCHASE_DIFF] DECIMAL (18, 6) NULL,
    [LAST_ACTUAL_COST_CALC]     DATETIME2 (7)   NULL,
    [ACCUMULATED_MANUF_DIFF]    INT             NULL,
    [LAST_MANUF_COST_CALC]      DATETIME2 (7)   NULL,
    [OBJID]                     NVARCHAR (4000) NULL,
    [OBJVERSION]                NVARCHAR (2000) NULL,
    [Eff_Date]                  DATE            NOT NULL,
    [End_Date]                  DATE            NULL,
    [ActInd]                    CHAR (1)        NULL,
    [IsDeleted]                 CHAR (1)        NULL,
    [BatchID]                   BIGINT          NULL,
    [ProcessLogID]              BIGINT          NULL,
    CONSTRAINT [PK_INVENTORY_PART_CONFIG] PRIMARY KEY CLUSTERED ([PART_NO] ASC, [CONTRACT] ASC, [CONFIGURATION_ID] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];

