CREATE TABLE [TRANS_ARC].[FORWARDER_STATUS_FILE] (
    [FORWARDER_STATUS_FILE_ID] INT            NOT NULL,
    [FILE_NAME]                NVARCHAR (100) NULL,
    [FILE_TYPE]                VARCHAR (20)   NULL,
    [HUB_FORWARDER_ID]         INT            NULL,
    [REFERENCE]                VARCHAR (20)   NULL,
    [DATE_REFERENCE]           VARCHAR (20)   NULL,
    [CREATED]                  DATETIME2 (7)  NULL,
    [AMOUNT_TOTAL]             INT            NULL,
    [AMOUNT_OK]                INT            NULL,
    [AMOUNT_ERROR]             INT            NULL,
    [EDI_ERROR_CODE]           VARCHAR (5)    NULL,
    [BatchID]                  BIGINT         NULL,
    [ProcessLogID]             BIGINT         NULL,
    CONSTRAINT [PK_FORWARDER_STATUS_FILE] PRIMARY KEY CLUSTERED ([FORWARDER_STATUS_FILE_ID] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];



