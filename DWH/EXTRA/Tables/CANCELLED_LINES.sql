CREATE TABLE [EXTRA].[CANCELLED_LINES] (
    [TC_order_ID]                 NVARCHAR (50)  NOT NULL,
    [Issue]                       NVARCHAR (50)  NOT NULL,
    [SKU_Code]                    NVARCHAR (110) NOT NULL,
    [Product_Family]              NVARCHAR (50)  NULL,
    [Units_Cancelled]             INT            NULL,
    [Orders_Incomplete]           INT            NULL,
    [Unavailable_Units_Cancelled] INT            NULL,
    [Eff_Date]                    DATE           NOT NULL,
    [End_Date]                    DATE           NULL,
    [ActInd]                      CHAR (1)       NULL,
    [IsDeleted]                   CHAR (1)       NULL,
    [BatchID]                     BIGINT         NULL,
    [ProcessLogID]                BIGINT         NULL,
    CONSTRAINT [PK_CANCELLED_LINES_1] PRIMARY KEY CLUSTERED ([TC_order_ID] ASC, [Issue] ASC, [SKU_Code] ASC, [Eff_Date] ASC) ON [DWH_EXTRA]
) ON [DWH_EXTRA];

