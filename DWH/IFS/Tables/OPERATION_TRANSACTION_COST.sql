CREATE TABLE [IFS].[OPERATION_TRANSACTION_COST] (
    [TRANSACTION_ID]             INT              NOT NULL,
    [ACCOUNTING_YEAR]            NVARCHAR (4)     NOT NULL,
    [COMPANY]                    NVARCHAR (20)    NOT NULL,
    [COST_SOURCE_ID]             NVARCHAR (20)    NOT NULL,
    [CONTRACT]                   NVARCHAR (5)     NOT NULL,
    [PART_NO]                    NVARCHAR (25)    NOT NULL,
    [COST_BUCKET_ID]             NVARCHAR (5)     NOT NULL,
    [BUCKET_POSTING_GROUP_ID]    NVARCHAR (20)    NULL,
    [COST_BUCKET_PUBLIC_TYPE]    NVARCHAR (4000)  NULL,
    [COST_BUCKET_PUBLIC_TYPE_DB] NVARCHAR (20)    NULL,
    [TOTAL_COST]                 DECIMAL (36, 24) NULL,
    [ORIGINAL_TRANSACTION_ID]    INT              NULL,
    [OBJID]                      NVARCHAR (4000)  NULL,
    [OBJVERSION]                 NVARCHAR (14)    NULL,
    [Eff_Date]                   DATE             NOT NULL,
    [End_Date]                   DATE             NULL,
    [ActInd]                     CHAR (1)         NULL,
    [IsDeleted]                  CHAR (1)         NULL,
    [BatchID]                    BIGINT           NULL,
    [ProcessLogID]               BIGINT           NULL,
    CONSTRAINT [PK_OPERATION_TRANSACTION_COST] PRIMARY KEY CLUSTERED ([TRANSACTION_ID] ASC, [COMPANY] ASC, [COST_SOURCE_ID] ASC, [CONTRACT] ASC, [PART_NO] ASC, [COST_BUCKET_ID] ASC, [ACCOUNTING_YEAR] ASC, [Eff_Date] ASC) ON [DWH_IFS]
) ON [DWH_IFS];



