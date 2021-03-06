﻿

CREATE VIEW [FDV].[VW_F_OF_Activity]
AS

SELECT
  CONVERT(CHAR,REP.DATUMIN,112)							AS DateKey
  , REP.PICKERID										AS Pickers_ID
  , REP.LANE											AS Lane_ID
  , SUM(DATEDIFF(MINUTE,REP.LOGGEDIN,REP.LOGGEDOUT))	AS Logged_In_Minutes
FROM (
SELECT
  CAST(CAST(SUBSTRING(US.LoggedIn,1,4) AS NVARCHAR(4))+N'-'+CAST(SUBSTRING(US.LoggedIn,5,2) AS NVARCHAR(2))+N'-'+CAST(SUBSTRING(US.LoggedIn,7,2) AS NVARCHAR(2)) AS DATE)					AS DATUMIN
  , CAST(CAST(SUBSTRING(US.LoggedOut,1,4) AS NVARCHAR(4))+N'-'+CAST(SUBSTRING(US.LoggedOut,5,2) AS NVARCHAR(2))+N'-'+CAST(SUBSTRING(US.LoggedOut,7,2) AS NVARCHAR(2)) AS DATE)				AS DATUMOUT
  , CAST(CAST(SUBSTRING(US.LoggedIn,1,4) AS NVARCHAR(4))+N'-'+CAST(SUBSTRING(US.LoggedIn,5,2) AS NVARCHAR(2))+N'-'+CAST(SUBSTRING(US.LoggedIn,7,2) AS NVARCHAR(2)) + N' ' + CAST(SUBSTRING(US.LoggedIn,9,2) AS NVARCHAR(2))+N':'+CAST(SUBSTRING(US.LoggedIn,11,2) AS NVARCHAR(2))+N':'+CAST(SUBSTRING(US.LoggedIn,13,2) AS NVARCHAR(2)) AS DATETIME2)			AS LOGGEDIN
  , CAST(CAST(SUBSTRING(US.LoggedOut,1,4) AS NVARCHAR(4))+N'-'+CAST(SUBSTRING(US.LoggedOut,5,2) AS NVARCHAR(2))+N'-'+CAST(SUBSTRING(US.LoggedOut,7,2) AS NVARCHAR(2)) + N' ' + CAST(SUBSTRING(US.LoggedOut,9,2) AS NVARCHAR(2))+N':'+CAST(SUBSTRING(US.LoggedOut,11,2) AS NVARCHAR(2))+N':'+CAST(SUBSTRING(US.LoggedOut,13,2) AS NVARCHAR(2)) AS DATETIME2)			AS LOGGEDOUT
  , PI.Picker_ID						AS PICKERID
  , CAST(US.Lane AS NVARCHAR(50)) + '-' + CASE 
	WHEN US.Type = 1 THEN 'Packing'
	WHEN US.Type = 2 THEN 'QC'
	ELSE 'Unknown'
  END									AS LANE
FROM		SCHAEFER.UserStatistic US
INNER JOIN	WEB.Picker PI
ON			PI.Picker_ID = SUBSTRING(US.PickerID,2,5)
AND			PI.ActInd = 'Y'
WHERE		US.ActInd = 'Y'
) REP
GROUP BY
  REP.DATUMIN
  , REP.PICKERID
  , REP.LANE