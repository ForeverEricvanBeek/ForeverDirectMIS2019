﻿CREATE TABLE [MANH_ARC].[COUNTRY] (
    [COUNTRY_CODE]                   NVARCHAR (2)  NOT NULL,
    [COUNTRY_NAME]                   NVARCHAR (40) NULL,
    [GEO_REGION_ID]                  NVARCHAR (3)  NOT NULL,
    [HAS_STATE_PROV]                 INT           NOT NULL,
    [HAS_COUNTY]                     INT           NOT NULL,
    [DFLT_CURRENCY_CODE]             NVARCHAR (3)  NULL,
    [DISPLAY_ORDER]                  INT           NULL,
    [ISO_CNTRY_CODE]                 NVARCHAR (3)  NULL,
    [CNTRY_A3_CODE]                  NVARCHAR (3)  NULL,
    [LANG_ID]                        NVARCHAR (3)  NULL,
    [DEST_AIRPORT]                   NVARCHAR (20) NULL,
    [DEPART_AIRPORT]                 NVARCHAR (20) NULL,
    [CNTRY_A2_CODE]                  NVARCHAR (2)  NULL,
    [USER_ID]                        NVARCHAR (15) NULL,
    [INTL_FLAG]                      NVARCHAR (1)  NULL,
    [WT_UOM]                         INT           NULL,
    [DIM_UOM]                        INT           NULL,
    [VOL_UOM]                        INT           NULL,
    [PRINT_SED]                      NVARCHAR (1)  NULL,
    [PRINT_COO]                      NVARCHAR (1)  NULL,
    [PRINT_INV]                      NVARCHAR (1)  NULL,
    [ZIP_REQD_FLAG]                  NVARCHAR (1)  NULL,
    [ADDR_FORMAT]                    NVARCHAR (1)  NULL,
    [CNTRY_ID]                       INT           NULL,
    [CREATE_DATE_TIME]               DATETIME2 (7) NULL,
    [MOD_DATE_TIME]                  DATETIME2 (7) NULL,
    [PRINT_CANADIAN_CUST_INVC_FLAG]  NVARCHAR (1)  NULL,
    [PRINT_DOCK_RCPT_FLAG]           NVARCHAR (1)  NULL,
    [PRINT_NAFTA_COO_FLAG]           NVARCHAR (1)  NULL,
    [PRINT_OCEAN_BOL_FLAG]           NVARCHAR (1)  NULL,
    [PRINT_PKG_LIST_FLAG]            NVARCHAR (1)  NULL,
    [PRINT_SHPR_LTR_OF_INSTR_FLAG]   NVARCHAR (1)  NULL,
    [Eff_Date]                       DATE          NOT NULL,
    [End_Date]                       DATE          NULL,
    [ActInd]                         CHAR (1)      NULL,
    [IsDeleted]                      CHAR (1)      NULL,
    [BatchID]                        BIGINT        NULL,
    [ProcessLogID]                   BIGINT        NULL,
    [ACCEPTS_CON_COM_ORMD_US_ORIGIN] INT           NULL,
    [ACCEPTS_HAZMAT_FROM_US_ORIGIN]  INT           NULL,
    [ACCEPTS_ORMD_US_ORIGIN]         INT           NULL,
    [CREATED_DTTM]                   DATETIME2 (7) NULL,
    [LAST_UPDATED_DTTM]              DATETIME2 (7) NULL,
    CONSTRAINT [PK_MANH_COUNTRY] PRIMARY KEY CLUSTERED ([COUNTRY_CODE] ASC, [Eff_Date] ASC) WITH (FILLFACTOR = 90) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];







