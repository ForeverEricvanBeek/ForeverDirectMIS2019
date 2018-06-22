CREATE TABLE [SCHAEFER].[logSteuerTrace] (
    [id]          INT            IDENTITY (1, 1) NOT NULL,
    [logDate]     DATE           NULL,
    [logTime]     TIME (7)       NULL,
    [logLine]     INT            NULL,
    [logFunction] VARCHAR (500)  NULL,
    [logLevel]    VARCHAR (500)  NULL,
    [logMessage]  VARCHAR (2000) NULL,
    [logPart1]    VARCHAR (2000) NULL,
    [logPart2]    VARCHAR (2000) NULL,
    [logPart3]    VARCHAR (2000) NULL,
    [logPart4]    VARCHAR (2000) NULL,
    [logPart5]    VARCHAR (2000) NULL,
    [logPart6]    VARCHAR (2000) NULL,
    [logLPN]      VARCHAR (50)   NULL,
    [logOrder]    VARCHAR (50)   NULL,
    [logJunction] VARCHAR (50)   NULL,
    [logProcess]  VARCHAR (500)  NULL,
    [logFile]     VARCHAR (50)   NULL,
    CONSTRAINT [PK_logSteuerTrace] PRIMARY KEY CLUSTERED ([id] ASC)
);

