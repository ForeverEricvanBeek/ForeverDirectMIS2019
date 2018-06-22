CREATE TABLE [DM].[D_Sensor] (
    [D_Sensor_Skey]  BIGINT          IDENTITY (1, 1) NOT NULL,
    [Sensor_ID]      BIGINT          NOT NULL,
    [Sensor_Name]    NVARCHAR (50)   NULL,
    [Sensor_Date]    DATE            NULL,
    [Sensor_Time]    TIME (7)        NULL,
    [Sensor_Tem]     NUMERIC (18, 2) NULL,
    [Sensor_Hum]     NUMERIC (18, 2) NULL,
    [Sensor_Dew]     NUMERIC (18, 2) NULL,
    [CheckSum]       NVARCHAR (32)   NULL,
    [CheckSumSCD1]   NVARCHAR (32)   NULL,
    [CheckSumSCD2]   NVARCHAR (32)   NULL,
    [IsActual]       INT             NOT NULL,
    [IsInferred]     INT             NULL,
    [IsDeleted]      INT             NULL,
    [EffectiveDate]  DATE            NOT NULL,
    [ExpiryDate]     DATE            NULL,
    [InsertDateTime] DATETIME2 (7)   NULL,
    [UpdateDateTime] DATETIME2 (7)   NULL,
    [BatchID]        BIGINT          NOT NULL,
    [ProcessLogID]   BIGINT          NULL,
    CONSTRAINT [D_Sensor_Skey] PRIMARY KEY CLUSTERED ([D_Sensor_Skey] ASC) WITH (FILLFACTOR = 80)
);

