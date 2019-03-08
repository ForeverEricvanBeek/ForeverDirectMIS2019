CREATE TABLE [DM].[F_Invoiced_Sales] (
    [DateKey]                 BIGINT          NULL,
    [Accounting_Year]         INT             NULL,
    [Accounting_Month]        INT             NULL,
    [Company_Site]            NVARCHAR (20)   NULL,
    [OP_Country]              NVARCHAR (4)    NOT NULL,
    [Country_Code]            NVARCHAR (2)    NULL,
    [FAM_Prod_ID]             INT             NULL,
    [Prod_Family_Desc]        NVARCHAR (35)   NULL,
    [Sales_Item]              NVARCHAR (100)  NULL,
    [Sales_Item_Desc]         NVARCHAR (2000) NULL,
    [Customer]                NVARCHAR (100)  NULL,
    [Price_List]              NVARCHAR (10)   NULL,
    [Company]                 NVARCHAR (20)   NULL,
    [Invoiced_QTY]            INT             NULL,
    [Cost]                    DECIMAL (38, 2) NULL,
    [Gross_Sales_Amount]      DECIMAL (38, 2) NULL,
    [Discounted_Sales_Amount] DECIMAL (38, 2) NULL,
    [Net_Amount]              DECIMAL (38, 2) NULL,
    [Net_Curr_Amount]         DECIMAL (38, 2) NULL,
    [Contribution_Margin]     DECIMAL (38, 2) NULL,
    [Sales_Margin]            DECIMAL (38, 2) NULL,
    [Invoice_Number]          NVARCHAR (50)   NULL,
    [Invoice_Type]            NVARCHAR (15)   NULL,
    [InsertDateTime]          DATETIME2 (7)   NOT NULL,
    [UpdateDateTime]          DATETIME2 (7)   NOT NULL,
    [BatchID]                 BIGINT          NOT NULL,
    [ProcessLogID]            BIGINT          NOT NULL
);



