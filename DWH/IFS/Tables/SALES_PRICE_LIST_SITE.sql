CREATE TABLE [IFS].[SALES_PRICE_LIST_SITE] (
    [CONTRACT]      NVARCHAR (5)    NOT NULL,
    [PRICE_LIST_NO] NVARCHAR (10)   NOT NULL,
    [OBJID]         NVARCHAR (4000) NULL,
    [OBJVERSION]    NVARCHAR (2000) NULL,
    [Eff_Date]      DATE            NOT NULL,
    [End_Date]      DATE            NULL,
    [ActInd]        CHAR (1)        NULL,
    [IsDeleted]     CHAR (1)        NULL,
    [BatchID]       BIGINT          NULL,
    [ProcessLogID]  BIGINT          NULL,
    CONSTRAINT [PK_SALES_PRICE_LIST_SITE] PRIMARY KEY CLUSTERED ([CONTRACT] ASC, [Eff_Date] ASC, [PRICE_LIST_NO] ASC) ON [DWH_IFS]
) ON [DWH_IFS];



