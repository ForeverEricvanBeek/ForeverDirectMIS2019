CREATE TABLE [RT].[STOCK_REPORT_OBS] (
    [SITE]            NVARCHAR (5)    NOT NULL,
    [PART]            NVARCHAR (25)   NOT NULL,
    [DESCRIPTION]     NVARCHAR (200)  NULL,
    [COMMODITY_GROUP] NVARCHAR (5)    NULL,
    [ONHAND]          INT             NULL,
    [ON_CUST_ORDER]   DECIMAL (38, 2) NOT NULL,
    [AVAILABLE]       DECIMAL (38, 2) NULL,
    [ON_PURCH_ORDER]  INT             NOT NULL,
    [ON_SHOP_ORDER]   INT             NULL,
    [COMP_ON_SO]      DECIMAL (38, 4) NOT NULL,
    [Request_ID]      BIGINT          NULL,
    [BatchID]         BIGINT          NULL,
    [ProcessLogID]    BIGINT          NULL
);



