CREATE TABLE [DM].[D_Order_Type] (
    [D_Order_Type_Skey]      BIGINT        IDENTITY (1, 1) NOT NULL,
    [Order_Type_Code]        NVARCHAR (15) NULL,
    [Order_Type_Description] NVARCHAR (50) NULL,
    [CheckSum]               NVARCHAR (32) NULL,
    [CheckSumSCD1]           NVARCHAR (32) NULL,
    [CheckSumSCD2]           NVARCHAR (32) NULL,
    [IsActual]               INT           NULL,
    [IsInferred]             INT           NULL,
    [IsDeleted]              INT           NULL,
    [EffectiveDate]          DATE          NULL,
    [ExpiryDate]             DATE          NULL,
    [InsertDateTime]         DATETIME2 (7) NULL,
    [UpdateDateTime]         DATETIME2 (7) NULL,
    [BatchID]                BIGINT        NULL,
    [ProcessLogID]           BIGINT        NULL,
    CONSTRAINT [PK_D_Order_Type] PRIMARY KEY CLUSTERED ([D_Order_Type_Skey] ASC) WITH (FILLFACTOR = 80)
);


GO
CREATE NONCLUSTERED INDEX [NI_D_Order_Type_Type]
    ON [DM].[D_Order_Type]([Order_Type_Code] ASC, [IsActual] ASC) WITH (FILLFACTOR = 80);

