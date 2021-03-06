﻿CREATE TABLE [IFS].[SUPPLIER_INFO] (
    [SUPPLIER_ID]                  NVARCHAR (20)   NOT NULL,
    [NAME]                         NVARCHAR (100)  NULL,
    [CREATION_DATE]                DATETIME2 (7)   NULL,
    [ASSOCIATION_NO]               NVARCHAR (50)   NULL,
    [PARTY]                        NVARCHAR (20)   NULL,
    [DEFAULT_DOMAIN]               NVARCHAR (5)    NULL,
    [DEFAULT_LANGUAGE]             NVARCHAR (4000) NULL,
    [DEFAULT_LANGUAGE_DB]          NVARCHAR (2)    NULL,
    [COUNTRY]                      NVARCHAR (4000) NULL,
    [COUNTRY_DB]                   NVARCHAR (2)    NULL,
    [PARTY_TYPE]                   NVARCHAR (4000) NULL,
    [PARTY_TYPE_DB]                NVARCHAR (20)   NULL,
    [SUPPLIERS_OWN_ID]             NVARCHAR (20)   NULL,
    [CORPORATE_FORM]               NVARCHAR (8)    NULL,
    [IDENTIFIER_REFERENCE]         NVARCHAR (100)  NULL,
    [IDENTIFIER_REF_VALIDATION]    NVARCHAR (4000) NULL,
    [IDENTIFIER_REF_VALIDATION_DB] NVARCHAR (20)   NULL,
    [FL_CONTACT1_FIRST]            NVARCHAR (20)   NULL,
    [FL_CONTACT1_LAST]             NVARCHAR (30)   NULL,
    [FL_CONTACT2_FIRST]            NVARCHAR (20)   NULL,
    [FL_CONTACT2_LAST]             NVARCHAR (30)   NULL,
    [TEXT_ID$]                     NVARCHAR (50)   NULL,
    [OBJID]                        NVARCHAR (4000) NULL,
    [OBJVERSION]                   NVARCHAR (2000) NULL,
    [Eff_Date]                     DATE            NOT NULL,
    [End_Date]                     DATE            NULL,
    [ActInd]                       CHAR (1)        NULL,
    [IsDeleted]                    CHAR (1)        NULL,
    [BatchID]                      BIGINT          NULL,
    [ProcessLogID]                 BIGINT          NULL,
    CONSTRAINT [PK_SUPPLIER_INFO] PRIMARY KEY CLUSTERED ([SUPPLIER_ID] ASC, [Eff_Date] ASC) ON [DWH_IFS]
) ON [DWH_IFS];





