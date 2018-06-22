CREATE TABLE [DOC].[Documents] (
    [id]                NVARCHAR (400) NOT NULL,
    [path]              NVARCHAR (MAX) NULL,
    [name]              NVARCHAR (MAX) NULL,
    [hash]              NVARCHAR (MAX) NULL,
    [idx]               INT            NULL,
    [archiveDateTime]   INT            NULL,
    [version]           NVARCHAR (MAX) NULL,
    [masterId]          NVARCHAR (MAX) NULL,
    [previousVersionId] NVARCHAR (MAX) NULL,
    [nextVersionId]     NVARCHAR (MAX) NULL,
    [documentType]      INT            NULL,
    [fileId]            NVARCHAR (MAX) NULL,
    [isDeleted]         INT            NULL,
    [BatchID]           BIGINT         NULL,
    [ProcessLogID]      BIGINT         NULL
);

