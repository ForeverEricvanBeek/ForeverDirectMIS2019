CREATE TABLE [TRANS_ARC].[EDI] (
    [INTERFACE_ID]       BIGINT         NOT NULL,
    [DSN_ID]             INT            NULL,
    [FORWARDER_ID]       INT            NULL,
    [PROJECT_ID]         INT            NULL,
    [COMMUNICATED]       VARCHAR (200)  NULL,
    [COMPLETED]          BIT            NULL,
    [PERIOD_FROM]        DATETIME       NULL,
    [PERIOD_TO]          DATETIME       NULL,
    [DESCRIPTION]        VARCHAR (200)  NULL,
    [PATH]               VARCHAR (260)  NULL,
    [CREATED_BY]         NVARCHAR (100) NULL,
    [CREATED]            DATETIME2 (7)  NULL,
    [EDI_NR]             VARCHAR (20)   NULL,
    [BOOK_NR]            VARCHAR (20)   NULL,
    [PAGE_NR]            VARCHAR (20)   NULL,
    [SHIPPING_RECORD_NR] VARCHAR (20)   NULL,
    [BARCODE]            VARCHAR (100)  NULL,
    [Eff_Date]           DATE           NOT NULL,
    [End_Date]           DATE           NULL,
    [ActInd]             CHAR (1)       NULL,
    [IsDeleted]          CHAR (1)       NULL,
    [BatchID]            BIGINT         NULL,
    [ProcessLogID]       BIGINT         NULL,
    CONSTRAINT [PK_EDI] PRIMARY KEY CLUSTERED ([INTERFACE_ID] ASC, [Eff_Date] ASC) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];





