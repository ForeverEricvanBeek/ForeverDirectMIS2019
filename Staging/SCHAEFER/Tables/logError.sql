CREATE TABLE [SCHAEFER].[logError] (
    [id]           INT            IDENTITY (1, 1) NOT NULL,
    [logDate]      DATE           NULL,
    [logLine]      INT            NULL,
    [logMessage]   VARCHAR (2000) NULL,
    [logText]      TEXT           NULL,
    [logFile]      VARCHAR (50)   NULL,
    [logErrorCode] VARCHAR (50)   NULL,
    [logColumn]    VARCHAR (50)   NULL,
    CONSTRAINT [PK_logError] PRIMARY KEY CLUSTERED ([id] ASC)
);

