﻿CREATE TABLE [FORECAST].[Realize_Sales] (
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
    CONSTRAINT [PK_Realize_Sales] PRIMARY KEY CLUSTERED ([OFFICE_CODE] ASC, [PRODUCTNUM] ASC, [PROCESSYEAR] ASC, [PROCESSMONTH] ASC, [Quantity] ASC, [Eff_Date] ASC) ON [DWH_FORECAST]
) ON [DWH_FORECAST];





