CREATE TABLE [WEB_ARC].[ActiveDirectoryUsers] (
    [ID]              BIGINT         NOT NULL,
    [UserName]        NVARCHAR (255) NOT NULL,
    [DisplayName]     NVARCHAR (255) NOT NULL,
    [Email]           NVARCHAR (255) NULL,
    [UserDescription] NVARCHAR (500) NULL,
    [CreateDate]      DATETIME2 (7)  NULL,
    [Deleted]         BIT            NULL,
    [Active]          BIT            NULL,
    [Eff_Date]        DATE           NOT NULL,
    [End_Date]        DATE           NULL,
    [ActInd]          CHAR (1)       NULL,
    [IsDeleted]       CHAR (1)       NULL,
    [BatchID]         BIGINT         NULL,
    [ProcessLogID]    BIGINT         NULL,
    CONSTRAINT [PK_WEB_ActiveDirectoryUsers] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [ID] ASC) ON [DWH_WEB_ARC]
) ON [DWH_WEB_ARC];

