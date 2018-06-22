CREATE TABLE [WEB].[ActiveDirectoryObjectsUsers] (
    [ID]           BIGINT NOT NULL,
    [ObjectID]     BIGINT NOT NULL,
    [UserID]       BIGINT NOT NULL,
    [BatchID]      BIGINT NULL,
    [ProcessLogID] BIGINT NULL,
    CONSTRAINT [PK_WEB_ActiveDirectoryObjectsUsers] PRIMARY KEY CLUSTERED ([ID] ASC)
);

