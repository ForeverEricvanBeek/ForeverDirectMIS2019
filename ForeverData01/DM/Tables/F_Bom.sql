CREATE TABLE [DM].[F_Bom] (
    [Sales_SKU_Code]        NVARCHAR (25)   NULL,
    [Component_L1_SKU_Code] NVARCHAR (25)   NULL,
    [Component_L2_SKU_Code] NVARCHAR (25)   NULL,
    [Component_L3_SKU_Code] NVARCHAR (25)   NULL,
    [Purchase_SKU_Code]     NVARCHAR (25)   NULL,
    [Phase_In_Date]         DATE            NULL,
    [Phase_Out_Date]        DATE            NULL,
    [Revision_NR]           NVARCHAR (2)    NULL,
    [Sale_Type]             VARCHAR (2)     NULL,
    [QTY_Per_Assembley]     DECIMAL (18, 2) NULL,
    [InsertDateTime]        DATETIME2 (7)   NULL,
    [UpdateDateTime]        DATETIME2 (7)   NULL,
    [BatchID]               BIGINT          NOT NULL,
    [ProcessLogID]          BIGINT          NULL
);

