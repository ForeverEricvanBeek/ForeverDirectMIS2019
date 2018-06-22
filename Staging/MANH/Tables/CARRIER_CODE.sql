﻿CREATE TABLE [MANH].[CARRIER_CODE] (
    [TC_COMPANY_ID]                INT             NOT NULL,
    [CARRIER_CODE]                 NVARCHAR (10)   NULL,
    [TP_COMPANY_ID]                INT             NOT NULL,
    [TP_COMPANY_NAME]              NVARCHAR (100)  NULL,
    [CARRIER_CODE_NAME]            NVARCHAR (100)  NOT NULL,
    [ADDRESS]                      NVARCHAR (255)  NULL,
    [CITY]                         NVARCHAR (50)   NULL,
    [STATE_PROV]                   NVARCHAR (3)    NULL,
    [POSTAL_CODE]                  NVARCHAR (10)   NULL,
    [COUNTRY_CODE]                 NVARCHAR (2)    NULL,
    [CARRIER_CODE_STATUS]          SMALLINT        NOT NULL,
    [MARK_FOR_DELETION]            SMALLINT        NOT NULL,
    [COMM_METHOD]                  NVARCHAR (4)    NOT NULL,
    [IS_UNION]                     SMALLINT        NOT NULL,
    [IS_AUTO_DELIVER]              SMALLINT        NOT NULL,
    [AUTO_ACCEPT_TYPE]             SMALLINT        NOT NULL,
    [ACCEPT_MSG_REQD]              SMALLINT        NOT NULL,
    [APPT_MSG_REQD]                SMALLINT        NOT NULL,
    [DEPART_MSG_REQD]              SMALLINT        NOT NULL,
    [ARRIVE_MSG_REQD]              SMALLINT        NOT NULL,
    [CONFIRM_RECALL_REQD]          SMALLINT        NOT NULL,
    [CONFIRM_UPDATE_REQD]          SMALLINT        NOT NULL,
    [CREATED_SOURCE_TYPE]          SMALLINT        NOT NULL,
    [CREATED_SOURCE]               NVARCHAR (50)   NOT NULL,
    [CREATED_DTTM]                 DATETIME2 (7)   NOT NULL,
    [LAST_UPDATED_SOURCE_TYPE]     SMALLINT        NOT NULL,
    [LAST_UPDATED_SOURCE]          NVARCHAR (50)   NOT NULL,
    [LAST_UPDATED_DTTM]            DATETIME2 (7)   NOT NULL,
    [IS_BROKER]                    SMALLINT        NULL,
    [BROKER_RECEIVE_UPDATES]       SMALLINT        NULL,
    [IS_PREPAY]                    SMALLINT        NOT NULL,
    [ALLOW_BOL_ENTRY]              SMALLINT        NOT NULL,
    [AUTO_DELIVER_DELAY_HOURS]     INT             NULL,
    [DOCK_SCHEDULE_PERMISSION]     SMALLINT        NOT NULL,
    [ALLOW_LOAD_COMPLETION]        SMALLINT        NOT NULL,
    [RECEIVES_DOCK_INFO]           SMALLINT        NOT NULL,
    [ALLOW_TRAILER_ENTRY]          SMALLINT        NOT NULL,
    [ALLOW_TRACTOR_ENTRY]          SMALLINT        NOT NULL,
    [PAYMENT_REFERENCE_NUMBER]     NVARCHAR (10)   NULL,
    [IS_PAYEE]                     SMALLINT        NULL,
    [ALLOW_CARRIER_CHARGES_VIEW]   SMALLINT        NOT NULL,
    [SUPPORTS_PARCEL]              SMALLINT        NOT NULL,
    [TARIFF_ID]                    NVARCHAR (16)   NULL,
    [IS_AUTO_CREATE_INVOICE]       SMALLINT        NOT NULL,
    [DOES_RECEIVE_FACILITY_INFO]   SMALLINT        NOT NULL,
    [IS_PRIVATE_FLEET]             SMALLINT        NOT NULL,
    [INVOICE_PAYMENT_TERMS]        NVARCHAR (8)    NOT NULL,
    [MATCH_PAY_EMAIL]              NVARCHAR (255)  NULL,
    [DAYS_TO_DISPUTE_CLAIM]        INT             NULL,
    [PAYMENT_METHOD]               NVARCHAR (10)   NULL,
    [IS_PREFERRED]                 SMALLINT        NOT NULL,
    [CUT_PARCEL_INVOICE]           SMALLINT        NOT NULL,
    [USE_CARRIER_ADDR]             SMALLINT        NULL,
    [CARRIER_ADDR_FOR_CL]          NVARCHAR (255)  NULL,
    [CLAIM_ON_DETENTION_APPROVAL]  SMALLINT        NOT NULL,
    [IS_RES_BASED_COSTING_ALLOWED] SMALLINT        NOT NULL,
    [IS_ACTIVITY_BASED_COSTING]    SMALLINT        NULL,
    [PCT_OVER_CAPACITY]            NUMERIC (13, 4) NULL,
    [CARRIER_ID]                   BIGINT          NOT NULL,
    [ALLOW_CARRIER_BOOKING_REF]    SMALLINT        NOT NULL,
    [ALLOW_FORWARDER_AWB]          SMALLINT        NOT NULL,
    [ALLOW_MASTER_AWB]             SMALLINT        NOT NULL,
    [VALIDATE_INVOICE]             INT             NOT NULL,
    [MAX_FLEET_APPROVED_AMOUNT]    NUMERIC (13, 2) NULL,
    [HAS_HAZMAT]                   SMALLINT        NULL,
    [CARRIER_TYPE_ID]              SMALLINT        NULL,
    [CHECK_NON_MACHINABLE]         SMALLINT        NULL,
    [PRO_NUMBER_LEVEL]             NVARCHAR (25)   NULL,
    [LOAD_PRO_NEXT_UP_COUNTER]     INT             NULL,
    [STOP_PRO_NEXT_UP_COUNTER]     INT             NULL,
    [DEFAULT_PALLET_TYPE]          NVARCHAR (8)    NULL,
    [LANG_ID]                      NVARCHAR (8)    NULL,
    [AWB_UOM]                      SMALLINT        NULL,
    [TRANS_EXCEL]                  SMALLINT        NULL,
    [INV_ON_CARR_SIZES]            SMALLINT        NULL,
    [PRO_NUMBER_REQD]              SMALLINT        NULL,
    [ALLOW_COUNTER_OFFER]          SMALLINT        NOT NULL,
    [BatchID]                      BIGINT          NULL,
    [ProcessLogID]                 BIGINT          NULL,
    CONSTRAINT [PK_MANH_CARRIER_CODE] PRIMARY KEY CLUSTERED ([CARRIER_ID] ASC)
);

