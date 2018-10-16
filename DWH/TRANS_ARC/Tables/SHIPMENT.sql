﻿CREATE TABLE [TRANS_ARC].[SHIPMENT] (
    [INTERFACE_ID]           BIGINT        NOT NULL,
    [ORIGINAL_INTERFACE_ID]  BIGINT        NULL,
    [SHIPMENT_ID]            INT           NOT NULL,
    [DSN_ID]                 INT           NOT NULL,
    [PROJECT_ID]             INT           NOT NULL,
    [SHIPPER_SHIPMENT_REF]   VARCHAR (50)  NULL,
    [FORWARDER_SHIPMENT_REF] VARCHAR (50)  NULL,
    [CONSIGNEE_SHIPMENT_REF] VARCHAR (50)  NULL,
    [CUSTOMER_ORDER_NR]      VARCHAR (50)  NULL,
    [OUTPUT_DIRECTIVE]       VARCHAR (20)  NULL,
    [SLA_PU_TS]              DATETIME      NULL,
    [SLA_DY_TS]              DATETIME      NULL,
    [INCOTERM_CODE]          VARCHAR (3)   NULL,
    [IB_OB]                  VARCHAR (3)   NULL,
    [FORWARDER_ID]           INT           NULL,
    [HUB_FORWARDER_ID]       INT           NULL,
    [TX_SERVICE_CODE]        VARCHAR (20)  NULL,
    [SERVICE_ID]             INT           NULL,
    [HUB_SERVICE_ID]         INT           NULL,
    [PRODUCT_ID]             INT           NULL,
    [CREATED]                DATETIME2 (7) NULL,
    [VALIDATED]              BIT           NULL,
    [COLLI_NR]               SMALLINT      NULL,
    [VOLUME]                 SMALLMONEY    NULL,
    [WEIGHT]                 SMALLMONEY    NULL,
    [ESTIMATED_WEIGHT]       SMALLMONEY    NULL,
    [CUSTOMS_VALUE]          MONEY         NULL,
    [CUSTOMS_VALUE_CURRENCY] VARCHAR (3)   NULL,
    [DANGEROUS_GOODS]        BIT           NULL,
    [UN_CODE]                VARCHAR (5)   NULL,
    [CLASS_NR]               VARCHAR (10)  NULL,
    [CUSTOMS_STATUS]         VARCHAR (20)  NULL,
    [DOCUMENTS_ONLY]         BIT           NULL,
    [COD_VALUE]              MONEY         NULL,
    [COD_CURRENCY_CODE]      VARCHAR (3)   NULL,
    [POS_NR]                 VARCHAR (20)  NULL,
    [DELIVERY_POINT]         VARCHAR (10)  NULL,
    [DISTRIBUTOR_NR]         VARCHAR (20)  NULL,
    [Eff_Date]               DATE          NOT NULL,
    [End_Date]               DATE          NULL,
    [ActInd]                 CHAR (1)      NULL,
    [IsDeleted]              CHAR (1)      NULL,
    [BatchID]                BIGINT        NULL,
    [ProcessLogID]           BIGINT        NULL,
    CONSTRAINT [PK_SHIPMENT] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [INTERFACE_ID] ASC) ON [DWH_TRANS_ARC]
) ON [DWH_TRANS_ARC];

