CREATE TABLE [RT].[SENSOR] (
    [Sensor_Name]     NVARCHAR (50)   NULL,
    [Sensor_Date]     DATETIME2 (7)   NULL,
    [Sensor_Temp]     NUMERIC (18, 2) NULL,
    [Sensor_Humidity] NUMERIC (18, 2) NULL,
    [Sensor_Dew]      NUMERIC (18, 2) NULL,
    [BatchID]         BIGINT          NULL,
    [ProcessLogID]    BIGINT          NULL
);

