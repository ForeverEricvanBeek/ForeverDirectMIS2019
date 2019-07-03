CREATE TABLE [MFV].[Users] (
    [UserID]                INT           NOT NULL,
    [UserName]              VARCHAR (255) NULL,
    [IDCode]                VARCHAR (255) NULL,
    [ModificationTimestamp] DATETIME      NULL,
    [BatchID]               BIGINT        NULL,
    [ProcessLogID]          BIGINT        NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([UserID] ASC)
);

