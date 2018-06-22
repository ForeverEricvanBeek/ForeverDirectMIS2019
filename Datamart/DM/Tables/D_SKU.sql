CREATE TABLE [DM].[D_SKU] (
    [D_SKU_Skey]              BIGINT          IDENTITY (1, 1) NOT NULL,
    [SKU_Code]                INT             NOT NULL,
    [SKU_Name]                NVARCHAR (100)  NOT NULL,
    [SKU_Description]         NVARCHAR (65)   NOT NULL,
    [Generic_SKU_Name]        NVARCHAR (100)  NULL,
    [Generic_SKU_Description] NVARCHAR (65)   NULL,
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


GO
CREATE NONCLUSTERED INDEX [NI_D_SKU_SKU]
    ON [DM].[D_SKU]([SKU_Code] ASC, [IsActual] ASC) WITH (FILLFACTOR = 80);

