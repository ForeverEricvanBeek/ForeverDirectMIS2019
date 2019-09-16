CREATE TABLE [DM].[D_Price_List_His] (
    [D_Price_List_His_Skey] BIGINT        IDENTITY (1, 1) NOT NULL,
    [Customer_ID]           NVARCHAR (20) NOT NULL,
    [Sales_Price_Group_ID]  NVARCHAR (10) NULL,
    [Price_List_NO]         NVARCHAR (10) NULL,
    [Start_Date]            DATE          NOT NULL,
    [End_Date]              DATE          NULL,
    [CheckSum]              NVARCHAR (32) NULL,
    [CheckSumSCD1]          NVARCHAR (32) NULL,
    [CheckSumSCD2]          NVARCHAR (32) NULL,
    [IsActual]              INT           NOT NULL,
    [IsInferred]            INT           NULL,
    [IsDeleted]             INT           NULL,
    [EffectiveDate]         DATE          NOT NULL,
    [ExpiryDate]            DATE          NULL,
    [InsertDateTime]        DATETIME2 (7) NULL,
    [UpdateDateTime]        DATETIME2 (7) NULL,
    [BatchID]               BIGINT        NOT NULL,
    [ProcessLogID]          BIGINT        NULL,
    CONSTRAINT [PK_D_Price_List_His] PRIMARY KEY CLUSTERED ([D_Price_List_His_Skey] ASC) WITH (FILLFACTOR = 80)
);

