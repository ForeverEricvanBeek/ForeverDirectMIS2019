CREATE TABLE [MANH_ARC].[ITEM_PACKAGE_CBO] (
    [ITEM_PACKAGE_ID]                INT             NOT NULL,
    [ITEM_ID]                        INT             NOT NULL,
    [PACKAGE_UOM_ID]                 INT             NOT NULL,
    [QUANTITY]                       NUMERIC (16, 4) NULL,
    [WEIGHT]                         NUMERIC (16, 4) NULL,
    [WEIGHT_UOM_ID]                  INT             NULL,
    [GTIN]                           NVARCHAR (25)   NULL,
    [AUDIT_CREATED_SOURCE]           NVARCHAR (100)  NULL,
    [AUDIT_CREATED_SOURCE_TYPE]      SMALLINT        NOT NULL,
    [AUDIT_CREATED_DTTM]             DATETIME2 (7)   NOT NULL,
    [AUDIT_LAST_UPDATED_SOURCE]      NVARCHAR (100)  NULL,
    [AUDIT_LAST_UPDATED_SOURCE_TYPE] SMALLINT        NULL,
    [AUDIT_LAST_UPDATED_DTTM]        DATETIME2 (7)   NULL,
    [MARK_FOR_DELETION]              SMALLINT        NOT NULL,
    [DIMENSION_UOM_ID]               INT             NULL,
    [VOLUME]                         NUMERIC (16, 4) NULL,
    [VOLUME_UOM_ID]                  NUMERIC (16, 4) NULL,
    [LENGTH]                         NUMERIC (16, 4) NULL,
    [HEIGHT]                         NUMERIC (16, 4) NULL,
    [WIDTH]                          NUMERIC (16, 4) NULL,
    [HIBERNATE_VERSION]              BIGINT          NULL,
    [IS_STD]                         NVARCHAR (1)    NULL,
    [BUSINESS_PARTNER_ID]            NVARCHAR (10)   NULL,
    [Eff_Date]                       DATE            NOT NULL,
    [End_Date]                       DATE            NULL,
    [ActInd]                         CHAR (1)        NULL,
    [IsDeleted]                      CHAR (1)        NULL,
    [BatchID]                        BIGINT          NULL,
    [ProcessLogID]                   BIGINT          NULL,
    CONSTRAINT [PK_MANH_ITEM_PACKAGE_CBO] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [ITEM_PACKAGE_ID] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];





