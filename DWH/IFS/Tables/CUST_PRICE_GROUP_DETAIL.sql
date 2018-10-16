CREATE TABLE [IFS].[CUST_PRICE_GROUP_DETAIL] (
    [CUST_PRICE_GROUP_ID]     NVARCHAR (10)   NOT NULL,
    [SALES_PRICE_GROUP_ID]    NVARCHAR (10)   NOT NULL,
    [CURRENCY_CODE]           NVARCHAR (3)    NOT NULL,
    [COMPANY]                 NVARCHAR (20)   NOT NULL,
    [PRICE_LIST_NO]           NVARCHAR (10)   NULL,
    [PREFERRED_PRICE_LIST]    NVARCHAR (4000) NULL,
    [PREFERRED_PRICE_LIST_DB] NVARCHAR (30)   NULL,
    [OBJID]                   NVARCHAR (4000) NULL,
    [OBJVERSION]              NVARCHAR (2000) NULL,
    [Eff_Date]                DATE            NOT NULL,
    [End_Date]                DATE            NULL,
    [ActInd]                  CHAR (1)        NULL,
    [IsDeleted]               CHAR (1)        NULL,
    [BatchID]                 BIGINT          NULL,
    [ProcessLogID]            BIGINT          NULL,
    CONSTRAINT [PK_CUST_PRICE_GROUP_DETAIL] PRIMARY KEY CLUSTERED ([COMPANY] ASC, [CURRENCY_CODE] ASC, [CUST_PRICE_GROUP_ID] ASC, [Eff_Date] ASC, [SALES_PRICE_GROUP_ID] ASC) ON [DWH_IFS]
) ON [DWH_IFS];



