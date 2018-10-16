CREATE TABLE [WEB_ARC].[Messages] (
    [ID]               INT            NOT NULL,
    [Type]             NVARCHAR (20)  NULL,
    [LocationPicked]   NVARCHAR (20)  NULL,
    [IssueCode]        NVARCHAR (2)   NULL,
    [IssueDescription] NVARCHAR (255) NULL,
    [ItemName]         NVARCHAR (20)  NULL,
    [ItemDescription]  NVARCHAR (255) NULL,
    [ILPNToteNr]       NVARCHAR (15)  NULL,
    [Picker_ID]        NVARCHAR (50)  NULL,
    [Created_Date]     DATETIME2 (7)  NULL,
    [Created_By]       NVARCHAR (255) NULL,
    [Updated_Date]     DATETIME2 (7)  NULL,
    [Updated_By]       NVARCHAR (255) NULL,
    [Message_Date]     DATETIME2 (7)  NULL,
    [Handled_Date]     DATETIME2 (7)  NULL,
    [Handled_By]       NVARCHAR (255) NULL,
    [Status]           NVARCHAR (15)  NULL,
    [BatchID]          BIGINT         NULL,
    [ProcessLogID]     BIGINT         NULL,
    CONSTRAINT [PK_Messages_1] PRIMARY KEY CLUSTERED ([ID] ASC) ON [DWH_WEB_ARC]
) ON [DWH_WEB_ARC];

