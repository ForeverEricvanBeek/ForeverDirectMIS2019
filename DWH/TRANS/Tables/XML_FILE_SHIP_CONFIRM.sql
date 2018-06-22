CREATE TABLE [TRANS].[XML_FILE_SHIP_CONFIRM] (
    [XML_FILE_SHIP_CONFIRM_ID] INT            NOT NULL,
    [CREATED_TS]               DATETIME2 (7)  DEFAULT (getdate()) NULL,
    [XML_NAME]                 NVARCHAR (100) NULL,
    [PRINTER_KEY]              VARCHAR (20)   NULL,
    [SHIPPER_SHIPMENT_REF]     NVARCHAR (100) NULL,
    [PRINTER_LOOKUP_VALUE]     NVARCHAR (100) NULL,
    [STATUS]                   VARCHAR (5)    NULL,
    [Eff_Date]                 DATE           NOT NULL,
    [End_Date]                 DATE           NULL,
    [ActInd]                   CHAR (1)       NULL,
    [IsDeleted]                CHAR (1)       NULL,
    [BatchID]                  BIGINT         NULL,
    [ProcessLogID]             BIGINT         NULL,
    CONSTRAINT [PK_XML_FILE_SHIP_CONFIRM] PRIMARY KEY CLUSTERED ([XML_FILE_SHIP_CONFIRM_ID] ASC, [Eff_Date] ASC)
);

