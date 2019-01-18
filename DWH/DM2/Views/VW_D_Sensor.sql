

CREATE VIEW [DM2].[VW_D_Sensor]
AS

SELECT [Sensor_ID]					AS Sensor_ID
      ,[Sensor_Name]				AS Sensor_Name
      ,CAST([Sensor_Date] AS DATE)	AS Sensor_Date
	  ,CAST([Sensor_Date] AS TIME)	AS Sensor_Time
      ,[Sensor_Temp]				AS Sensor_Tem
      ,[Sensor_Humidity]			AS Sensor_Hum
      ,[Sensor_Dew]					AS Sensor_Dew
  FROM [WEB].[Sensor]
  WHERE			Eff_Date >= GETDATE() -2
AND			End_Date >= GETDATE() -2