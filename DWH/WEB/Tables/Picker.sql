CREATE TABLE [WEB].[Picker] (
    [Picker_ID]          NVARCHAR (50)  NOT NULL,
    [Picker_Name]        NVARCHAR (300) NULL,
    [Picker_Deleted]     BIT            NULL,
    [Picker_Visible]     BIT            NULL,
    [Picker_CreatedDate] DATETIME2 (7)  NULL,
    [Picker_CreatedBy]   NVARCHAR (255) NULL,
    [Picker_UpdatedDate] DATETIME2 (7)  NULL,
    [Picker_UpdatedBy]   NVARCHAR (255) NULL,
    [Eff_Date]           DATE           NOT NULL,
    [End_Date]           DATE           NULL,
    [ActInd]             CHAR (1)       NULL,
    [IsDeleted]          CHAR (1)       NULL,
    [BatchID]            BIGINT         NULL,
    [ProcessLogID]       BIGINT         NULL,
    CONSTRAINT [PK_Pickers] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [Picker_ID] ASC) ON [DWH_WEB]
) ON [DWH_WEB];

