CREATE TABLE [DM].[D_FLP_Customers] (
    [D_FLP_Customers_Skey]  BIGINT         IDENTITY (1, 1) NOT NULL,
    [Customer_ID]           NVARCHAR (20)  NOT NULL,
    [Country_Code]          NVARCHAR (2)   NULL,
    [Name]                  NVARCHAR (100) NULL,
    [Price_List_NO_Actual]  NVARCHAR (20)  NULL,
    [Start_Date_Price_List] DATE           NULL,
    [Party]                 NVARCHAR (20)  NULL,
    [CheckSum]              NVARCHAR (32)  NULL,
    [CheckSumSCD1]          NVARCHAR (32)  NULL,
    [CheckSumSCD2]          NVARCHAR (32)  NULL,
    [IsActual]              INT            NOT NULL,
    [IsInferred]            INT            NULL,
    [IsDeleted]             INT            NULL,
    [EffectiveDate]         DATE           NOT NULL,
    [ExpiryDate]            DATE           NULL,
    [InsertDateTime]        DATETIME2 (7)  NULL,
    [UpdateDateTime]        DATETIME2 (7)  NULL,
    [BatchID]               BIGINT         NOT NULL,
    [ProcessLogID]          BIGINT         NULL,
    CONSTRAINT [PK_D_FLP_Customers] PRIMARY KEY CLUSTERED ([D_FLP_Customers_Skey] ASC) WITH (FILLFACTOR = 80)
);

