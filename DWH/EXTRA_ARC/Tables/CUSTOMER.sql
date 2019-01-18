CREATE TABLE [EXTRA_ARC].[CUSTOMER] (
    [Customer_ID]               NVARCHAR (300) NOT NULL,
    [Customer_Name]             NVARCHAR (100) NULL,
    [Customer_Address1]         NVARCHAR (100) NULL,
    [Customer_Address2]         NVARCHAR (100) NULL,
    [Customer_City]             NVARCHAR (100) NULL,
    [Customer_Country_Code]     NVARCHAR (10)  NULL,
    [Customer_Postal_Code]      NVARCHAR (10)  NULL,
    [Customer_State]            NVARCHAR (10)  NULL,
    [Customer_First_Order_Date] DATETIME2 (7)  NOT NULL,
    [Customer_Last_Order_Date]  DATETIME2 (7)  NULL,
    [Customer_NumOf_Orders]     INT            NULL,
    [Eff_Date]                  DATE           NOT NULL,
    [End_Date]                  DATE           NULL,
    [ActInd]                    CHAR (1)       NULL,
    [IsDeleted]                 CHAR (1)       NULL,
    [BatchID]                   BIGINT         NULL,
    [ProcessLogID]              BIGINT         NULL,
    CONSTRAINT [PK_CUSTOMER] PRIMARY KEY CLUSTERED ([Customer_First_Order_Date] ASC, [Customer_ID] ASC, [Eff_Date] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_EXTRA_ARC]
) ON [DWH_EXTRA_ARC];



