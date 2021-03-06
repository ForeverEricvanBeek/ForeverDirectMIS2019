﻿CREATE TABLE [MANH].[FACILITY_ALIAS] (
    [FACILITY_ALIAS_ID]        NVARCHAR (16)  NOT NULL,
    [FACILITY_ALIAS_ID_U]      NVARCHAR (16)  NULL,
    [FACILITY_ID]              INT            NOT NULL,
    [TC_COMPANY_ID]            INT            NOT NULL,
    [FACILITY_NAME]            NVARCHAR (50)  NOT NULL,
    [IS_PRIMARY]               SMALLINT       NOT NULL,
    [MARK_FOR_DELETION]        SMALLINT       NOT NULL,
    [CREATED_SOURCE_TYPE]      SMALLINT       NOT NULL,
    [CREATED_SOURCE]           NVARCHAR (32)  NOT NULL,
    [CREATED_DTTM]             DATETIME2 (7)  NOT NULL,
    [LAST_UPDATED_SOURCE_TYPE] SMALLINT       NOT NULL,
    [LAST_UPDATED_SOURCE]      NVARCHAR (50)  NOT NULL,
    [LAST_UPDATED_DTTM]        DATETIME2 (7)  NOT NULL,
    [TC_SHIPMENT_ID_PREFIX]    NVARCHAR (5)   NULL,
    [FACILITY_SEQ]             SMALLINT       NOT NULL,
    [ADDRESS_1]                NVARCHAR (75)  NULL,
    [CITY]                     NVARCHAR (40)  NULL,
    [STATE_PROV]               NVARCHAR (3)   NULL,
    [POSTAL_CODE]              NVARCHAR (10)  NULL,
    [COUNTY]                   NVARCHAR (40)  NULL,
    [COUNTRY_CODE]             NVARCHAR (2)   NULL,
    [CARRIER_ID]               BIGINT         NULL,
    [MOT_ID]                   BIGINT         NULL,
    [ADDRESS_2]                NVARCHAR (75)  NULL,
    [ADDRESS_3]                NVARCHAR (75)  NULL,
    [AUDIT_TRANSACTION]        NVARCHAR (100) NULL,
    [AUDIT_PARTY_ID]           INT            NULL,
    [HIBERNATE_VERSION]        BIGINT         NULL,
    [Eff_Date]                 DATE           NOT NULL,
    [End_Date]                 DATE           NULL,
    [ActInd]                   CHAR (1)       NULL,
    [IsDeleted]                CHAR (1)       NULL,
    [BatchID]                  BIGINT         NULL,
    [ProcessLogID]             BIGINT         NULL,
    CONSTRAINT [PK_MAN_FACILITY_ALIAS] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [FACILITY_ALIAS_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [NI_MAN_FACILITY_ALIAS_ID_ACTIND]
    ON [MANH].[FACILITY_ALIAS]([FACILITY_ALIAS_ID] ASC, [ActInd] ASC);

