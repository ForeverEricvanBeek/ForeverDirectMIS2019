CREATE TABLE [TRANS].[LABEL] (
    [LABEL_ID]       BIGINT        NOT NULL,
    [INTERFACE_ID]   BIGINT        NOT NULL,
    [SEQ_NR]         SMALLINT      NOT NULL,
    [DSN_ID]         INT           NULL,
    [SHIPMENT_ID]    INT           NULL,
    [LINE_NR]        SMALLINT      NULL,
    [STATUS]         INT           NULL,
    [BARCODE]        VARCHAR (100) NULL,
    [CONSIGNMENT_NR] VARCHAR (30)  NULL,
    [PATH]           VARCHAR (260) NULL,
    [CREATED]        DATETIME      NULL,
    [MODIFIED]       DATETIME      NULL,
    [LABEL_TYPE]     VARCHAR (3)   NOT NULL,
    [MASTER]         BIT           NULL,
    [BatchID]        BIGINT        NULL,
    [ProcessLogID]   BIGINT        NULL,
    CONSTRAINT [PK_LABEL] PRIMARY KEY CLUSTERED ([LABEL_ID] ASC)
);

