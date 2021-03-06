﻿CREATE TABLE [IFS].[SITE] (
    [CONTRACT]                       NVARCHAR (5)    NOT NULL,
    [COMPANY]                        NVARCHAR (20)   NULL,
    [DELIVERY_ADDRESS]               NVARCHAR (50)   NULL,
    [DESCRIPTION]                    NVARCHAR (4000) NULL,
    [DIST_CALENDAR_ID]               NVARCHAR (10)   NULL,
    [MANUF_CALENDAR_ID]              NVARCHAR (10)   NULL,
    [OFFSET]                         INT             NULL,
    [C_ITEM_COUNTRY_CODE]            NVARCHAR (3)    NULL,
    [C_CUSTOMER_NUMBER_KEWILL]       NVARCHAR (10)   NULL,
    [C_CUSTOMS_AUTHORIZATION_NUMBER] NVARCHAR (25)   NULL,
    [C_EORI_NUMBER]                  NVARCHAR (20)   NULL,
    [C_CUSTOMS_OFFICE_CUSTOMS_ID]    NVARCHAR (20)   NULL,
    [C_CUSTOMS_OFFICE_NAME]          NVARCHAR (35)   NULL,
    [C_USE_DUTCH_CUSTOMS_INTERFACE]  NVARCHAR (5)    NULL,
    [C_USE_GERMAN_CUSTOMS_INTERFACE] NVARCHAR (5)    NULL,
    [C_SIMPLIFIED_PROC_INBOUND]      NVARCHAR (5)    NULL,
    [C_AGREED_WAITING_TIME_INBOUND]  DATETIME2 (7)   NULL,
    [C_SIMPLIFIED_PROC_OUTBOUND]     NVARCHAR (5)    NULL,
    [C_LARGE_CUSTOMERS]              NVARCHAR (5)    NULL,
    [C_SMALL_CUSTOMERS]              NVARCHAR (5)    NULL,
    [C_AGREED_WAITING_TIME_OUTBOUND] DATETIME2 (7)   NULL,
    [C_ZABIS_VERSION]                NVARCHAR (10)   NULL,
    [C_BRANCH_OFFICE]                NVARCHAR (3)    NULL,
    [CUSTOMS_ID]                     NVARCHAR (20)   NULL,
    [C_STOCK_REC_HIST_DAYS]          INT             NULL,
    [OBJID]                          NVARCHAR (4000) NULL,
    [OBJVERSION]                     NVARCHAR (2000) NULL,
    [Eff_Date]                       DATE            NOT NULL,
    [End_Date]                       DATE            NULL,
    [ActInd]                         CHAR (1)        NULL,
    [IsDeleted]                      CHAR (1)        NULL,
    [BatchID]                        BIGINT          NULL,
    [ProcessLogID]                   BIGINT          NULL,
    CONSTRAINT [PK_SITE] PRIMARY KEY CLUSTERED ([CONTRACT] ASC, [Eff_Date] ASC)
);

