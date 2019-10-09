﻿CREATE TABLE [DM].[D_SKU] (
    [D_SKU_Skey]              BIGINT          IDENTITY (1, 1) NOT NULL,
    [SKU_Code]                NVARCHAR (20)   NOT NULL,
    [SKU_Name]                NVARCHAR (100)  NOT NULL,
    [Type_Code]               NVARCHAR (200)  NULL,
    [Order_Type]              VARCHAR (2)     NULL,
    [Accounting_Group_Desc]   VARCHAR (28)    NULL,
    [Country_of_Origin]       NVARCHAR (2)    NULL,
    [SKU_Description]         NVARCHAR (65)   NULL,
    [Generic_SKU_Name]        NVARCHAR (100)  NULL,
    [Generic_SKU_Description] NVARCHAR (65)   NULL,
    [Second_Commodity]        NVARCHAR (5)    NULL,
    [Commodity_Desc]          NVARCHAR (35)   NULL,
    [Contract]                NVARCHAR (5)    NULL,
    [Purchase_LeadTime]       INT             NULL,
    [Manufactured_LeadTime]   INT             NULL,
    [Unit_Measered]           NVARCHAR (10)   NULL,
    [ABC_Class]               NVARCHAR (1)    NULL,
    [IFS_Status]              NVARCHAR (1)    NULL,
    [Frequency_Class]         NVARCHAR (200)  NULL,
    [SKU_Size_Desc]           NVARCHAR (50)   NULL,
    [SKU_Barcode]             NVARCHAR (50)   NULL,
    [Unit_Weight]             NUMERIC (16, 4) NULL,
    [Weight_Type]             NVARCHAR (50)   NULL,
    [Unit_Volume]             NUMERIC (16, 4) NULL,
    [Volume_Type]             NVARCHAR (50)   NULL,
    [Unit_Height]             NUMERIC (16, 4) NULL,
    [Unit_Width]              NUMERIC (16, 4) NULL,
    [Unit_Length]             NUMERIC (16, 4) NULL,
    [Dimension_Type]          NVARCHAR (50)   NULL,
    [Ind_Variable_Weight]     SMALLINT        NULL,
    [Dangerous_Good]          NVARCHAR (16)   NULL,
    [CheckSum]                NVARCHAR (32)   NULL,
    [CheckSumSCD1]            NVARCHAR (32)   NULL,
    [CheckSumSCD2]            NVARCHAR (32)   NULL,
    [IsActual]                INT             NOT NULL,
    [IsInferred]              INT             NULL,
    [IsDeleted]               INT             NULL,
    [EffectiveDate]           DATE            NOT NULL,
    [ExpiryDate]              DATE            NULL,
    [InsertDateTime]          DATETIME2 (7)   NULL,
    [UpdateDateTime]          DATETIME2 (7)   NULL,
    [BatchID]                 BIGINT          NOT NULL,
    [ProcessLogID]            BIGINT          NULL,
    CONSTRAINT [PK_D_SKU] PRIMARY KEY CLUSTERED ([D_SKU_Skey] ASC) WITH (FILLFACTOR = 80)
);

