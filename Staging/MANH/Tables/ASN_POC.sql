﻿CREATE TABLE [MANH].[ASN_POC] (
    [ASN_ID]                         BIGINT          NOT NULL,
    [TC_COMPANY_ID]                  INT             NOT NULL,
    [TC_ASN_ID]                      NVARCHAR (50)   NOT NULL,
    [TC_ASN_ID_U]                    NVARCHAR (50)   NOT NULL,
    [ASN_TYPE]                       SMALLINT        NOT NULL,
    [ASN_STATUS]                     SMALLINT        NULL,
    [TRACTOR_NUMBER]                 NVARCHAR (50)   NULL,
    [DELIVERY_STOP_SEQ]              SMALLINT        NULL,
    [ORIGIN_FACILITY_ALIAS_ID]       NVARCHAR (16)   NULL,
    [ORIGIN_FACILITY_ID]             INT             NULL,
    [PICKUP_END_DTTM]                DATETIME2 (7)   NULL,
    [ACTUAL_DEPARTURE_DTTM]          DATETIME2 (7)   NULL,
    [DESTINATION_FACILITY_ALIAS_ID]  NVARCHAR (16)   NULL,
    [DESTINATION_FACILITY_ID]        INT             NULL,
    [DELIVERY_START_DTTM]            DATETIME2 (7)   NULL,
    [DELIVERY_END_DTTM]              DATETIME2 (7)   NULL,
    [ACTUAL_ARRIVAL_DTTM]            DATETIME2 (7)   NULL,
    [RECEIPT_DTTM]                   DATETIME2 (7)   NULL,
    [INBOUND_REGION_NAME]            NVARCHAR (10)   NULL,
    [OUTBOUND_REGION_NAME]           NVARCHAR (10)   NULL,
    [REF_FIELD_1]                    NVARCHAR (25)   NULL,
    [REF_FIELD_2]                    NVARCHAR (25)   NULL,
    [REF_FIELD_3]                    NVARCHAR (25)   NULL,
    [TOTAL_WEIGHT]                   NUMERIC (13, 4) NULL,
    [APPOINTMENT_ID]                 NVARCHAR (50)   NULL,
    [APPOINTMENT_DTTM]               DATETIME2 (7)   NULL,
    [APPOINTMENT_DURATION]           INT             NULL,
    [PALLET_FOOTPRINT]               NVARCHAR (8)    NULL,
    [LAST_TRANSMITTED_DTTM]          DATETIME2 (7)   NULL,
    [TOTAL_SHIPPED_QTY]              NUMERIC (13, 2) NULL,
    [TOTAL_RECEIVED_QTY]             NUMERIC (13, 2) NULL,
    [ASSIGNED_CARRIER_CODE]          NVARCHAR (10)   NULL,
    [BILL_OF_LADING_NUMBER]          NVARCHAR (30)   NULL,
    [PRO_NUMBER]                     NVARCHAR (20)   NULL,
    [EQUIPMENT_CODE]                 NVARCHAR (20)   NULL,
    [EQUIPMENT_CODE_ID]              INT             NULL,
    [ASSIGNED_CARRIER_CODE_ID]       INT             NULL,
    [TOTAL_VOLUME]                   NUMERIC (13, 4) NULL,
    [VOLUME_UOM_ID_BASE]             INT             NULL,
    [FIRM_APPT_IND]                  SMALLINT        NULL,
    [TRACTOR_CARRIER_CODE_ID]        INT             NULL,
    [TRACTOR_CARRIER_CODE]           NVARCHAR (4)    NULL,
    [BUYER_CODE]                     NVARCHAR (3)    NULL,
    [REP_NAME]                       NVARCHAR (50)   NULL,
    [CONTACT_ADDRESS_1]              NVARCHAR (75)   NULL,
    [CONTACT_ADDRESS_2]              NVARCHAR (75)   NULL,
    [CONTACT_ADDRESS_3]              NVARCHAR (75)   NULL,
    [CONTACT_CITY]                   NVARCHAR (40)   NULL,
    [CONTACT_STATE_PROV]             NVARCHAR (3)    NULL,
    [CONTACT_ZIP]                    NVARCHAR (10)   NULL,
    [CONTACT_NUMBER]                 NVARCHAR (32)   NULL,
    [EXT_CREATED_DTTM]               DATETIME2 (7)   NULL,
    [INBOUND_REGION_ID]              INT             NULL,
    [OUTBOUND_REGION_ID]             INT             NULL,
    [REGION_ID]                      INT             NULL,
    [ASN_LEVEL]                      SMALLINT        NOT NULL,
    [RECEIPT_VARIANCE]               SMALLINT        NOT NULL,
    [HAS_IMPORT_ERROR]               SMALLINT        NOT NULL,
    [HAS_SOFT_CHECK_ERROR]           SMALLINT        NOT NULL,
    [HAS_ALERTS]                     SMALLINT        NOT NULL,
    [SYSTEM_ALLOCATED]               SMALLINT        NOT NULL,
    [IS_COGI_GENERATED]              SMALLINT        NOT NULL,
    [ASN_PRIORITY]                   SMALLINT        NOT NULL,
    [SCHEDULE_APPT]                  SMALLINT        NOT NULL,
    [IS_ASSOCIATED_TO_OUTBOUND]      SMALLINT        NULL,
    [IS_CANCELLED]                   SMALLINT        NOT NULL,
    [IS_CLOSED]                      SMALLINT        NOT NULL,
    [BUSINESS_PARTNER_ID]            NVARCHAR (10)   NULL,
    [MANIF_NBR]                      NVARCHAR (20)   NULL,
    [MANIF_TYPE]                     NVARCHAR (2)    NULL,
    [WORK_ORD_NBR]                   NVARCHAR (12)   NULL,
    [CUT_NBR]                        NVARCHAR (12)   NULL,
    [MFG_PLNT]                       NVARCHAR (3)    NULL,
    [IS_WHSE_TRANSFER]               NVARCHAR (1)    NOT NULL,
    [QUALITY_CHECK_HOLD_UPON_RCPT]   NVARCHAR (1)    NULL,
    [QUALITY_AUDIT_PERCENT]          NUMERIC (5, 2)  NOT NULL,
    [SHIPPED_LPN_COUNT]              INT             NULL,
    [RECEIVED_LPN_COUNT]             INT             NULL,
    [ACTUAL_SHIPPED_DTTM]            DATETIME2 (7)   NULL,
    [LAST_RECEIPT_DTTM]              DATETIME2 (7)   NULL,
    [VERIFIED_DTTM]                  DATETIME2 (7)   NULL,
    [LABEL_PRINT_REQD]               NVARCHAR (1)    NULL,
    [INITIATE_FLAG]                  NVARCHAR (1)    NULL,
    [CREATED_SOURCE_TYPE]            SMALLINT        NOT NULL,
    [CREATED_SOURCE]                 NVARCHAR (25)   NULL,
    [CREATED_DTTM]                   DATETIME2 (7)   NOT NULL,
    [LAST_UPDATED_SOURCE_TYPE]       SMALLINT        NOT NULL,
    [LAST_UPDATED_SOURCE]            NVARCHAR (25)   NULL,
    [LAST_UPDATED_DTTM]              DATETIME2 (7)   NOT NULL,
    [SHIPMENT_ID]                    BIGINT          NULL,
    [TC_SHIPMENT_ID]                 NVARCHAR (50)   NULL,
    [VERIFICATION_ATTEMPTED]         NVARCHAR (1)    NULL,
    [FLOW_THRU_ALLOC_IN_PROG]        NVARCHAR (1)    NULL,
    [ALLOCATION_COMPLETED]           NVARCHAR (1)    NULL,
    [EQUIPMENT_TYPE]                 NVARCHAR (8)    NULL,
    [ASN_ORGN_TYPE]                  NVARCHAR (1)    NULL,
    [DC_ORD_NBR]                     NVARCHAR (10)   NULL,
    [CONTRAC_LOCN]                   NVARCHAR (10)   NULL,
    [MHE_SENT]                       NVARCHAR (3)    NULL,
    [FLOW_THROUGH_ALLOCATION_METHOD] NVARCHAR (1)    NULL,
    [FIRST_RECEIPT_DTTM]             DATETIME2 (7)   NULL,
    [MISC_INSTR_CODE_1]              NVARCHAR (25)   NULL,
    [MISC_INSTR_CODE_2]              NVARCHAR (25)   NULL,
    [DOCK_DOOR_ID]                   BIGINT          NULL,
    [MODE_ID]                        INT             NULL,
    [SHIPPING_COST]                  NUMERIC (13, 4) NULL,
    [SHIPPING_COST_CURRENCY_CODE]    NVARCHAR (3)    NULL,
    [FLOWTHROUGH_ALLOCATION_STATUS]  SMALLINT        NULL,
    [HIBERNATE_VERSION]              BIGINT          NULL,
    [QTY_UOM_ID_BASE]                INT             NULL,
    [WEIGHT_UOM_ID_BASE]             INT             NULL,
    [DRIVER_NAME]                    NVARCHAR (50)   NULL,
    [TRAILER_NUMBER]                 NVARCHAR (20)   NULL,
    [DESTINATION_TYPE]               NVARCHAR (1)    NULL,
    [CONTACT_COUNTY]                 NVARCHAR (40)   NULL,
    [CONTACT_COUNTRY_CODE]           NVARCHAR (2)    NULL,
    [RECEIPT_TYPE]                   SMALLINT        NULL,
    [VARIANCE_TYPE]                  SMALLINT        NULL,
    [HAS_NOTES]                      SMALLINT        NOT NULL,
    [ORIGINAL_ASN_ID]                BIGINT          NULL,
    [ORA_ROWSCN]                     BIGINT          NULL,
    [BatchID]                        BIGINT          NULL,
    [ProcessLogID]                   BIGINT          NULL,
    CONSTRAINT [PK_MANH_ASN_POC] PRIMARY KEY CLUSTERED ([ASN_ID] ASC)
);

