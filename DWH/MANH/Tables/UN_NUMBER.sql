﻿CREATE TABLE [MANH].[UN_NUMBER] (
    [UN_NUMBER_ID]                  BIGINT          NOT NULL,
    [TC_COMPANY_ID]                 INT             NOT NULL,
    [UN_NUMBER_VALUE]               NVARCHAR (16)   NOT NULL,
    [UN_NUMBER_DESCRIPTION]         NVARCHAR (255)  NOT NULL,
    [UNN_CLASS_DIV]                 NVARCHAR (255)  NULL,
    [UNN_SUB_RISK]                  NVARCHAR (255)  NULL,
    [UNN_HAZARD_LABEL]              NVARCHAR (255)  NULL,
    [UNN_PG]                        NVARCHAR (255)  NULL,
    [UNN_SP]                        NVARCHAR (255)  NULL,
    [UNN_AIR_BOTH_INST_LTD]         NVARCHAR (255)  NULL,
    [UNN_AIR_BOTH_QTY_LTD]          NVARCHAR (255)  NULL,
    [UNN_AIR_BOTH_INST]             NVARCHAR (255)  NULL,
    [UNN_AIR_BOTH_QTY]              NVARCHAR (255)  NULL,
    [UNN_AIR_CARGO_INST]            NVARCHAR (255)  NULL,
    [UNN_AIR_CARGO_QTY]             NVARCHAR (255)  NULL,
    [UN_NUMBER]                     BIGINT          NULL,
    [RQ_FIELD_1]                    NVARCHAR (40)   NULL,
    [RQ_FIELD_2]                    NVARCHAR (40)   NULL,
    [RQ_FIELD_3]                    NVARCHAR (40)   NULL,
    [RQ_FIELD_4]                    NVARCHAR (40)   NULL,
    [RQ_FIELD_5]                    NVARCHAR (40)   NULL,
    [HZC_FIELD_1]                   NVARCHAR (40)   NULL,
    [HZC_FIELD_2]                   NVARCHAR (40)   NULL,
    [HZC_FIELD_3]                   NVARCHAR (40)   NULL,
    [HZC_FIELD_4]                   NVARCHAR (40)   NULL,
    [HZC_FIELD_5]                   NVARCHAR (40)   NULL,
    [MARK_FOR_DELETION]             SMALLINT        NOT NULL,
    [CREATED_SOURCE_TYPE]           SMALLINT        NULL,
    [CREATED_SOURCE]                NVARCHAR (50)   NULL,
    [CREATED_DTTM]                  DATETIME2 (7)   NOT NULL,
    [LAST_UPDATED_SOURCE_TYPE]      SMALLINT        NULL,
    [LAST_UPDATED_SOURCE]           NVARCHAR (50)   NULL,
    [LAST_UPDATED_DTTM]             DATETIME2 (7)   NOT NULL,
    [Eff_Date]                      DATE            NOT NULL,
    [End_Date]                      DATE            NULL,
    [ActInd]                        CHAR (1)        NULL,
    [IsDeleted]                     CHAR (1)        NULL,
    [BatchID]                       BIGINT          NULL,
    [ProcessLogID]                  BIGINT          NULL,
    [ADDL_DESC]                     NVARCHAR (255)  NULL,
    [CONTACT_NAME]                  NVARCHAR (150)  NULL,
    [EPAWASTESTREAM_NUMBER]         NVARCHAR (40)   NULL,
    [FLASH_POINT_TEMPERATURE]       NUMERIC (13, 4) NULL,
    [FLASH_POINT_TEMPERATURE_UOM]   NVARCHAR (15)   NULL,
    [HAZARD_ZONE_CODE]              NVARCHAR (40)   NULL,
    [HAZMAT_CLASS_QUAL]             NVARCHAR (15)   NULL,
    [HAZMAT_EXEMPTION_REF_NUMBR]    NVARCHAR (30)   NULL,
    [HAZMAT_MATERIAL_QUAL]          NVARCHAR (15)   NULL,
    [HAZMAT_UOM]                    INT             NULL,
    [IS_ACCESSIBLE]                 INT             NULL,
    [MAX_HAZMAT_QTY]                NUMERIC (13, 4) NULL,
    [NET_EXPLOSIVE_QUANTITY_FACTOR] NUMERIC (13, 4) NULL,
    [NOS_INDICATOR_CODE]            INT             NULL,
    [PHONE_NUMBER]                  NVARCHAR (32)   NULL,
    [RADIOACTIVE_QTY_CALC_FACTOR]   NUMERIC (13, 4) NULL,
    [RADIOACTIVE_QUANTITY_UOM]      NVARCHAR (8)    NULL,
    [REGULATION_SET]                NVARCHAR (10)   NULL,
    [REPORTABLE_QTY]                INT             NULL,
    [RESIDUE_INDICATOR_CODE]        NVARCHAR (15)   NULL,
    [RQ_FIELD_10]                   NVARCHAR (150)  NULL,
    [RQ_FIELD_11]                   NVARCHAR (150)  NULL,
    [RQ_FIELD_12]                   NVARCHAR (150)  NULL,
    [RQ_FIELD_13]                   NVARCHAR (150)  NULL,
    [RQ_FIELD_14]                   NVARCHAR (150)  NULL,
    [RQ_FIELD_15]                   NVARCHAR (150)  NULL,
    [RQ_FIELD_16]                   NVARCHAR (150)  NULL,
    [RQ_FIELD_17]                   NVARCHAR (150)  NULL,
    [RQ_FIELD_18]                   NVARCHAR (150)  NULL,
    [RQ_FIELD_19]                   NVARCHAR (150)  NULL,
    [RQ_FIELD_20]                   NVARCHAR (150)  NULL,
    [RQ_FIELD_6]                    NVARCHAR (150)  NULL,
    [RQ_FIELD_7]                    NVARCHAR (150)  NULL,
    [RQ_FIELD_8]                    NVARCHAR (150)  NULL,
    [RQ_FIELD_9]                    NVARCHAR (150)  NULL,
    [TECHNICAL_NAME]                NVARCHAR (200)  NULL,
    [TRANS_MODE]                    NVARCHAR (10)   NULL,
    [UN_NUMBER_VERSION]             NVARCHAR (10)   NULL,
    [WASTE_CHARACTERISTIC_CODE]     NVARCHAR (40)   NULL,
    CONSTRAINT [PK_MANH_UN_NUMBER] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [UN_NUMBER_ID] ASC) ON [DWH_MANH]
) ON [DWH_MANH];



