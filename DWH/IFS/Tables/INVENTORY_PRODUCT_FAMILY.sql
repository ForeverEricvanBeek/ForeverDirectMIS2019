CREATE TABLE [IFS].[INVENTORY_PRODUCT_FAMILY] (
    [PART_PRODUCT_FAMILY] NVARCHAR (5)   NOT NULL,
    [DESCRIPTION]         NVARCHAR (35)  NULL,
    [C_TO_CMS]            NVARCHAR (5)   NULL,
    [OBJID]               NVARCHAR (100) NULL,
    [OBJVERSION]          BIGINT         NULL,
    [Eff_Date]            DATE           NOT NULL,
    [End_Date]            DATE           NULL,
    [ActInd]              CHAR (1)       NULL,
    [IsDeleted]           CHAR (1)       NULL,
    [BatchID]             BIGINT         NULL,
    [ProcessLogID]        BIGINT         NULL,
    CONSTRAINT [PK_INVENTORY_PRODUCT_FAMILY] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [PART_PRODUCT_FAMILY] ASC) ON [DWH_IFS]
) ON [DWH_IFS];



