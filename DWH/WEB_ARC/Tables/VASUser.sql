CREATE TABLE [WEB_ARC].[VASUser] (
    [VASUser_ID]          NVARCHAR (50)  NOT NULL,
    [VASUser_Name]        NVARCHAR (300) NULL,
    [VASUser_Deleted]     BIT            NULL,
    [VASUser_Visible]     BIT            NULL,
    [VASUser_CreatedDate] DATETIME2 (7)  NULL,
    [VASUser_CreatedBy]   NVARCHAR (255) NULL,
    [VASUser_UpdatedDate] DATETIME2 (7)  NULL,
    [VASUser_UpdatedBy]   NVARCHAR (255) NULL,
    [Eff_Date]            DATE           NOT NULL,
    [End_Date]            DATE           NULL,
    [ActInd]              CHAR (1)       NULL,
    [IsDeleted]           CHAR (1)       NULL,
    [BatchID]             BIGINT         NULL,
    [ProcessLogID]        BIGINT         NULL,
    CONSTRAINT [PK_VASUsers] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [VASUser_ID] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_WEB_ARC]
) ON [DWH_WEB_ARC];

