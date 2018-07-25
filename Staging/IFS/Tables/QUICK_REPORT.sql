CREATE TABLE [IFS].[QUICK_REPORT] (
    [QUICK_REPORT_ID]      INT             NOT NULL,
    [DESCRIPTION]          NVARCHAR (50)   NULL,
    [SQL_EXPRESSION]       NVARCHAR (4000) NULL,
    [COMMENTS]             NVARCHAR (2000) NULL,
    [CATEGORY_ID]          INT             NULL,
    [CATEGORY_DESCRIPTION] NVARCHAR (4000) NULL,
    [FILE_NAME]            NVARCHAR (2000) NULL,
    [QR_TYPE]              NVARCHAR (4000) NULL,
    [QR_TYPE_DB]           NVARCHAR (20)   NULL,
    [PO_ID]                NVARCHAR (200)  NULL,
    [OBJID]                NVARCHAR (4000) NULL,
    [OBJVERSION]           NVARCHAR (2000) NULL,
    [BatchID]              BIGINT          NULL,
    [ProcessLogID]         BIGINT          NULL
);

