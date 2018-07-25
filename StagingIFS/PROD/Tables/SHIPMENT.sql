﻿CREATE TABLE [PROD].[SHIPMENT] (
    [SHIPMENT_ID]                   INT             NOT NULL,
    [SHIPPER_ADDRESS1]              NVARCHAR (50)   NULL,
    [SHIPPER_ADDRESS2]              NVARCHAR (50)   NULL,
    [SHIPPER_ZIP_CODE]              NVARCHAR (35)   NULL,
    [SHIPPER_CITY]                  NVARCHAR (35)   NULL,
    [SHIPPER_STATE]                 NVARCHAR (35)   NULL,
    [NOTE_TEXT]                     NVARCHAR (2000) NULL,
    [NOTE_ID]                       INT             NULL,
    [SHIPPER_COUNTY]                NVARCHAR (35)   NULL,
    [CONSIGNMENT_PRINTED]           NVARCHAR (4000) NULL,
    [CONSIGNMENT_PRINTED_DB]        NVARCHAR (20)   NULL,
    [DEL_NOTE_PRINTED]              NVARCHAR (4000) NULL,
    [DEL_NOTE_PRINTED_DB]           NVARCHAR (20)   NULL,
    [DELIVER_TO_CUSTOMER_NO]        NVARCHAR (20)   NULL,
    [SHIP_ADDR_NO]                  NVARCHAR (50)   NULL,
    [CONTRACT]                      NVARCHAR (5)    NULL,
    [SHIPPER_COUNTRY]               NVARCHAR (2)    NULL,
    [FORWARD_AGENT_ID]              NVARCHAR (20)   NULL,
    [SHIPPER_ID]                    NVARCHAR (50)   NULL,
    [SHIP_VIA_CODE]                 NVARCHAR (3)    NULL,
    [DELIVERY_TERMS]                NVARCHAR (3)    NULL,
    [LANGUAGE_CODE]                 NVARCHAR (2)    NULL,
    [SHIPPER_NAME]                  NVARCHAR (100)  NULL,
    [CONSIGNMENT_NOTE_ID]           NVARCHAR (50)   NULL,
    [PRO_NO]                        NVARCHAR (50)   NULL,
    [AIRWAY_BILL_NO]                NVARCHAR (50)   NULL,
    [SENDER_REFERENCE]              NVARCHAR (35)   NULL,
    [PLACE_OF_DEPARTURE]            NVARCHAR (35)   NULL,
    [CONSIGNEE_REFERENCE]           NVARCHAR (35)   NULL,
    [PLACE_OF_DESTINATION]          NVARCHAR (35)   NULL,
    [REMIT_COD_TO]                  NVARCHAR (200)  NULL,
    [PAYER_REFERENCE]               NVARCHAR (200)  NULL,
    [SHIPMENT_PAYER]                NVARCHAR (4000) NULL,
    [SHIPMENT_PAYER_DB]             NVARCHAR (20)   NULL,
    [PACKAGE_LIST_PRINTED]          NVARCHAR (4000) NULL,
    [PACKAGE_LIST_PRINTED_DB]       NVARCHAR (20)   NULL,
    [SHIP_DATE]                     DATETIME2 (7)   NULL,
    [SHIP_INVENTORY_LOCATION_NO]    NVARCHAR (35)   NULL,
    [BILL_OF_LADING_PRINTED]        NVARCHAR (4000) NULL,
    [BILL_OF_LADING_PRINTED_DB]     NVARCHAR (20)   NULL,
    [MULTI_LOT_BATCH_PER_PALLET]    NVARCHAR (4000) NULL,
    [MULTI_LOT_BATCH_PER_PALLET_DB] NVARCHAR (5)    NULL,
    [SHIPMENT_UNCON_STRUCT]         NVARCHAR (4000) NULL,
    [SHIPMENT_UNCON_STRUCT_DB]      NVARCHAR (5)    NULL,
    [SHIPMENT_MEASURE_EDIT]         NVARCHAR (4000) NULL,
    [SHIPMENT_MEASURE_EDIT_DB]      NVARCHAR (5)    NULL,
    [CUSTOMER_ADDRESS_NAME]         NVARCHAR (100)  NULL,
    [CUSTOMER_ADDRESS1]             NVARCHAR (50)   NULL,
    [CUSTOMER_ADDRESS2]             NVARCHAR (50)   NULL,
    [CUSTOMER_ZIP_CODE]             NVARCHAR (35)   NULL,
    [CUSTOMER_CITY]                 NVARCHAR (35)   NULL,
    [CUSTOMER_STATE]                NVARCHAR (35)   NULL,
    [CUSTOMER_COUNTY]               NVARCHAR (35)   NULL,
    [CUSTOMER_COUNTRY]              NVARCHAR (2)    NULL,
    [ADDR_FLAG]                     NVARCHAR (4000) NULL,
    [ADDR_FLAG_DB]                  NVARCHAR (1)    NULL,
    [QTY_EUR_PALLETS]               INT             NULL,
    [DEL_TERMS_LOCATION]            NVARCHAR (100)  NULL,
    [FIX_DELIV_FREIGHT]             INT             NULL,
    [APPLY_FIX_DELIV_FREIGHT]       NVARCHAR (4000) NULL,
    [APPLY_FIX_DELIV_FREIGHT_DB]    NVARCHAR (20)   NULL,
    [CURRENCY_CODE]                 NVARCHAR (3)    NULL,
    [ZONE_DEFINITION_ID]            NVARCHAR (15)   NULL,
    [ZONE_ID]                       NVARCHAR (15)   NULL,
    [PRICE_LIST_NO]                 NVARCHAR (10)   NULL,
    [FREIGHT_CHG_INVOICED]          NVARCHAR (4000) NULL,
    [FREIGHT_CHG_INVOICED_DB]       NVARCHAR (20)   NULL,
    [C_SHIPPER_ADDRESS3]            NVARCHAR (50)   NULL,
    [C_SHIPPER_ADDRESS4]            NVARCHAR (50)   NULL,
    [C_CUSTOMER_ADDRESS3]           NVARCHAR (50)   NULL,
    [C_CUSTOMER_ADDRESS4]           NVARCHAR (50)   NULL,
    [C_INTERFACE_DATE]              DATETIME2 (7)   NULL,
    [C_ORDER_TYPE]                  NVARCHAR (3)    NULL,
    [C_CONSOLIDATED_SHIPMENT_ID]    NVARCHAR (20)   NULL,
    [C_CMS_OUTBOUND_SENT]           NVARCHAR (5)    NULL,
    [C_DATE_OUTBOUND_SENT]          DATETIME2 (7)   NULL,
    [C_COD_AMOUNT]                  INT             NULL,
    [C_COD_CURRENCY_CODE]           NVARCHAR (3)    NULL,
    [C_INVOICE_DATE]                DATETIME2 (7)   NULL,
    [C_VESSEL_AIRLINE_NAME]         NVARCHAR (100)  NULL,
    [C_SHIPPING_CONTAINER_NO]       NVARCHAR (100)  NULL,
    [C_BOOKING_MAWB_NO]             NVARCHAR (100)  NULL,
    [C_SEAL_FLIGHT_NO]              NVARCHAR (100)  NULL,
    [C_FORWARDER_NAME]              NVARCHAR (100)  NULL,
    [C_STEAMSHIP_LINE]              NVARCHAR (100)  NULL,
    [C_SHIP_DATE]                   DATETIME2 (7)   NULL,
    [C_ESTIMATED_ARRIVAL_DATE]      DATETIME2 (7)   NULL,
    [C_SHIPPING_CHARGES]            NVARCHAR (4000) NULL,
    [C_SHIPPING_CHARGES_DB]         NVARCHAR (50)   NULL,
    [C_PORT_OF_ARRIVAL]             NVARCHAR (4000) NULL,
    [C_PORT_OF_ARRIVAL_DB]          NVARCHAR (50)   NULL,
    [OBJID]                         NVARCHAR (4000) NULL,
    [OBJVERSION]                    NVARCHAR (2000) NULL,
    [OBJSTATE]                      NVARCHAR (20)   NULL,
    [OBJEVENTS]                     NVARCHAR (4000) NULL,
    [STATE]                         NVARCHAR (20)   NULL,
    [BatchID]                       BIGINT          NULL,
    [ProcessLogID]                  BIGINT          NULL,
    CONSTRAINT [PK_SHIPMENT] PRIMARY KEY CLUSTERED ([SHIPMENT_ID] ASC)
);

