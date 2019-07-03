CREATE TABLE [MANH_ARC].[SIZE_UOM] (
    [TC_COMPANY_ID]                  SMALLINT        NOT NULL,
    [SIZE_UOM]                       NVARCHAR (8)    NOT NULL,
    [DESCRIPTION]                    NVARCHAR (50)   NOT NULL,
    [CONSOLIDATION_CODE]             NVARCHAR (1)    NULL,
    [DO_NOT_INHERIT_TO_ORDER]        SMALLINT        NOT NULL,
    [SIZE_MAPPING]                   NVARCHAR (40)   NULL,
    [STANDARD_UOM]                   SMALLINT        NULL,
    [STANDARD_UNITS]                 DECIMAL (16, 8) NULL,
    [SPLITTER_CONS_CODE]             NVARCHAR (1)    NULL,
    [APPLY_TO_VENDOR]                INT             NULL,
    [SIZE_UOM_ID]                    INT             NOT NULL,
    [MARK_FOR_DELETION]              INT             NOT NULL,
    [DISCRETE]                       INT             NOT NULL,
    [ADJUSTMENT]                     DECIMAL (8, 4)  NULL,
    [ADJUSTMENT_SIZE_UOM_ID]         INT             NULL,
    [HIBERNATE_VERSION]              INT             NULL,
    [AUDIT_CREATED_SOURCE]           NVARCHAR (100)  NULL,
    [AUDIT_CREATED_SOURCE_TYPE]      SMALLINT        NOT NULL,
    [AUDIT_CREATED_DTTM]             DATETIME2 (7)   NOT NULL,
    [AUDIT_LAST_UPDATED_SOURCE]      NVARCHAR (100)  NULL,
    [AUDIT_LAST_UPDATED_SOURCE_TYPE] SMALLINT        NULL,
    [AUDIT_LAST_UPDATED_DTTM]        DATETIME2 (7)   NULL,
    [Eff_Date]                       DATE            NOT NULL,
    [End_Date]                       DATE            NULL,
    [ActInd]                         CHAR (1)        NULL,
    [IsDeleted]                      CHAR (1)        NULL,
    [BatchID]                        BIGINT          NULL,
    [ProcessLogID]                   BIGINT          NULL,
    [CREATED_DTTM]                   DATETIME2 (7)   NULL,
    [LAST_UPDATED_DTTM]              DATETIME2 (7)   NULL,
    CONSTRAINT [PK_MANH_SIZE_UOM] PRIMARY KEY CLUSTERED ([Eff_Date] ASC, [SIZE_UOM_ID] ASC) WITH (FILLFACTOR = 90) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];







