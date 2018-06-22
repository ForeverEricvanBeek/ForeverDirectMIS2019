CREATE TABLE [TRANS].[FORWARDER] (
    [FORWARDER_ID]     INT            NOT NULL,
    [HUB_FORWARDER_ID] INT            NULL,
    [DSN_ID]           INT            NULL,
    [FORWARDER_CODE]   VARCHAR (20)   NULL,
    [FORWARDER_NAME]   NVARCHAR (100) NULL,
    [CREATED]          DATETIME2 (7)  NULL,
    [ENABLED]          BIT            NULL,
    [MODIFIED]         DATETIME2 (7)  NULL,
    [DESCRIPTION]      VARCHAR (200)  NULL,
    [BatchID]          BIGINT         NULL,
    [ProcessLogID]     BIGINT         NULL,
    CONSTRAINT [PK_FORWARDER] PRIMARY KEY CLUSTERED ([FORWARDER_ID] ASC)
);

