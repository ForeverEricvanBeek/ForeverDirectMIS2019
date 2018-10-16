CREATE TABLE [FORECAST_ARC].[Realize_Sales] (
    [OFFICE_CODE]  NVARCHAR (10)  NOT NULL,
    [PRODUCTNUM]   NVARCHAR (10)  NOT NULL,
    [PROCESSYEAR]  NVARCHAR (7)   NOT NULL,
    [PROCESSMONTH] NVARCHAR (100) NOT NULL,
    [Quantity]     INT            NOT NULL,
    [Eff_Date]     DATE           NOT NULL,
    [End_Date]     DATE           NULL,
    [ActInd]       CHAR (1)       NULL,
    [IsDeleted]    CHAR (1)       NULL,
    [BatchID]      BIGINT         NULL,
    [ProcessLogID] BIGINT         NULL,
    CONSTRAINT [PK_Realize_Sales] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [OFFICE_CODE] ASC, [PROCESSMONTH] ASC, [PROCESSYEAR] ASC, [PRODUCTNUM] ASC, [Quantity] ASC) ON [DWH_FORECAST_ARC]
) ON [DWH_FORECAST_ARC];

