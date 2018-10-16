CREATE TABLE [TRANS].[XML_INVOICE] (
    [XML_INVOICE_ID]       INT            NOT NULL,
    [CREATED_TS]           DATETIME2 (7)  NULL,
    [XML_NAME]             NVARCHAR (100) NULL,
    [PRINTER_KEY]          VARCHAR (20)   NULL,
    [INVOICE_FILE_NAME]    NVARCHAR (100) NULL,
    [PRINTER_LOOKUP_VALUE] NVARCHAR (100) NULL,
    [STATUS]               VARCHAR (5)    NULL,
    [TRANSMITTED]          BIT            NULL,
    [TRANSMITTED_TS]       DATETIME2 (7)  NULL,
    [Eff_Date]             DATE           NOT NULL,
    [End_Date]             DATE           NULL,
    [ActInd]               CHAR (1)       NULL,
    [IsDeleted]            CHAR (1)       NULL,
    [BatchID]              BIGINT         NULL,
    [ProcessLogID]         BIGINT         NULL,
    CONSTRAINT [PK_XML_INVOICE] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [XML_INVOICE_ID] ASC) ON [DWH_TRANS]
) ON [DWH_TRANS];



