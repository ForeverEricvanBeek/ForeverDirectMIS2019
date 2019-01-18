CREATE TABLE [DM].[D_Product_Family] (
    [D_Product_Family_Skey] BIGINT        IDENTITY (1, 1) NOT NULL,
    [FAM_Prod_ID]           NVARCHAR (5)  NOT NULL,
    [Description]           NVARCHAR (35) NULL,
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
    CONSTRAINT [PK_D_Product_Family] PRIMARY KEY CLUSTERED ([D_Product_Family_Skey] ASC) WITH (FILLFACTOR = 80)
);



