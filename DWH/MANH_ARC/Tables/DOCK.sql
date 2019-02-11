CREATE TABLE [MANH_ARC].[DOCK] (
    [FACILITY_ID]                 INT            NOT NULL,
    [DOCK_ID]                     NVARCHAR (8)   NOT NULL,
    [DOCK_NAME]                   NVARCHAR (100) NOT NULL,
    [MARK_FOR_DELETION]           SMALLINT       NOT NULL,
    [CREATED_SOURCE_TYPE]         SMALLINT       NOT NULL,
    [CREATED_SOURCE]              NVARCHAR (25)  NOT NULL,
    [CREATED_DTTM]                DATETIME2 (7)  NOT NULL,
    [LAST_UPDATED_SOURCE_TYPE]    SMALLINT       NOT NULL,
    [LAST_UPDATED_SOURCE]         NVARCHAR (25)  NOT NULL,
    [LAST_UPDATED_DTTM]           DATETIME2 (7)  NOT NULL,
    [CLOSED_HRS_HANDLING_ALLOWED] SMALLINT       NOT NULL,
    [LAST_UPDATED_TRANSACTION]    NVARCHAR (100) NULL,
    [LAST_UPDATED_LOCATION]       NVARCHAR (32)  NULL,
    [Eff_Date]                    DATE           NOT NULL,
    [End_Date]                    DATE           NULL,
    [ActInd]                      CHAR (1)       NULL,
    [IsDeleted]                   CHAR (1)       NULL,
    [BatchID]                     BIGINT         NULL,
    [ProcessLogID]                BIGINT         NULL,
    CONSTRAINT [PK_MANH_DOCK] PRIMARY KEY CLUSTERED ([DOCK_ID] ASC, [Eff_Date] ASC, [FACILITY_ID] ASC) ON [DWH_MANH_ARC]
) ON [DWH_MANH_ARC];





