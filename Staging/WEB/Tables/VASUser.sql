CREATE TABLE [WEB].[VASUser] (
    [VASUser_ID]          NVARCHAR (50)  NOT NULL,
    [VASUser_Name]        NVARCHAR (300) NULL,
    [VASUser_Deleted]     BIT            NULL,
    [VASUser_Visible]     BIT            NULL,
    [VASUser_CreatedDate] DATETIME2 (7)  NULL,
    [VASUser_CreatedBy]   NVARCHAR (255) NULL,
    [VASUser_UpdatedDate] DATETIME2 (7)  NULL,
    [VASUser_UpdatedBy]   NVARCHAR (255) NULL,
    [BatchID]             BIGINT         NULL,
    [ProcessLogID]        BIGINT         NULL,
    CONSTRAINT [PK_VASUsers] PRIMARY KEY CLUSTERED ([VASUser_ID] ASC)
);

