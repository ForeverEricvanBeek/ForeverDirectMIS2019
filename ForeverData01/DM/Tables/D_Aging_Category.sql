CREATE TABLE [DM].[D_Aging_Category] (
    [D_Aging_Category_Skey] BIGINT        IDENTITY (1, 1) NOT NULL,
    [Aging_Code]            INT           NULL,
    [Lower_Bound]           INT           NOT NULL,
    [Upper_Bound]           INT           NOT NULL,
    [Months]                INT           NULL,
    [Category_Code]         NVARCHAR (20) NULL,
    [Category_Description]  NVARCHAR (35) NULL,
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
    CONSTRAINT [PK_D_Aging_Category] PRIMARY KEY CLUSTERED ([D_Aging_Category_Skey] ASC) WITH (FILLFACTOR = 80)
);

