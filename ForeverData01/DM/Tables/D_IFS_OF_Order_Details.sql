﻿CREATE TABLE [DM].[D_IFS_OF_Order_Details] (
    [D_IFS_OF_Order_Details_Skey] BIGINT          IDENTITY (1, 1) NOT NULL,
    [DateKey]                     DATE            NULL,
    [Transporter_Ship_Via_Code]   NVARCHAR (4)    NULL,
    [Order_ID]                    INT             NOT NULL,
    [Order_ID_IFS]                NVARCHAR (12)   NOT NULL,
    [SKU_Name]                    NVARCHAR (25)   NOT NULL,
    [Line_No]                     NVARCHAR (4)    NOT NULL,
    [Rel_No]                      NVARCHAR (4)    NOT NULL,
    [Status]                      NVARCHAR (4000) NOT NULL,
    [Date_Item_Ordered]           DATE            NULL,
    [Ship_Date]                   DATE            NULL,
    [Shipment_ID]                 VARCHAR (20)    NULL,
    [Number_Items_IFS_Ordered]    DECIMAL (18, 2) NULL,
    [Number_Items_Shipped]        INT             NULL,
    [CheckSum]                    NVARCHAR (32)   NULL,
    [CheckSumSCD1]                NVARCHAR (32)   NULL,
    [CheckSumSCD2]                NVARCHAR (32)   NULL,
    [IsActual]                    INT             NOT NULL,
    [IsInferred]                  INT             NULL,
    [IsDeleted]                   INT             NULL,
    [EffectiveDate]               DATE            NOT NULL,
    [ExpiryDate]                  DATE            NULL,
    [InsertDateTime]              DATETIME2 (7)   NULL,
    [UpdateDateTime]              DATETIME2 (7)   NULL,
    [BatchID]                     BIGINT          NOT NULL,
    [ProcessLogID]                BIGINT          NULL,
    CONSTRAINT [PK_D_IFS_OF_Order_Details] PRIMARY KEY CLUSTERED ([D_IFS_OF_Order_Details_Skey] ASC) WITH (FILLFACTOR = 80)
);
