﻿CREATE TABLE [MANH_ARC].[ILM_APPOINTMENTS] (
    [APPOINTMENT_ID]            INT            NOT NULL,
    [COMPANY_ID]                INT            NOT NULL,
    [FACILITY_ID]               INT            NULL,
    [CURRENT_LOCATION_ID]       INT            NULL,
    [APPT_REASON_CODE]          INT            NULL,
    [COMMENTS]                  NVARCHAR (255) NULL,
    [CARRIER_CODE]              NVARCHAR (10)  NULL,
    [BUSINESS_PARTNER_ID]       NVARCHAR (8)   NULL,
    [APPT_TYPE]                 SMALLINT       NOT NULL,
    [APPT_STATUS]               INT            NOT NULL,
    [CHECKIN_DTTM]              DATETIME2 (7)  NULL,
    [CHECKUOUT_DTTM]            DATETIME2 (7)  NULL,
    [LOAD_UNLOAD_ST_DTTM]       DATETIME2 (7)  NULL,
    [LOAD_UNLOAD_END_DTTM]      DATETIME2 (7)  NULL,
    [APPT_PRIORITY]             INT            NULL,
    [REQUEST_COMM_TYPE]         NVARCHAR (4)   NULL,
    [CREATED_SOURCE_TYPE]       SMALLINT       NOT NULL,
    [CREATED_SOURCE_DTTM]       DATETIME2 (7)  NOT NULL,
    [CREATED_SOURCE]            NVARCHAR (32)  NULL,
    [LAST_UPDATED_SOURCE_TYPE]  SMALLINT       NULL,
    [LAST_UPDATED_SOURCE]       NVARCHAR (32)  NULL,
    [LAST_UPDATED_DTTM]         DATETIME2 (7)  NULL,
    [IS_TOP_FRIEGHT]            NVARCHAR (1)   NULL,
    [TC_APPOINTMENT_ID]         NVARCHAR (75)  NOT NULL,
    [DRIVER_ID]                 INT            NULL,
    [APPOINTMENT_CREATION_TYPE] SMALLINT       NULL,
    [YARD_ID]                   INT            NULL,
    [CONTROL_NO]                NVARCHAR (50)  NULL,
    [DOCK_DOOR_ID]              NVARCHAR (8)   NULL,
    [DOOR_TYPE_ID]              NVARCHAR (8)   NULL,
    [REQUESTOR_NAME]            NVARCHAR (50)  NULL,
    [REQUESTOR_TYPE_ID]         SMALLINT       NULL,
    [TEMPLATE_ID]               INT            NULL,
    [TEMPLATE_FLAG]             NVARCHAR (1)   NOT NULL,
    [TP_COMPANY_ID]             INT            NULL,
    [LOADING_TYPE]              NVARCHAR (3)   NULL,
    [ILM_LOAD_POSITION]         SMALLINT       NULL,
    [SEAL_NUMBER]               NVARCHAR (100) NULL,
    [IS_SEAL_NUMBER_VERIFIED]   SMALLINT       NULL,
    [BEEPER_NUMBER]             NVARCHAR (32)  NULL,
    [CARRIER_ID]                INT            NULL,
    [REASON_ID]                 INT            NULL,
    [APPT_REASON_ID]            INT            NULL,
    [ORIGIN_FACILITY]           INT            NULL,
    [EQUIPMENT_ID]              INT            NULL,
    [BP_COMPANY_ID]             INT            NULL,
    [REQUESTED_DTTM]            DATETIME2 (7)  NULL,
    [SCHED_DEPARTURE_DTTM]      DATETIME2 (7)  NOT NULL,
    [EST_DEPARTURE_DTTM]        DATETIME2 (7)  NOT NULL,
    [DRIVER_DURATION_ON_YARD]   INT            NOT NULL,
    [RESERVED_APPT_ID]          INT            NULL,
    [CANCELLED_REASON_CODE]     INT            NULL,
    [CREATED_COMPANY_TYPE]      NVARCHAR (2)   NULL,
    [TRAILER_DURATION]          INT            NULL,
    [DRIVER_NAME]               NVARCHAR (25)  NULL,
    [DRIVER_LICENSE]            NVARCHAR (25)  NULL,
    [DRIVER_LICENSE_STATE]      NVARCHAR (25)  NULL,
    [LATEST_DELIVERY_DTTM]      DATETIME2 (7)  NULL,
    [RESERVE_TYPE]              SMALLINT       NULL,
    [HAS_SOFT_CHECK_ERRORS]     SMALLINT       NULL,
    [Eff_Date]                  DATE           NOT NULL,
    [End_Date]                  DATE           NULL,
    [ActInd]                    CHAR (1)       NULL,
    [IsDeleted]                 CHAR (1)       NULL,
    [BatchID]                   BIGINT         NULL,
    [ProcessLogID]              BIGINT         NULL,
    CONSTRAINT [PK_MANH_ILM_APPOINTMENTS] PRIMARY KEY CLUSTERED ([APPOINTMENT_ID] ASC, [Eff_Date] ASC) WITH (FILLFACTOR = 90) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];





