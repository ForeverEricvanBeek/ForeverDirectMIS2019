CREATE TABLE [WEB].[ActiveDirectoryObjects] (
    [ID]           BIGINT         NOT NULL,
    [ObjectName]   NVARCHAR (255) NOT NULL,
    [CreateDate]   DATETIME2 (7)  NULL,
    [Deleted]      BIT            DEFAULT ((0)) NULL,
    [BatchID]      BIGINT         NULL,
    [ProcessLogID] BIGINT         NULL,
    CONSTRAINT [PK_WEB_ActiveDirectoryObjects] PRIMARY KEY CLUSTERED ([ID] ASC)
);

