CREATE TABLE [WEB].[Picker] (
    [Picker_ID]          NVARCHAR (50)  NOT NULL,
    [Picker_Name]        NVARCHAR (300) NULL,
    [Picker_Deleted]     BIT            NULL,
    [Picker_Visible]     BIT            NULL,
    [Picker_CreatedDate] DATETIME2 (7)  NULL,
    [Picker_CreatedBy]   NVARCHAR (255) NULL,
    [Picker_UpdatedDate] DATETIME2 (7)  NULL,
    [Picker_UpdatedBy]   NVARCHAR (255) NULL,
    [BatchID]            BIGINT         NULL,
    [ProcessLogID]       BIGINT         NULL,
    CONSTRAINT [PK_Pickers] PRIMARY KEY CLUSTERED ([Picker_ID] ASC)
);

