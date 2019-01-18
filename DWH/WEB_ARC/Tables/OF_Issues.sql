﻿CREATE TABLE [WEB_ARC].[OF_Issues] (
    [ID]                 INT            NOT NULL,
    [Datum]              DATETIME2 (7)  NULL,
    [oLPN_Nr]            NVARCHAR (50)  NULL,
    [Lot_Nr]             NVARCHAR (50)  NULL,
    [Allocated_Item]     NVARCHAR (20)  NULL,
    [Picked_Item]        NVARCHAR (20)  NULL,
    [Location_Allocated] NVARCHAR (20)  NULL,
    [Location_Picked]    NVARCHAR (20)  NULL,
    [Allocated_Qty]      INT            NULL,
    [Picked_Qty]         INT            NULL,
    [Qty]                INT            NULL,
    [Picker_ID]          NVARCHAR (50)  NULL,
    [Line_ID]            INT            NULL,
    [QA_operator]        NVARCHAR (255) NULL,
    [Error1]             NVARCHAR (50)  NULL,
    [Error2]             NVARCHAR (50)  NULL,
    [Comments]           NVARCHAR (MAX) NULL,
    [Created_Date]       DATETIME2 (7)  NULL,
    [Created_By]         NVARCHAR (255) NULL,
    [Updated_Date]       DATETIME2 (7)  NULL,
    [Updated_By]         NVARCHAR (255) NULL,
    [Eff_Date]           DATE           NOT NULL,
    [End_Date]           DATE           NULL,
    [ActInd]             CHAR (1)       NULL,
    [IsDeleted]          CHAR (1)       NULL,
    [BatchID]            BIGINT         NULL,
    [ProcessLogID]       BIGINT         NULL,
    CONSTRAINT [PK_QA_Issue_List] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [ID] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_WEB_ARC]
) ON [DWH_WEB_ARC];



