﻿CREATE TABLE [DM].[D_Customer] (
    [D_Customer_Skey]           BIGINT         IDENTITY (1, 1) NOT NULL,
    [Customer_ID]               NVARCHAR (300) NULL,
    [Customer_Name]             NVARCHAR (255) NULL,
    [Customer_Address1]         NVARCHAR (255) NULL,
    [Customer_Address2]         NVARCHAR (255) NULL,
    [Customer_City]             NVARCHAR (255) NULL,
    [Customer_Country_Code]     NVARCHAR (5)   NULL,
    [Customer_Postal_Code]      NVARCHAR (25)  NULL,
    [Customer_State]            NVARCHAR (25)  NULL,
    [Customer_First_Order_Date] DATETIME2 (7)  NULL,
    [Customer_Last_Order_Date]  DATETIME2 (7)  NULL,
    [Customer_NumOf_Orders]     INT            NULL,
    [CheckSum]                  NVARCHAR (32)  NULL,
    [CheckSumSCD1]              NVARCHAR (32)  NULL,
    [CheckSumSCD2]              NVARCHAR (32)  NULL,
    [IsActual]                  INT            NOT NULL,
    [IsInferred]                INT            NULL,
    [IsDeleted]                 INT            NULL,
    [EffectiveDate]             DATE           NOT NULL,
    [ExpiryDate]                DATE           NULL,
    [InsertDateTime]            DATETIME2 (7)  NULL,
    [UpdateDateTime]            DATETIME2 (7)  NULL,
    [BatchID]                   BIGINT         NOT NULL,
    [ProcessLogID]              BIGINT         NULL,
    CONSTRAINT [PK_D_Customer] PRIMARY KEY CLUSTERED ([D_Customer_Skey] ASC) WITH (FILLFACTOR = 80)
);


GO
CREATE NONCLUSTERED INDEX [NI_D_Customer_Customer_ID]
    ON [DM].[D_Customer]([Customer_ID] ASC, [IsActual] ASC) WITH (FILLFACTOR = 80);

