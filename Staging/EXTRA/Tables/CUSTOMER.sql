CREATE TABLE [EXTRA].[CUSTOMER] (
    [Customer_ID]               NVARCHAR (300) NOT NULL,
    [Customer_Name]             NVARCHAR (100) NULL,
    [Customer_Address1]         NVARCHAR (100) NULL,
    [Customer_Address2]         NVARCHAR (100) NULL,
    [Customer_City]             NVARCHAR (100) NULL,
    [Customer_Country_Code]     NVARCHAR (10)  NULL,
    [Customer_Postal_Code]      NVARCHAR (10)  NULL,
    [Customer_State]            NVARCHAR (10)  NULL,
    [Customer_Phone]            NVARCHAR (100) NULL,
    [Customer_Email]            NVARCHAR (256) NULL,
    [Customer_First_Order_Date] DATETIME2 (7)  NOT NULL,
    [Customer_Last_Order_Date]  DATETIME2 (7)  NULL,
    [Customer_NumOf_Orders]     INT            NULL,
    [BatchID]                   BIGINT         NOT NULL,
    [ProcessLogID]              BIGINT         NULL,
    CONSTRAINT [PK_CUSTOMER_ID] PRIMARY KEY CLUSTERED ([Customer_ID] ASC, [Customer_First_Order_Date] ASC)
);



