CREATE TABLE [DM].[F_Bom] (
    [D_SKU1_Skey]       BIGINT          NOT NULL,
    [D_SKU2_Skey]       BIGINT          NOT NULL,
    [D_SKU3_Skey]       BIGINT          NOT NULL,
    [D_SKU4_Skey]       BIGINT          NOT NULL,
    [D_SKU5_Skey]       BIGINT          NOT NULL,
    [Phase_In_Date]     DATE            NULL,
    [Phase_Out_Date]    DATE            NULL,
    [Revision_NR]       NVARCHAR (2)    NOT NULL,
    [D_Order_Type_Skey] BIGINT          NOT NULL,
    [QTY_Per_Assembley] DECIMAL (18, 2) NULL,
    [InsertDateTime]    DATETIME2 (7)   NULL,
    [UpdateDateTime]    DATETIME2 (7)   NULL,
    [BatchID]           BIGINT          NOT NULL,
    [ProcessLogID]      BIGINT          NULL
);

