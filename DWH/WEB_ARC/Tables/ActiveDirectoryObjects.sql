CREATE TABLE [WEB_ARC].[ActiveDirectoryObjects] (
    [ID]           BIGINT         NOT NULL,
    [ObjectName]   NVARCHAR (255) NOT NULL,
    [CreateDate]   DATETIME2 (7)  NULL,
    [Deleted]      BIT            NULL,
    [Eff_Date]     DATE           NOT NULL,
    [End_Date]     DATE           NULL,
    [ActInd]       CHAR (1)       NULL,
    [IsDeleted]    CHAR (1)       NULL,
    [BatchID]      BIGINT         NULL,
    [ProcessLogID] BIGINT         NULL,
    CONSTRAINT [PK_WEB_ActiveDirectoryObjects] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [ID] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_WEB_ARC]
) ON [DWH_WEB_ARC];



