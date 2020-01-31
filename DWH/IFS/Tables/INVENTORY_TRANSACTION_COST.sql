CREATE TABLE [IFS].[INVENTORY_TRANSACTION_COST] (
    [TRANSACTION_ID]               INT             NOT NULL,
    [CONTRACT]                     NVARCHAR (5)    NOT NULL,
    [COST_BUCKET_ID]               NVARCHAR (5)    NOT NULL,
    [COMPANY]                      NVARCHAR (20)   NOT NULL,
    [COST_SOURCE_ID]               NVARCHAR (20)   NOT NULL,
    [ACCOUNTING_YEAR]              NVARCHAR (4)    NOT NULL,
    [ADDED_TO_THIS_TRANSACTION]    NVARCHAR (4000) NULL,
    [ADDED_TO_THIS_TRANSACTION_DB] NVARCHAR (5)    NOT NULL,
    [BUCKET_POSTING_GROUP_ID]      NVARCHAR (20)   NULL,
    [UNIT_COST]                    DECIMAL (18, 8) NULL,
    [COST_BUCKET_PUBLIC_TYPE]      NVARCHAR (20)   NULL,
    [LEVEL_UNIT_COST]              INT             NULL,
    [OBJID]                        NVARCHAR (4000) NULL,
    [OBJVERSION]                   NVARCHAR (14)   NULL,
    [Eff_Date]                     DATE            NOT NULL,
    [End_Date]                     DATE            NULL,
    [ActInd]                       CHAR (1)        NULL,
    [IsDeleted]                    CHAR (1)        NULL,
    [BatchID]                      BIGINT          NULL,
    [ProcessLogID]                 BIGINT          NULL,
    CONSTRAINT [PK_INVENTORY_TRANSACTION_COST] PRIMARY KEY CLUSTERED ([TRANSACTION_ID] ASC, [CONTRACT] ASC, [COST_BUCKET_ID] ASC, [COMPANY] ASC, [COST_SOURCE_ID] ASC, [ACCOUNTING_YEAR] ASC, [ADDED_TO_THIS_TRANSACTION_DB] ASC, [Eff_Date] ASC) ON [DWH_IFS]
) ON [DWH_IFS];

