CREATE TABLE [IFS_ARC].[PURCHASE_QUANTITY_PRICE] (
    [CONTRACT]               NVARCHAR (5)    NOT NULL,
    [PART_NO]                NVARCHAR (25)   NOT NULL,
    [VENDOR_NO]              NVARCHAR (20)   NOT NULL,
    [LINE_NO]                NVARCHAR (4)    NOT NULL,
    [MIN_QTY]                INT             NULL,
    [VALID_FROM]             DATETIME2 (7)   NULL,
    [CURRENCY_CODE]          NVARCHAR (3)    NULL,
    [QUOTE_NO]               NVARCHAR (10)   NULL,
    [VALID_UNTIL]            DATETIME2 (7)   NULL,
    [QUOTE_PRICE]            DECIMAL (18, 2) NULL,
    [DISCOUNT]               INT             NULL,
    [ADDITIONAL_COST_AMOUNT] INT             NULL,
    [PRICE_CATALOG_NO]       NVARCHAR (20)   NULL,
    [PRICE_CATALOG_REF]      NVARCHAR (20)   NULL,
    [DATE_CREATED]           DATETIME2 (7)   NULL,
    [OBJID]                  NVARCHAR (4000) NULL,
    [OBJVERSION]             NVARCHAR (2000) NULL,
    [OBJSTATE]               NVARCHAR (20)   NULL,
    [OBJEVENTS]              NVARCHAR (4000) NULL,
    [STATE]                  NVARCHAR (4000) NULL,
    [Eff_Date]               DATE            NOT NULL,
    [End_Date]               DATE            NULL,
    [ActInd]                 CHAR (1)        NULL,
    [IsDeleted]              CHAR (1)        NULL,
    [BatchID]                BIGINT          NULL,
    [ProcessLogID]           BIGINT          NULL,
    CONSTRAINT [PK_PURCHASE_QUANTITY_PRICE] PRIMARY KEY CLUSTERED ([PART_NO] ASC, [CONTRACT] ASC, [VENDOR_NO] ASC, [LINE_NO] ASC, [Eff_Date] ASC) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];





