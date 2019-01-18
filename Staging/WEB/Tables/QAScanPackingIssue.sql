CREATE TABLE [WEB].[QAScanPackingIssue] (
    [QAScanPackingIssue_ID]          BIGINT         NOT NULL,
    [QAScanPackingIssue_OLPN]        NVARCHAR (50)  NULL,
    [QAScanPackingIssue_Reason]      SMALLINT       NULL,
    [QAScanPackingIssue_CreatedDate] DATETIME2 (7)  NULL,
    [QAScanPackingIssue_CreatedBy]   NVARCHAR (255) NULL,
    [BatchID]                        BIGINT         NULL,
    [ProcessLogID]                   BIGINT         NULL,
    CONSTRAINT [PK_QAScansPackingIssues] PRIMARY KEY CLUSTERED ([QAScanPackingIssue_ID] ASC)
);

