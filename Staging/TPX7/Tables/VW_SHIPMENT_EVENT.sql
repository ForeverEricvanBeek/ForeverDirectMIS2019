﻿CREATE TABLE [TPX7].[VW_SHIPMENT_EVENT] (
    [FORWARDER_CODE]              VARCHAR (3)   NULL,
    [SHIPMENT_ID]                 INT           NOT NULL,
    [SHIPMENT_EVENT_NR]           DECIMAL (4)   NOT NULL,
    [SHIPMENT_EVENT_TS]           DATETIME      NOT NULL,
    [SHIPMENT_EVENT_CODE]         VARCHAR (20)  NULL,
    [FORWARDER_REFERENCE]         VARCHAR (20)  NULL,
    [REMARKS]                     TEXT          NULL,
    [USER_ID]                     INT           NOT NULL,
    [FORWARDER_EVENT_CODE]        VARCHAR (20)  NULL,
    [TXTI_STATUS_ID]              INT           NULL,
    [SHIPMENT_LOG_ID]             BIGINT        NOT NULL,
    [SHIPMENT_LINE_NR]            INT           NULL,
    [CREATED_ON]                  DATETIME      NOT NULL,
    [TXTI_IMPORT_DATE]            DATETIME      NULL,
    [TXTI_IMPORT_FILENAME]        VARCHAR (255) NULL,
    [SHIPMENT_EVENT_TS_UTC]       DATETIME      NULL,
    [SHIPMENT_EVENT_TS_OFFSET]    VARCHAR (10)  NULL,
    [INPUT_MODE]                  VARCHAR (10)  NULL,
    [FORWARDER_EVENT_TYPE_CODE]   VARCHAR (20)  NULL,
    [FORWARDER_EVENT_DESCRIPTION] VARCHAR (300) NULL,
    [SHIPMENT_EVENT_TYPE]         VARCHAR (20)  NULL,
    [SHIPMENT_EVENT_DESCRIPTION]  VARCHAR (100) NULL,
    [SHIPMENT_STATUS]             VARCHAR (10)  NULL,
    [RESPONSIBLE]                 VARCHAR (20)  NULL,
    [RANK_NUMBER]                 VARCHAR (20)  NULL,
    [CS_CATEGORY]                 BIGINT        NULL,
    [IS_REMOVABLE]                BIT           NULL,
    [SHIPMENT_EVENT_GROUP_CODE]   VARCHAR (20)  NULL,
    [SHIPMENT_STATUS_NAME]        VARCHAR (200) NULL,
    [BatchID]                     BIGINT        NULL,
    [ProcessLogID]                BIGINT        NULL,
    CONSTRAINT [PK_SHIPMENT_EVENT] PRIMARY KEY CLUSTERED ([SHIPMENT_LOG_ID] ASC)
);

