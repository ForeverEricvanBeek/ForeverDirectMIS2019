﻿CREATE TABLE [MANH_ARC].[STOP] (
    [SHIPMENT_ID]              INT             NOT NULL,
    [STOP_SEQ]                 INT             NOT NULL,
    [TC_COMPANY_ID]            INT             NULL,
    [WAVE_ID]                  INT             NULL,
    [WAVE_OPTION_ID]           INT             NULL,
    [WAVE_OPTION_LIST_ID]      INT             NULL,
    [ARRIVAL_LATE_REASON_ID]   INT             NULL,
    [DEPARTURE_LATE_REASON_ID] INT             NULL,
    [SIZE_UOM_ID]              INT             NULL,
    [DOCK_DISPATCH_CAP_ID]     INT             NULL,
    [IS_APPT_REQD]             INT             NULL,
    [POS_ARR_START_DTTM]       DATETIME2 (7)   NULL,
    [POS_ARR_END_DTTM]         DATETIME2 (7)   NULL,
    [POS_DEPART_START_DTTM]    DATETIME2 (7)   NULL,
    [POS_DEPART_END_DTTM]      DATETIME2 (7)   NULL,
    [ARRIVAL_START_DTTM]       DATETIME2 (7)   NULL,
    [ARRIVAL_END_DTTM]         DATETIME2 (7)   NULL,
    [EST_ARRIVAL_DTTM]         DATETIME2 (7)   NULL,
    [ARRIVAL_COMMIT_DTTM]      DATETIME2 (7)   NULL,
    [ACTUAL_ARRIVAL_DTTM]      DATETIME2 (7)   NULL,
    [APPT_DTTM]                DATETIME2 (7)   NULL,
    [DEPARTURE_START_DTTM]     DATETIME2 (7)   NULL,
    [DEPARTURE_END_DTTM]       DATETIME2 (7)   NULL,
    [EST_DEPARTURE_DTTM]       DATETIME2 (7)   NULL,
    [ACTUAL_DEPARTURE_DTTM]    DATETIME2 (7)   NULL,
    [START_SHIPMENT_DTTM]      DATETIME2 (7)   NULL,
    [END_SHIPMENT_DTTM]        DATETIME2 (7)   NULL,
    [PAPERWORK_START_DTTM]     DATETIME2 (7)   NULL,
    [PICKUP_START_DTTM]        DATETIME2 (7)   NULL,
    [EST_DISPATCH_DTTM]        DATETIME2 (7)   NULL,
    [SHIPMENT_START_DTTM]      DATETIME2 (7)   NULL,
    [SHIPMENT_END_DTTM]        DATETIME2 (7)   NULL,
    [CHECKIN_TIME]             DATETIME2 (7)   NULL,
    [CHECKOUT_TIME]            DATETIME2 (7)   NULL,
    [ARRIVAL_NET_DTTM]         DATETIME2 (7)   NULL,
    [ARRIVAL_NLT_DTTM]         DATETIME2 (7)   NULL,
    [DEPARTURE_NET_DTTM]       DATETIME2 (7)   NULL,
    [DEPARTURE_NLT_DTTM]       DATETIME2 (7)   NULL,
    [REC_ARRIVAL_DTTM]         DATETIME2 (7)   NULL,
    [REC_DEPARTURE_DTTM]       DATETIME2 (7)   NULL,
    [BREAK_TIME]               INT             NULL,
    [WAITING_TIME]             INT             NULL,
    [STOP_LOCATION_NAME]       NVARCHAR (50)   NULL,
    [CONTACT_FIRST_NAME]       NVARCHAR (50)   NULL,
    [CONTACT_SURNAME]          NVARCHAR (50)   NULL,
    [CONTACT_PHONE_NUMBER]     NVARCHAR (32)   NULL,
    [FACILITY_ALIAS_ID]        NVARCHAR (16)   NULL,
    [FACILITY_ID]              INT             NULL,
    [ADDRESS_1]                NVARCHAR (75)   NULL,
    [ADDRESS_2]                NVARCHAR (75)   NULL,
    [CITY]                     NVARCHAR (40)   NULL,
    [STATE_PROV]               NVARCHAR (3)    NULL,
    [POSTAL_CODE]              NVARCHAR (10)   NULL,
    [COUNTY]                   NVARCHAR (40)   NULL,
    [COUNTRY_CODE]             NVARCHAR (2)    NULL,
    [HANDLER]                  INT             NULL,
    [DISTANCE]                 DECIMAL (9, 2)  NULL,
    [DISTANCE_UOM]             NVARCHAR (2)    NULL,
    [STOP_TZ]                  INT             NOT NULL,
    [BILL_OF_LADING_NUMBER]    NVARCHAR (30)   NULL,
    [DROP_HOOK_INDICATOR]      INT             NULL,
    [HANDLING_TIME]            DECIMAL (10, 2) NULL,
    [REPORTED_HANDLER]         INT             NULL,
    [SEGMENT_ID]               INT             NULL,
    [SEGMENT_STOP_SEQ]         INT             NULL,
    [CAPACITY]                 INT             NULL,
    [HAS_NOTES]                INT             NOT NULL,
    [IS_ADDR_OVERRIDE]         INT             NOT NULL,
    [IS_RECONSIGNED]           INT             NULL,
    [IS_EST_ARR_USER_DEFINED]  INT             NULL,
    [IS_EST_DEP_USER_DEFINED]  INT             NULL,
    [IS_WAVE_MAN_CHANGED]      INT             NOT NULL,
    [DELAY_TYPE]               INT             NULL,
    [STOP_STATUS]              INT             NULL,
    [SEAL_NUMBER]              NVARCHAR (10)   NULL,
    [APPOINTMENT_DURATION]     INT             NULL,
    [BOL_TYPE]                 INT             NULL,
    [PRO_NBR]                  NVARCHAR (20)   NULL,
    [AUTH_NBR]                 NVARCHAR (20)   NULL,
    [MANIF_TYPE]               NVARCHAR (4)    NULL,
    [CURR_PLT_ID]              NVARCHAR (20)   NULL,
    [CONS_LOCN_ID]             NVARCHAR (10)   NULL,
    [RTE_ID]                   NVARCHAR (16)   NULL,
    [AES_ITN]                  NVARCHAR (10)   NULL,
    [BOL_BREAK_ATTR]           NVARCHAR (3)    NULL,
    [FREIGHT_TERMS]            NVARCHAR (1)    NULL,
    [ADDRESS_3]                NVARCHAR (75)   NULL,
    [DOCK_DOOR_LOCN_ID]        NVARCHAR (10)   NULL,
    [FLOOR_SHIPMENT]           NVARCHAR (1)    NULL,
    [HIBERNATE_VERSION]        INT             NULL,
    [HITCH_TIME]               INT             NULL,
    [LOAD_CLOSED_INDICATOR]    INT             NOT NULL,
    [STOP_TIME_MODIFIED]       INT             NULL,
    [DRIVE_TIME]               INT             NULL,
    [REF_FIELD_1]              NVARCHAR (25)   NULL,
    [REF_FIELD_2]              NVARCHAR (25)   NULL,
    [REF_FIELD_3]              NVARCHAR (25)   NULL,
    [REF_FIELD_4]              NVARCHAR (25)   NULL,
    [REF_FIELD_5]              NVARCHAR (25)   NULL,
    [REF_FIELD_6]              NVARCHAR (25)   NULL,
    [REF_FIELD_7]              NVARCHAR (25)   NULL,
    [REF_FIELD_8]              NVARCHAR (25)   NULL,
    [REF_FIELD_9]              NVARCHAR (25)   NULL,
    [REF_FIELD_10]             NVARCHAR (25)   NULL,
    [ORDER_WINDOW_VIOLATION]   INT             NULL,
    [DOCK_VIOLATION]           INT             NULL,
    [WAVE_OPTION_VIOLATION]    INT             NULL,
    [STAGING_LOCN_ID]          NVARCHAR (10)   NULL,
    [CALC_EST_ARRIVAL_DTTM]    DATETIME2 (7)   NULL,
    [DEGREE_LATE_EARLY]        INT             NULL,
    [Eff_Date]                 DATE            NOT NULL,
    [End_Date]                 DATE            NULL,
    [ActInd]                   CHAR (1)        NULL,
    [IsDeleted]                CHAR (1)        NULL,
    [BatchID]                  BIGINT          NULL,
    [ProcessLogID]             BIGINT          NULL,
    CONSTRAINT [PK_MANH_STOP] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [SHIPMENT_ID] ASC, [STOP_SEQ] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];
