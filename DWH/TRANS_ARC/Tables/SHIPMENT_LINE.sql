CREATE TABLE [TRANS_ARC].[SHIPMENT_LINE] (
    [INTERFACE_ID]                BIGINT        NOT NULL,
    [SEQ_NR]                      SMALLINT      NOT NULL,
    [SHIPMENT_ID]                 INT           NULL,
    [LINE_NR]                     SMALLINT      NULL,
    [AMOUNT]                      SMALLINT      NULL,
    [VOLUME]                      SMALLMONEY    NULL,
    [WEIGHT]                      SMALLMONEY    NULL,
    [LENGTH]                      SMALLMONEY    NULL,
    [WIDTH]                       SMALLMONEY    NULL,
    [HEIGHT]                      SMALLMONEY    NULL,
    [SHIPPER_SHIPMENT_LINE_REF]   VARCHAR (24)  NULL,
    [FORWARDER_SHIPMENT_LINE_REF] VARCHAR (100) NULL,
    [CONSIGNEE_SHIPMENT_LINE_REF] VARCHAR (24)  NULL,
    [DESCRIPTION]                 VARCHAR (50)  NULL,
    [PACKAGE_TYPE]                VARCHAR (20)  NULL,
    [MANUFACTURE_COUNTRY_CODE]    VARCHAR (3)   NULL,
    [CONSIGNMENT_NR]              VARCHAR (30)  NULL,
    [DANGEROUS_GOODS]             BIT           NULL,
    [UN_CODE]                     VARCHAR (5)   NULL,
    [DG_CLASS_NR]                 VARCHAR (10)  NULL,
    [CUSTOMS_VALUE]               MONEY         NULL,
    [CUSTOMS_VALUE_CURRENCY]      VARCHAR (3)   NULL,
    [PRODUCT_ID]                  INT           NULL,
    [COLLO_NR]                    SMALLINT      NULL,
    [TOTAL_COLLI]                 SMALLINT      NULL,
    [DG_CODE]                     VARCHAR (5)   NULL,
    [Eff_Date]                    DATE          NOT NULL,
    [End_Date]                    DATE          NULL,
    [ActInd]                      CHAR (1)      NULL,
    [IsDeleted]                   CHAR (1)      NULL,
    [BatchID]                     BIGINT        NULL,
    [ProcessLogID]                BIGINT        NULL,
    CONSTRAINT [PK_SHIPMENT_LINE] PRIMARY KEY CLUSTERED ([INTERFACE_ID] ASC, [SEQ_NR] ASC, [Eff_Date] ASC) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];





