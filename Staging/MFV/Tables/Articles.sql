CREATE TABLE [MFV].[Articles] (
    [ArticleID]             INT           NOT NULL,
    [ArticleCode]           VARCHAR (255) NULL,
    [ArticleDescription]    VARCHAR (255) NULL,
    [ModificationTimestamp] DATETIME      NULL,
    [BatchID]               BIGINT        NULL,
    [ProcessLogID]          BIGINT        NULL,
    CONSTRAINT [PK_Articles] PRIMARY KEY CLUSTERED ([ArticleID] ASC)
);

