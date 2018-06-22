﻿CREATE TABLE [MANH].[FACILITY_CONTACT] (
    [FACILITY_ID]              INT             NOT NULL,
    [FACILITY_CONTACT_ID]      INT             NOT NULL,
    [FIRST_NAME]               NVARCHAR (50)   NULL,
    [MIDDLE_NAME]              NVARCHAR (50)   NULL,
    [SURNAME]                  NVARCHAR (50)   NULL,
    [CONTACT_PREFIX]           NVARCHAR (4)    NULL,
    [CONTACT_TITLE]            NVARCHAR (50)   NULL,
    [TELEPHONE_NUMBER]         NVARCHAR (32)   NULL,
    [MOBIL_PHONE_NUMBER]       NVARCHAR (32)   NULL,
    [PAGER_NUMBER]             NVARCHAR (32)   NULL,
    [FAX_NUMBER]               NVARCHAR (32)   NULL,
    [EMAIL_ADDRESS]            NVARCHAR (256)  NULL,
    [ADDRESS_1]                NVARCHAR (75)   NULL,
    [CITY]                     NVARCHAR (50)   NULL,
    [STATE_PROV]               NVARCHAR (3)    NULL,
    [POSTAL_CODE]              NVARCHAR (10)   NULL,
    [COUNTY]                   NVARCHAR (50)   NULL,
    [COUNTRY_CODE]             NVARCHAR (2)    NULL,
    [COMMENTS]                 NVARCHAR (1000) NULL,
    [MARK_FOR_DELETION]        INT             NOT NULL,
    [IS_PRIMARY]               INT             NOT NULL,
    [CONTACT_TYPE]             INT             NULL,
    [EIN]                      NVARCHAR (50)   NULL,
    [ADDRESS_2]                NVARCHAR (75)   NULL,
    [ADDRESS_3]                NVARCHAR (75)   NULL,
    [CREATED_SOURCE]           NVARCHAR (100)  NULL,
    [CREATED_SOURCE_TYPE]      INT             NOT NULL,
    [CREATED_DTTM]             DATETIME2 (7)   NOT NULL,
    [LAST_UPDATED_SOURCE]      NVARCHAR (100)  NULL,
    [LAST_UPDATED_SOURCE_TYPE] INT             NULL,
    [LAST_UPDATED_DTTM]        DATETIME2 (7)   NULL,
    [LAST_UPDATED_TRANSACTION] NVARCHAR (100)  NULL,
    [PARTY_ID]                 INT             NULL,
    [HIBERNATE_VERSION]        INT             NULL,
    [Eff_Date]                 DATE            NOT NULL,
    [End_Date]                 DATE            NULL,
    [ActInd]                   CHAR (1)        NULL,
    [IsDeleted]                CHAR (1)        NULL,
    [BatchID]                  BIGINT          NULL,
    [ProcessLogID]             BIGINT          NULL,
    CONSTRAINT [PK_FACILITY_CONTACT] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [FACILITY_ID] ASC, [FACILITY_CONTACT_ID] ASC)
);

