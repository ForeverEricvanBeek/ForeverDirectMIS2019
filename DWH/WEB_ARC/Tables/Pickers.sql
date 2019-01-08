﻿CREATE TABLE [WEB_ARC].[Pickers] (
    [Picker_ID]    NVARCHAR (50)  NOT NULL,
    [Name]         NVARCHAR (300) NULL,
    [Deleted]      BIT            NULL,
    [Visible]      BIT            NULL,
    [Created_date] DATETIME2 (7)  NULL,
    [Created_by]   NVARCHAR (255) NULL,
    [Updated_date] DATETIME2 (7)  NULL,
    [Updated_by]   NVARCHAR (255) NULL,
    [Eff_Date]     DATE           NOT NULL,
    [End_Date]     DATE           NULL,
    [ActInd]       CHAR (1)       NULL,
    [IsDeleted]    CHAR (1)       NULL,
    [BatchID]      BIGINT         NULL,
    [ProcessLogID] BIGINT         NULL,
    CONSTRAINT [PK_Pickers] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [Picker_ID] ASC) ON [DWH_WEB_ARC]
) ON [DWH_WEB_ARC];
