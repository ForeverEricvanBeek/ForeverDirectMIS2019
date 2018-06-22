CREATE TABLE [SCHAEFER].[logHcom] (
    [id]          INT            IDENTITY (1, 1) NOT NULL,
    [logDate]     DATE           NULL,
    [logTime]     TIME (7)       NULL,
    [logLine]     INT            NULL,
    [logFunction] VARCHAR (500)  NULL,
    [logLevel]    VARCHAR (500)  NULL,
    [logMessage]  VARCHAR (2000) NULL,
    [logLPN]      VARCHAR (50)   NULL,
    [logOrder]    VARCHAR (50)   NULL,
    [logJunction] VARCHAR (50)   NULL,
    [logProcess]  VARCHAR (500)  NULL,
    [logFile]     VARCHAR (50)   NULL,
    CONSTRAINT [PK_logHcom] PRIMARY KEY CLUSTERED ([id] ASC)
);

