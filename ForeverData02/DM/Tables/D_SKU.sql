﻿CREATE TABLE [DM].[D_SKU] (
    [D_SKU_Skey]                BIGINT          IDENTITY (1, 1) NOT NULL,
    [SKU_Code]                  NVARCHAR (20)   NOT NULL,
    [SKU_Name]                  NVARCHAR (100)  NOT NULL,
    [SKU_Type_Code]             NVARCHAR (200)  NULL,
    [SKU_Order_Type]            VARCHAR (2)     NULL,
    [SKU_Accounting_Group_Desc] VARCHAR (28)    NULL,
    [SKU_Country_of_Origin]     NVARCHAR (2)    NULL,
    [SKU_Description]           NVARCHAR (65)   NULL,
    [SKU_Generic_Name]          NVARCHAR (100)  NULL,
    [SKU_Product_Family_ID]     NVARCHAR (5)    NULL,
    [SKU_Generic_Description]   NVARCHAR (65)   NULL,
    [SKU_Second_Commodity]      NVARCHAR (5)    NULL,
    [SKU_Commodity_Desc]        NVARCHAR (35)   NULL,
    [SKU_Contract]              NVARCHAR (5)    NULL,
    [SKU_Purchase_LeadTime]     INT             NULL,
    [SKU_Manufactured_LeadTime] INT             NULL,
    [SKU_Unit_Measered]         NVARCHAR (10)   NULL,
    [SKU_ABC_Class]             NVARCHAR (1)    NULL,
    [SKU_IFS_Status]            NVARCHAR (1)    NULL,
    [SKU_Frequency_Class]       NVARCHAR (200)  NULL,
    [SKU_Size_Desc]             NVARCHAR (50)   NULL,
    [SKU_Barcode]               NVARCHAR (50)   NULL,
    [SKU_Weight]                NUMERIC (16, 4) NULL,
    [SKU_Weight_Type]           NVARCHAR (50)   NULL,
    [SKU_Volume]                NUMERIC (16, 4) NULL,
    [SKU_Volume_Type]           NVARCHAR (50)   NULL,
    [SKU_Height]                NUMERIC (16, 4) NULL,
    [SKU_Width]                 NUMERIC (16, 4) NULL,
    [SKU_Length]                NUMERIC (16, 4) NULL,
    [SKU_Dimension_Type]        NVARCHAR (50)   NULL,
    [SKU_Ind_Variable_Weight]   SMALLINT        NULL,
    [SKU_Dangerous_Good]        NVARCHAR (16)   NULL,
    [CheckSum]                  NVARCHAR (32)   NULL,
    [CheckSumSCD1]              NVARCHAR (32)   NULL,
    [CheckSumSCD2]              NVARCHAR (32)   NULL,
    [IsActual]                  INT             NOT NULL,
    [IsInferred]                INT             NULL,
    [IsDeleted]                 INT             NULL,
    [EffectiveDate]             DATE            NOT NULL,
    [ExpiryDate]                DATE            NULL,
    [InsertDateTime]            DATETIME2 (7)   NULL,
    [UpdateDateTime]            DATETIME2 (7)   NULL,
    [BatchID]                   BIGINT          NOT NULL,
    [ProcessLogID]              BIGINT          NULL,
    CONSTRAINT [PK_D_SKU] PRIMARY KEY CLUSTERED ([D_SKU_Skey] ASC) WITH (FILLFACTOR = 80)
);





