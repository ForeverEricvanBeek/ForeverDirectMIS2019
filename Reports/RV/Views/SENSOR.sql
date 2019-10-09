







CREATE VIEW [RV].[SENSOR]
AS
SELECT
  SR.Sensor_Name
  , SR.Sensor_Date
  , SR.Sensor_Temp
  , SR.Sensor_Humidity
  , SR.Sensor_Dew
  , SR.ActInd
  , CONVERT(NVARCHAR(8),SR.Sensor_Date,112) AS OtherDate
FROM	[$(DWH)].WEB.Sensor SR
--WHERE	SR.ActInd = 'Y'
--AND		SR.Sensor_Date >= DATEADD(MONTH,-1,GETDATE())