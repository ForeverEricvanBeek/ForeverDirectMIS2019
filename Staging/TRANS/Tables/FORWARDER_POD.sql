CREATE TABLE [TRANS].[FORWARDER_POD] (
    [FORWARDER_POD_ID]       BIGINT        NOT NULL,
    [OLPN]                   VARCHAR (20)  NULL,
    [FORWARDER_SHIPMENT_REF] VARCHAR (50)  NULL,
    [FORWARDER_CODE]         VARCHAR (15)  NULL,
    [POS_NR]                 VARCHAR (20)  NULL,
    [DISTRIBUTOR_NR]         VARCHAR (20)  NULL,
    [STATUS]                 VARCHAR (50)  NULL,
    [STATUS_DATE]            DATETIME2 (7) NULL,
    [BatchID]                BIGINT        NULL,
    [ProcessLogID]           BIGINT        NULL,
    CONSTRAINT [PK_FORWARDER_POD] PRIMARY KEY CLUSTERED ([FORWARDER_POD_ID] ASC)
);

