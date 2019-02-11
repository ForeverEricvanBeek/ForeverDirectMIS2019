CREATE TABLE [MANH_ARC].[DOCK_DOOR] (
    [FACILITY_ID]              INT            NOT NULL,
    [DOCK_ID]                  NVARCHAR (8)   NOT NULL,
    [DOCK_DOOR_ID]             BIGINT         NOT NULL,
    [TC_COMPANY_ID]            INT            NOT NULL,
    [DOCK_DOOR_NAME]           NVARCHAR (32)  NOT NULL,
    [DOCK_DOOR_STATUS]         SMALLINT       NOT NULL,
    [DESCRIPTION]              NVARCHAR (100) NULL,
    [MARK_FOR_DELETION]        SMALLINT       NULL,
    [CREATED_SOURCE_TYPE]      SMALLINT       NOT NULL,
    [CREATED_SOURCE]           NVARCHAR (25)  NULL,
    [CREATED_DTTM]             DATETIME2 (7)  NOT NULL,
    [LAST_UPDATED_SOURCE_TYPE] SMALLINT       NOT NULL,
    [LAST_UPDATED_SOURCE]      NVARCHAR (25)  NULL,
    [LAST_UPDATED_DTTM]        DATETIME2 (7)  NOT NULL,
    [OLD_DOCK_DOOR_STATUS]     SMALLINT       NULL,
    [ACTIVITY_TYPE]            NVARCHAR (1)   NULL,
    [APPOINTMENT_TYPE]         NVARCHAR (3)   NULL,
    [BARCODE]                  NVARCHAR (10)  NULL,
    [TIME_FROM_INDUCTION]      NUMERIC (5, 2) NULL,
    [PALLETIZATION_SPUR]       NVARCHAR (1)   NULL,
    [SORT_ZONE]                NVARCHAR (3)   NULL,
    [ILM_APPOINTMENT_NUMBER]   NVARCHAR (50)  NULL,
    [FLOWTHRU_ALLOC_SORT_PRTY] NVARCHAR (8)   NULL,
    [LOCN_HDR_ID]              INT            NULL,
    [Eff_Date]                 DATE           NOT NULL,
    [End_Date]                 DATE           NULL,
    [ActInd]                   CHAR (1)       NULL,
    [IsDeleted]                CHAR (1)       NULL,
    [BatchID]                  BIGINT         NULL,
    [ProcessLogID]             BIGINT         NULL,
    CONSTRAINT [PK_MANH_DOCK_DOOR] PRIMARY KEY CLUSTERED ([DOCK_DOOR_ID] ASC, [Eff_Date] ASC) WITH (FILLFACTOR = 90) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];





