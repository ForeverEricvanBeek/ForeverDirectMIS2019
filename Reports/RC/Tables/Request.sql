CREATE TABLE [RC].[Request] (
    [Request_ID]           BIGINT          IDENTITY (1, 1) NOT NULL,
    [Request_ReportID]     NVARCHAR (500)  NULL,
    [Request_FriendlyName] NVARCHAR (256)  NULL,
    [Request_Status]       INT             CONSTRAINT [DF_Request_Request_Status] DEFAULT ((10)) NULL,
    [Request_User]         NVARCHAR (256)  NULL,
    [Request_Email]        NVARCHAR (256)  NULL,
    [Request_Rows]         BIGINT          NULL,
    [Request_File]         NVARCHAR (2000) NULL,
    [Request_Description]  NVARCHAR (4000) NULL,
    [Request_Html]         NVARCHAR (4000) NULL,
    [Request_DateStart]    DATETIME2 (7)   NULL,
    [Request_DateEnd]      DATETIME2 (7)   NULL,
    [Request_Log]          NVARCHAR (4000) NULL,
    CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED ([Request_ID] ASC)
);





