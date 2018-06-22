CREATE TABLE [WEB].[ActiveDirectoryUsers] (
    [ID]              BIGINT         NOT NULL,
    [UserName]        NVARCHAR (255) NOT NULL,
    [DisplayName]     NVARCHAR (255) NOT NULL,
    [Email]           NVARCHAR (255) NULL,
    [UserDescription] NVARCHAR (500) NULL,
    [CreateDate]      DATETIME2 (7)  NULL,
    [Deleted]         BIT            DEFAULT ((0)) NULL,
    [Active]          BIT            DEFAULT ((0)) NULL,
    [BatchID]         BIGINT         NULL,
    [ProcessLogID]    BIGINT         NULL,
    CONSTRAINT [PK_WEB_ActiveDirectoryUsers] PRIMARY KEY CLUSTERED ([ID] ASC)
);

