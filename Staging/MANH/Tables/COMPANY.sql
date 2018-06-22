﻿CREATE TABLE [MANH].[COMPANY] (
    [COMPANY_ID]                   INT            NOT NULL,
    [COMPANY_NAME]                 NVARCHAR (100) NOT NULL,
    [COMPANY_TYPE_ID]              SMALLINT       NOT NULL,
    [IS_ACTIVE]                    SMALLINT       NOT NULL,
    [IS_MULTIPLE_LOGON_RESTRICTED] SMALLINT       NOT NULL,
    [CREATED_SOURCE_TYPE_ID]       SMALLINT       NOT NULL,
    [CREATED_SOURCE]               NVARCHAR (50)  NOT NULL,
    [CREATED_DTTM]                 DATETIME2 (7)  NOT NULL,
    [LAST_UPDATED_SOURCE_TYPE_ID]  SMALLINT       NOT NULL,
    [LAST_UPDATED_SOURCE]          NVARCHAR (50)  NOT NULL,
    [LAST_UPDATED_DTTM]            DATETIME2 (7)  NOT NULL,
    [COMPANY_DESCRIPTION]          NVARCHAR (75)  NULL,
    [COMPANY_URL]                  NVARCHAR (75)  NULL,
    [TELEPHONE_NUMBER]             NVARCHAR (32)  NULL,
    [FAX_NUMBER]                   NVARCHAR (32)  NULL,
    [ADDRESS_1]                    NVARCHAR (75)  NULL,
    [ADDRESS_2]                    NVARCHAR (75)  NULL,
    [CITY]                         NVARCHAR (50)  NULL,
    [STATE_PROV]                   NVARCHAR (3)   NULL,
    [POSTAL_CODE]                  NVARCHAR (10)  NULL,
    [COUNTRY_CODE]                 NVARCHAR (4)   NULL,
    [BILLING_ADDRESS_1]            NVARCHAR (75)  NULL,
    [BILLING_ADDRESS_2]            NVARCHAR (75)  NULL,
    [BILLING_CITY]                 NVARCHAR (50)  NULL,
    [BILLING_STATE_PROV]           NVARCHAR (3)   NULL,
    [BILLING_POSTAL_CODE]          NVARCHAR (10)  NULL,
    [BILLING_COUNTRY_CODE]         NVARCHAR (4)   NULL,
    [CONTACT_TITLE]                NVARCHAR (50)  NULL,
    [CONTACT_NAME]                 NVARCHAR (75)  NULL,
    [CONTACT_TELEPHONE_NUMBER]     NVARCHAR (32)  NULL,
    [CONTACT_FAX_NUMBER]           NVARCHAR (32)  NULL,
    [CONTACT_EMAIL]                NVARCHAR (75)  NULL,
    [HIBERNATE_VERSION]            BIGINT         NULL,
    [HAS_LOGO]                     SMALLINT       NOT NULL,
    [BUSINESS_NUMBER]              NVARCHAR (35)  NULL,
    [DUNS_NUMBER]                  NVARCHAR (13)  NULL,
    [COMPANY_CODE]                 NVARCHAR (10)  NULL,
    [INVOICE_COMPARE_METHOD]       NVARCHAR (4)   NULL,
    [ADDRESS_3]                    NVARCHAR (75)  NULL,
    [AUTO_CREATE_BATCH_FLAG]       NVARCHAR (1)   NULL,
    [BATCH_CTRL_FLAG]              NVARCHAR (1)   NULL,
    [BATCH_ROLE_ID]                NVARCHAR (15)  NULL,
    [BILLING_ADDRESS_3]            NVARCHAR (75)  NULL,
    [CASE_LOCK_CODE_EXP_REC]       NVARCHAR (2)   NULL,
    [CASE_LOCK_CODE_HELD]          NVARCHAR (2)   NULL,
    [COLOR_MASK]                   NVARCHAR (4)   NULL,
    [COLOR_OFFSET]                 BIGINT         NULL,
    [COLOR_SEPTR]                  NVARCHAR (1)   NULL,
    [COLOR_SFX_MASK]               NVARCHAR (2)   NULL,
    [COLOR_SFX_OFFSET]             BIGINT         NULL,
    [COLOR_SFX_SEPTR]              NVARCHAR (1)   NULL,
    [DFLT_BATCH_STAT_CODE]         BIGINT         NULL,
    [DSP_ITEM_DESC_FLAG]           NVARCHAR (4)   NULL,
    [LOCK_CODE_INVALID]            NVARCHAR (2)   NULL,
    [PICK_LOCK_CODE_EXP_REC]       NVARCHAR (2)   NULL,
    [PICK_LOCK_CODE_HELD]          NVARCHAR (2)   NULL,
    [PROC_WHSE_XFER]               NVARCHAR (1)   NULL,
    [QUAL_MASK]                    NVARCHAR (1)   NULL,
    [QUAL_OFFSET]                  BIGINT         NULL,
    [QUAL_SEPTR]                   NVARCHAR (1)   NULL,
    [RECV_BATCH]                   NVARCHAR (1)   NULL,
    [SEASON_MASK]                  NVARCHAR (2)   NULL,
    [SEASON_OFFSET]                BIGINT         NULL,
    [SEASON_SEPTR]                 NVARCHAR (1)   NULL,
    [SEASON_YR_MASK]               NVARCHAR (2)   NULL,
    [SEASON_YR_OFFSET]             BIGINT         NULL,
    [SEASON_YR_SEPTR]              NVARCHAR (1)   NULL,
    [SEC_DIM_MASK]                 NVARCHAR (3)   NULL,
    [SEC_DIM_OFFSET]               BIGINT         NULL,
    [SEC_DIM_SEPTR]                NVARCHAR (1)   NULL,
    [SIZE_DESC_MASK]               NVARCHAR (15)  NULL,
    [SIZE_DESC_OFFSET]             BIGINT         NULL,
    [SIZE_DESC_SEPTR]              NVARCHAR (1)   NULL,
    [SKU_MASK]                     NVARCHAR (30)  NULL,
    [SKU_OFFSET_MASK]              NVARCHAR (25)  NULL,
    [STYLE_MASK]                   NVARCHAR (8)   NULL,
    [STYLE_OFFSET]                 BIGINT         NULL,
    [STYLE_SEPTR]                  NVARCHAR (1)   NULL,
    [STYLE_SFX_MASK]               NVARCHAR (8)   NULL,
    [STYLE_SFX_OFFSET]             BIGINT         NULL,
    [STYLE_SFX_SEPTR]              NVARCHAR (1)   NULL,
    [UCC_EAN_CO_PFX]               NVARCHAR (40)  NULL,
    [PARENT_COMPANY_ID]            INT            NULL,
    [IS_INITIALIZED]               SMALLINT       NULL,
    [BatchID]                      BIGINT         NULL,
    [ProcessLogID]                 BIGINT         NULL,
    CONSTRAINT [PK_MANH_COMPANY] PRIMARY KEY CLUSTERED ([COMPANY_ID] ASC)
);

