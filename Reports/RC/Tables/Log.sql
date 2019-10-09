CREATE TABLE [RC].[Log] (
    [Log_ID]          BIGINT         IDENTITY (1, 1) NOT NULL,
    [Log_Page]        NVARCHAR (255) NULL,
    [Log_Func]        NVARCHAR (255) NULL,
    [Log_RequestID]   NVARCHAR (MAX) NULL,
    [Log_Status]      NVARCHAR (MAX) NULL,
    [Log_ExecutionID] NVARCHAR (MAX) NULL,
    [Log_Package]     NVARCHAR (MAX) NULL,
    [Log_Log]         NVARCHAR (MAX) NULL,
    [Log_CreatedDate] DATETIME2 (7)  NULL,
    [Log_CreatedBy]   NVARCHAR (255) NULL,
    CONSTRAINT [PK_Log] PRIMARY KEY CLUSTERED ([Log_ID] ASC)
);

