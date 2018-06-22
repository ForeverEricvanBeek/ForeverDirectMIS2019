CREATE TABLE [Logging].[ProcessMessageLog] (
    [ProcessMessageLogID] BIGINT         IDENTITY (1, 1) NOT NULL,
    [ProcessLogID]        BIGINT         NOT NULL,
    [BatchID]             BIGINT         NOT NULL,
    [SourceName]          NVARCHAR (255) NULL,
    [Severity]            NCHAR (1)      NOT NULL,
    [EventCode]           INT            NULL,
    [EventDescription]    NVARCHAR (MAX) NULL,
    [LogDateTime]         DATETIME2 (7)  CONSTRAINT [DF__ProcessMe__LogDa__276EDEB3] DEFAULT (sysdatetime()) NULL,
    CONSTRAINT [CK_ProcessLog_Severity] CHECK ([Severity]='F' OR [Severity]='E' OR [Severity]='W' OR [Severity]='I'),
    CONSTRAINT [FK_ProcessMessageLog_ProcessLog] FOREIGN KEY ([ProcessLogID]) REFERENCES [Logging].[ProcessLog] ([ProcessLogID])
);

