CREATE TABLE [Logging].[FlatFileErrors] (
    [PackageName]  NVARCHAR (100) NULL,
    [FlatFile]     NVARCHAR (300) NULL,
    [ErrorMessage] NVARCHAR (200) NULL,
    [ErrorOutput]  NTEXT          NULL,
    [InsertDate]   DATETIME2 (7)  DEFAULT (sysdatetime()) NULL
);

