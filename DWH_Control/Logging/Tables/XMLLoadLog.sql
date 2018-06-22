CREATE TABLE [Logging].[XMLLoadLog] (
    [BatchID]      BIGINT         NOT NULL,
    [ProcessLogID] BIGINT         NOT NULL,
    [PackageName]  NVARCHAR (100) NULL,
    [FlatFile]     NVARCHAR (300) NULL,
    [Function]     NVARCHAR (200) NULL,
    [SentAt]       NVARCHAR (38)  NULL,
    [ExpiresAt]    NVARCHAR (38)  NULL,
    [InsertDate]   DATETIME2 (7)  DEFAULT (sysdatetime()) NULL
);

