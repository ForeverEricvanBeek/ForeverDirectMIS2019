﻿CREATE TABLE [MANH_ARC].[EQUIPMENT] (
    [TC_COMPANY_ID]                INT             NOT NULL,
    [EQUIPMENT_CODE]               NVARCHAR (20)   NOT NULL,
    [DESCRIPTION]                  NVARCHAR (50)   NOT NULL,
    [MARK_FOR_DELETION]            SMALLINT        NOT NULL,
    [CREATED_SOURCE_TYPE]          SMALLINT        NOT NULL,
    [CREATED_SOURCE]               NVARCHAR (50)   NOT NULL,
    [CREATED_DTTM]                 DATETIME2 (7)   NOT NULL,
    [LAST_UPDATED_SOURCE_TYPE]     SMALLINT        NOT NULL,
    [LAST_UPDATED_SOURCE]          NVARCHAR (50)   NOT NULL,
    [LAST_UPDATED_DTTM]            DATETIME2 (7)   NOT NULL,
    [SHAPE_TYPE]                   SMALLINT        NULL,
    [DIM01_VALUE]                  NUMERIC (16, 4) NULL,
    [DIM01_STANDARD_UOM]           SMALLINT        NULL,
    [DIM02_VALUE]                  NUMERIC (16, 4) NULL,
    [DIM02_STANDARD_UOM]           SMALLINT        NULL,
    [DIM03_VALUE]                  NUMERIC (16, 4) NULL,
    [DIM03_STANDARD_UOM]           SMALLINT        NULL,
    [VOLUME_CALC_VALUE]            NUMERIC (16, 4) NULL,
    [VOLUME_CALC_STANDARD_UOM]     SMALLINT        NULL,
    [WEIGHT_EMPTY_VALUE]           NUMERIC (16, 4) NULL,
    [WEIGHT_EMPTY_STANDARD_UOM]    SMALLINT        NULL,
    [EQUIPMENT_TYPE]               SMALLINT        NULL,
    [EQUIP_DW_HEIGHT_VALUE]        NUMERIC (16, 4) NULL,
    [EQUIP_DW_HEIGHT_STANDARD_UOM] SMALLINT        NULL,
    [TRAILER_TYPE]                 SMALLINT        NULL,
    [OWNERSHIP_TYPE]               SMALLINT        NULL,
    [NUMBER_OF_AXLES]              SMALLINT        NULL,
    [PER_USAGE_COST]               NUMERIC (13, 2) NULL,
    [PER_USAGE_COST_CURRENCY_CODE] NVARCHAR (3)    NULL,
    [PLATED_WEIGHT]                NUMERIC (13, 2) NULL,
    [TAX_BAND_NAME]                NVARCHAR (24)   NULL,
    [WEIGHT_VALUE]                 INT             NULL,
    [WEIGHT_STANDARD_UOM]          INT             NULL,
    [EQUIP_HEIGHT_VALUE]           INT             NULL,
    [EQUIP_HEIGHT_STANDARD_UOM]    INT             NULL,
    [IS_ALLOW_TRAILER_SWAPPING]    SMALLINT        NOT NULL,
    [IS_TANDEM_CAPABLE]            SMALLINT        NOT NULL,
    [EQUIPMENT_ID]                 BIGINT          NOT NULL,
    [MASTER_EQUIPMENT_ID]          BIGINT          NULL,
    [WEIGHT_EMPTY_SIZE_UOM_ID]     INT             NULL,
    [PLATED_WEIGHT_SIZE_UOM_ID]    INT             NULL,
    [BACKIN_TIME]                  SMALLINT        NULL,
    [BACKOUT_TIME]                 SMALLINT        NULL,
    [Eff_Date]                     DATE            NOT NULL,
    [End_Date]                     DATE            NULL,
    [ActInd]                       CHAR (1)        NULL,
    [IsDeleted]                    CHAR (1)        NULL,
    [BatchID]                      BIGINT          NULL,
    [ProcessLogID]                 BIGINT          NULL,
    CONSTRAINT [PK_MANH_EQUIPMENT] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [EQUIPMENT_ID] ASC) WITH (DATA_COMPRESSION = PAGE) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];



