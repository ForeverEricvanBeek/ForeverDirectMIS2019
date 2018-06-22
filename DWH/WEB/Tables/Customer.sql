CREATE TABLE [WEB].[Customer] (
    [ORDER_ID]                  NVARCHAR (MAX) NULL,
    [Customer_ID]               NVARCHAR (MAX) NULL,
    [Customer_Name]             NVARCHAR (50)  NULL,
    [Customer_Address1]         NVARCHAR (75)  NULL,
    [Customer_address2]         NVARCHAR (75)  NULL,
    [Customer_City]             NVARCHAR (40)  NULL,
    [Customer_Country_Code]     NVARCHAR (2)   NULL,
    [Customer_Postal_Code]      NVARCHAR (10)  NULL,
    [Customer_State]            NVARCHAR (3)   NULL,
    [Customer_First_Order_Date] DATE           NULL,
    [Customer_Last_Order_Date]  DATE           NULL,
    [Customer_Numof_Orders]     INT            NULL,
    [Eff_Date]                  DATE           NULL,
    [End_Date]                  DATE           NULL,
    [ActInd]                    CHAR (1)       NULL,
    [IsDeleted]                 CHAR (1)       NULL
);

