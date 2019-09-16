CREATE TABLE [DM].[D_BOM_Explosie] (
    [D_BOM_Explosie_Skey]       BIGINT         IDENTITY (1, 1) NOT NULL,
    [BOM_ID]                    BIGINT         NOT NULL,
    [Product_Name]              NVARCHAR (200) NULL,
    [Sales_Part_Level_0]        NVARCHAR (25)  NULL,
    [Component_Level_1]         NVARCHAR (25)  NULL,
    [Component_Level_2]         NVARCHAR (25)  NULL,
    [Component_Level_3]         NVARCHAR (25)  NULL,
    [Phase_In_Date]             DATE           NULL,
    [Phase_Out_Date]            DATE           NULL,
    [Revision_NR]               NVARCHAR (2)   NULL,
    [Inkoop_part]               NVARCHAR (25)  NULL,
    [QTY_Per_Assembley_Verkoop] INT            NULL,
    [Purchase_Part]             NVARCHAR (25)  NULL,
    [Bonus_Part]                NVARCHAR (5)   NULL,
    [Sale_Type]                 VARCHAR (2)    NULL,
    [Type]                      NVARCHAR (20)  NULL,
    [CheckSum]                  NVARCHAR (32)  NULL,
    [CheckSumSCD1]              NVARCHAR (32)  NULL,
    [CheckSumSCD2]              NVARCHAR (32)  NULL,
    [IsActual]                  INT            NOT NULL,
    [IsInferred]                INT            NULL,
    [IsDeleted]                 INT            NULL,
    [EffectiveDate]             DATE           NOT NULL,
    [ExpiryDate]                DATE           NULL,
    [InsertDateTime]            DATETIME2 (7)  NULL,
    [UpdateDateTime]            DATETIME2 (7)  NULL,
    [BatchID]                   BIGINT         NOT NULL,
    [ProcessLogID]              BIGINT         NULL,
    CONSTRAINT [PK_D_BOM_Explosie] PRIMARY KEY CLUSTERED ([D_BOM_Explosie_Skey] ASC) WITH (FILLFACTOR = 80)
);



