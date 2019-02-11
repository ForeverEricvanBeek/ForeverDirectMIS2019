CREATE TABLE [FORECAST_ARC].[Office_Facility] (
    [ID]              INT           NOT NULL,
    [OFFICE_CODE]     NVARCHAR (50) NULL,
    [FACILITY_ID_IFS] NVARCHAR (50) NULL,
    [FACILITY_ID_WMS] NVARCHAR (50) NULL,
    [Eff_Date]        DATE          NOT NULL,
    [End_Date]        DATE          NULL,
    [ActInd]          CHAR (1)      NULL,
    [IsDeleted]       CHAR (1)      NULL,
    [BatchID]         BIGINT        NULL,
    [ProcessLogID]    BIGINT        NULL,
    CONSTRAINT [PK_Office_Facility] PRIMARY KEY CLUSTERED ([ID] ASC, [Eff_Date] ASC) WITH (FILLFACTOR = 90) ON [DWH_FORECAST_ARC]
) ON [DWH_FORECAST_ARC];







