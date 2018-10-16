﻿CREATE TABLE [PROJWMS].[EXT_DESADV_HEADER] (
    [MESSAGE_ID]                 INT             NOT NULL,
    [DELNOTE_NO]                 NVARCHAR (50)   NOT NULL,
    [ERROR_MESSAGE]              NVARCHAR (2000) NULL,
    [SHIPMENT_NOTES]             NVARCHAR (2000) NULL,
    [SHIPPING_DOCUMENT_ID]       NVARCHAR (2000) NULL,
    [VENDOR_NO]                  NVARCHAR (2000) NULL,
    [DOCK_ID]                    NVARCHAR (2000) NULL,
    [GATE_ID]                    NVARCHAR (2000) NULL,
    [DELIVERY_LEADTIME]          INT             NULL,
    [DELNOTE_DATE]               DATETIME2 (7)   NULL,
    [DESPATCH_DATE]              DATETIME2 (7)   NULL,
    [MESSAGE_TYPE]               NVARCHAR (4000) NULL,
    [MESSAGE_TYPE_DB]            NVARCHAR (20)   NULL,
    [FORWARDER_ID]               NVARCHAR (2000) NULL,
    [CONVEY_REF_NO]              NVARCHAR (2000) NULL,
    [DELIVERY_TERMS_DESC]        NVARCHAR (2000) NULL,
    [SHIP_VIA_DESC]              NVARCHAR (2000) NULL,
    [LABEL_NOTE]                 NVARCHAR (2000) NULL,
    [RECEIVER_NAME]              NVARCHAR (2000) NULL,
    [RECEIVER_ADDRESS1]          NVARCHAR (2000) NULL,
    [RECEIVER_ADDRESS2]          NVARCHAR (2000) NULL,
    [C_RECEIVER_ADDRESS3]        NVARCHAR (200)  NULL,
    [C_RECEIVER_ADDRESS4]        NVARCHAR (200)  NULL,
    [RECEIVER_ZIP_CODE]          NVARCHAR (2000) NULL,
    [RECEIVER_CITY]              NVARCHAR (2000) NULL,
    [RECEIVER_STATE]             NVARCHAR (2000) NULL,
    [RECEIVER_COUNTY]            NVARCHAR (2000) NULL,
    [RECEIVER_COUNTRY_CODE]      NVARCHAR (2000) NULL,
    [ALT_DELNOTE_NO]             NVARCHAR (2000) NULL,
    [DEL_TERMS_LOCATION]         NVARCHAR (100)  NULL,
    [C_MRN]                      NVARCHAR (25)   NULL,
    [C_ATB]                      NVARCHAR (25)   NULL,
    [C_ATB_POSITION]             INT             NULL,
    [C_DOC_ISSUING_DATE]         DATETIME2 (7)   NULL,
    [C_DOC_ISSUING_OFFICE]       NVARCHAR (20)   NULL,
    [C_UNLOAD_REQUEST_SENT]      NVARCHAR (5)    NULL,
    [C_DATE_REQUEST_SENT]        DATETIME2 (7)   NULL,
    [C_CMS_INBOUND_SENT]         NVARCHAR (5)    NULL,
    [C_DATE_INBOUND_SENT]        DATETIME2 (7)   NULL,
    [C_CONSOLIDATED_SHIPMENT_ID] NVARCHAR (20)   NULL,
    [C_CUSTOMS_STATUS]           NVARCHAR (4000) NULL,
    [C_CUSTOMS_STATUS_DB]        NVARCHAR (1)    NULL,
    [OBJID]                      NVARCHAR (4000) NULL,
    [OBJVERSION]                 NVARCHAR (2000) NULL,
    [OBJSTATE]                   NVARCHAR (20)   NULL,
    [OBJEVENTS]                  NVARCHAR (4000) NULL,
    [STATE]                      NVARCHAR (4000) NULL,
    [BatchID]                    BIGINT          NULL,
    [ProcessLogID]               BIGINT          NULL,
    CONSTRAINT [PK_EXT_DESADV_HEADER] PRIMARY KEY CLUSTERED ([MESSAGE_ID] ASC, [DELNOTE_NO] ASC)
);

