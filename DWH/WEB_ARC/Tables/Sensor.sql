CREATE TABLE [WEB_ARC].[Sensor] (
    [Sensor_ID]       BIGINT          NOT NULL,
    [Sensor_Name]     NVARCHAR (50)   NULL,
    [Sensor_Date]     DATETIME2 (7)   NULL,
    [Sensor_Temp]     NUMERIC (18, 2) NULL,
    [Sensor_Humidity] NUMERIC (18, 2) NULL,
    [Sensor_Dew]      NUMERIC (18, 2) NULL,
    [Sensor_File]     NVARCHAR (255)  NULL,
    [Sensor_XML]      NVARCHAR (4000) NULL,
    [Eff_Date]        DATE            NOT NULL,
    [End_Date]        DATE            NULL,
    [ActInd]          CHAR (1)        NULL,
    [IsDeleted]       CHAR (1)        NULL,
    [BatchID]         BIGINT          NULL,
    [ProcessLogID]    BIGINT          NULL,
    CONSTRAINT [PK_Sensor] PRIMARY KEY CLUSTERED ([Sensor_ID] ASC, [Eff_Date] ASC) ON [DWH_WEB_ARC]
) ON [DWH_WEB_ARC];





