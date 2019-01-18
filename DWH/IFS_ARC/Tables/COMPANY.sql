﻿CREATE TABLE [IFS_ARC].[COMPANY] (
    [COMPANY]                      NVARCHAR (20)   NOT NULL,
    [NAME]                         NVARCHAR (100)  NULL,
    [CREATION_DATE]                DATETIME2 (7)   NULL,
    [ASSOCIATION_NO]               NVARCHAR (50)   NULL,
    [PARTY]                        NVARCHAR (20)   NULL,
    [DEFAULT_DOMAIN]               NVARCHAR (5)    NULL,
    [DEFAULT_LANGUAGE]             NVARCHAR (4000) NULL,
    [DEFAULT_LANGUAGE_DB]          NVARCHAR (2)    NULL,
    [PARTY_TYPE]                   NVARCHAR (4000) NULL,
    [PARTY_TYPE_DB]                NVARCHAR (20)   NULL,
    [DOMAIN_ID]                    NVARCHAR (20)   NULL,
    [LOGOTYPE]                     NVARCHAR (100)  NULL,
    [TEMPLATE_COMPANY]             NVARCHAR (5)    NULL,
    [FROM_COMPANY]                 NVARCHAR (20)   NULL,
    [FROM_TEMPLATE_ID]             NVARCHAR (30)   NULL,
    [CORPORATE_FORM]               NVARCHAR (8)    NULL,
    [AUTHORIZATION_ID]             NVARCHAR (30)   NULL,
    [AUTH_ID_EXPIRE_DATE]          DATETIME2 (7)   NULL,
    [ACTIVITY_START_DATE]          DATETIME2 (7)   NULL,
    [COUNTRY]                      NVARCHAR (4000) NULL,
    [COUNTRY_DB]                   NVARCHAR (2)    NULL,
    [IDENTIFIER_REFERENCE]         NVARCHAR (100)  NULL,
    [IDENTIFIER_REF_VALIDATION]    NVARCHAR (4000) NULL,
    [IDENTIFIER_REF_VALIDATION_DB] NVARCHAR (20)   NULL,
    [DOC_RECIP_ADDRESS_POS]        NVARCHAR (4000) NULL,
    [DOC_RECIP_ADDRESS_POS_DB]     NVARCHAR (10)   NULL,
    [CREATED_BY]                   NVARCHAR (30)   NULL,
    [FLPI_HOME_COMPANY_ID]         NVARCHAR (3)    NULL,
    [FLPI_OPER_COMPANY_ID]         NVARCHAR (3)    NULL,
    [OBJID]                        NVARCHAR (4000) NULL,
    [OBJVERSION]                   NVARCHAR (2000) NULL,
    [Eff_Date]                     DATE            NOT NULL,
    [End_Date]                     DATE            NULL,
    [ActInd]                       CHAR (1)        NULL,
    [IsDeleted]                    CHAR (1)        NULL,
    [BatchID]                      BIGINT          NULL,
    [ProcessLogID]                 BIGINT          NULL,
    CONSTRAINT [PK_COMPANY] PRIMARY KEY CLUSTERED ([COMPANY] ASC, [Eff_Date] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_IFS_ARC]
) ON [DWH_IFS_ARC];



