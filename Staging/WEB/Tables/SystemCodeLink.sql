CREATE TABLE [WEB].[SystemCodeLink] (
    [SystemCodeLink_ID]                   BIGINT         NOT NULL,
    [SystemCodeLink_ParentLinkParentCode] NVARCHAR (50)  NULL,
    [SystemCodeLink_ParentLinkSystemCode] NVARCHAR (50)  NULL,
    [SystemCodeLink_LinkedParentCode]     NVARCHAR (50)  NULL,
    [SystemCodeLink_LinkedSystemCode]     NVARCHAR (50)  NULL,
    [SystemCodeLink_Deleted]              BIT            NULL,
    [SystemCodeLink_UpdatedBy]            NVARCHAR (256) NULL,
    [SystemCodeLink_UpdatedDate]          DATETIME2 (7)  NULL,
    [SystemCodeLink_CreatedBy]            NVARCHAR (256) NULL,
    [SystemCodeLink_CreatedDate]          DATETIME2 (7)  NULL,
    [BatchID]                             BIGINT         NULL,
    [ProcessLogID]                        BIGINT         NULL,
    CONSTRAINT [PK_SystemCodeLink] PRIMARY KEY CLUSTERED ([SystemCodeLink_ID] ASC)
);

