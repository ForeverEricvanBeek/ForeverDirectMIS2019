CREATE TABLE [FORECAST].[Office_Facility] (
    [ID]              INT           NOT NULL,
    [OFFICE_CODE]     NVARCHAR (50) NULL,
    [FACILITY_ID_IFS] NVARCHAR (50) NULL,
    [FACILITY_ID_WMS] NVARCHAR (50) NULL,
    [BatchID]         BIGINT        NULL,
    [ProcessLogID]    BIGINT        NULL
);

