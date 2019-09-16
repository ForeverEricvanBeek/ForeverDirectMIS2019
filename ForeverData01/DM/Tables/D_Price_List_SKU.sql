CREATE TABLE [DM].[D_Price_List_SKU] (
    [D_Price_List_SKU_Skey] BIGINT          IDENTITY (1, 1) NOT NULL,
    [Price_List_NO]         NVARCHAR (25)   NOT NULL,
    [Part_NO]               NVARCHAR (25)   NULL,
    [RN]                    BIGINT          NULL,
    [Valid_From_Date]       DATE            NULL,
    [Valid_Till_Date]       DATE            NULL,
    [Base_Price]            DECIMAL (18, 2) NULL,
    [Sales_Price]           DECIMAL (18, 2) NULL,
    [CheckSum]              NVARCHAR (32)   NULL,
    [CheckSumSCD1]          NVARCHAR (32)   NULL,
    [CheckSumSCD2]          NVARCHAR (32)   NULL,
    [IsActual]              INT             NOT NULL,
    [IsInferred]            INT             NULL,
    [IsDeleted]             INT             NULL,
    [EffectiveDate]         DATE            NOT NULL,
    [ExpiryDate]            DATE            NULL,
    [InsertDateTime]        DATETIME2 (7)   NULL,
    [UpdateDateTime]        DATETIME2 (7)   NULL,
    [BatchID]               BIGINT          NOT NULL,
    [ProcessLogID]          BIGINT          NULL,
    CONSTRAINT [PK_D_Price_List_SKU] PRIMARY KEY CLUSTERED ([D_Price_List_SKU_Skey] ASC) WITH (FILLFACTOR = 80)
);

