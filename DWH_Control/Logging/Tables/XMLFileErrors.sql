CREATE TABLE [Logging].[XMLFileErrors] (
    [PackageName]  NVARCHAR (100) NULL,
    [FlatFile]     NVARCHAR (300) NULL,
    [RecordType]   NVARCHAR (200) NULL,
    [ErrorMessage] NTEXT          NULL,
    [InsertDate]   DATETIME2 (7)  DEFAULT (sysdatetime()) NULL
);

