﻿


CREATE VIEW [FDV].[VW_D_Calendar]
AS

SELECT DateKey
	,FullDate
	,DateName
	,DayOfWeek
	,DayNameOfWeek
	,DayOfMonth
	,DayOfYear
	,WeekdayWeekend
	,WeekOfYear
	,ISOWeekOfYear
	,MonthName
	,MonthOfYear
	,IsLastDayOfMonth
	,Quarter
	,Year
	,YearMonth
	,YearQtr
	,IndWorkday
FROM dbo.Fun_D_Calendar('20000101', '20300101') AS Fun_Calendar
--where DateKey >= 20170101

UNION ALL

SELECT '99991231'
	,'9999-12-31'
	,'31-12-9999'
	,NULL
	,NULL
	,NULL
	,NULL
	,NULL
	,NULL
	,NULL
	,NULL
	,NULL
	,NULL
	,NULL
	,NULL
	,NULL
	,NULL
	,NULL