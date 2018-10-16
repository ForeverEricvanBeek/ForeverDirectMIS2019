CREATE TABLE [WEB_ARC].[QAScansPackingIssues] (
    [ID]           BIGINT         NOT NULL,
    [OLPNid]       NVARCHAR (50)  NULL,
    [Reason]       SMALLINT       NULL,
    [Created_Date] DATETIME2 (7)  NULL,
    [Created_By]   NVARCHAR (255) NULL,
    [BatchID]      BIGINT         NULL,
    [ProcessLogID] BIGINT         NULL,
    CONSTRAINT [PK_QAScansPackingIssues] PRIMARY KEY CLUSTERED ([ID] ASC) ON [DWH_WEB_ARC]
) ON [DWH_WEB_ARC];

