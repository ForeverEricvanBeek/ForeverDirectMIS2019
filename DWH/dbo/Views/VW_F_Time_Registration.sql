CREATE VIEW dbo.VW_F_Time_Registration
AS
SELECT			DateKey						AS DateKey
				, Employee_Key				AS Employee_Key
				, Department_ID				AS Department_ID
				, HourType_ID				AS HourType_ID
				, SUM(Minutes)				AS Number_of_Minutes
				, SUM(DagNorm)				AS Number_of_Minutes_DagNorm
				, SUM(Gewerkt)				AS Number_of_Minutes_Gewerkt
				, SUM(Aanwezig)				AS Number_of_Minutes_Aanwezig
				, SUM(Overwerk110)			AS Number_of_Minutes_Overwerk110
				, SUM(Overwerk130)			AS Number_of_Minutes_Overwerk130
				, SUM(Overwerk145)			AS Number_of_Minutes_Overwerk145
				, SUM(Overwerk150)			AS Number_of_Minutes_Overwerk150
				, SUM(Overwerk200)			AS Number_of_Minutes_Overwerk200
				, SUM(Cursus)				AS Number_of_Minutes_Cursus
				, SUM(TijdvoorTijd)			AS Number_of_Minutes_TijdvoorTijd
				, SUM(Feestdag)				AS Number_of_Minutes_Feestdag
				, SUM(Vakantie)				AS Number_of_Minutes_Vakantie

FROM(

-- Vulling for measure 'Minutes'
SELECT			CONVERT(CHAR, tw.bkdate, 112)	AS DateKey
				, tw.pers_key					AS Employee_Key
				, tw.department_id				AS Department_ID
				, tw.bktype_id					AS HourType_ID
				, tw.bkminutes					AS Minutes
				, NULL							AS DagNorm
				, NULL							AS Gewerkt
				, NULL							AS Aanwezig
				, NULL							AS Overwerk110
				, NULL							AS Overwerk130
				, NULL							AS Overwerk145
				, NULL							AS Overwerk150
				, NULL							AS Overwerk200
				, NULL							AS Cursus
				, NULL							AS TijdvoorTijd
				, NULL							AS Feestdag
				, NULL							AS Vakantie
FROM            ATIMO.timewize AS tw
INNER JOIN (
	SELECT
		MAX(tw.track_id) AS track_id
		, tw.pers_key
		, tw.bkdate
	FROM ATIMO.timewize AS tw
	WHERE			tw.ActInd = 'Y'
	GROUP BY
		tw.pers_key
		, tw.bkdate
) AS T1 ON T1.track_id = tw.track_id AND T1.pers_key = tw.pers_key and T1.bkdate = tw.bkdate
WHERE			(tw.ActInd = 'Y')

UNION ALL

-- Vulling for overige measures
SELECT			CONVERT(CHAR, bkdate, 112)	AS DateKey
				, pers_key					AS Employee_Key
				, department_id				AS Department_ID
				, bktype_id					AS HourType_ID
				, NULL						AS Minutes
				, [99]						AS DagNorm
				, [100]						AS Gewerkt
				, [112]						AS Aanwezig
				, [71]						AS Overwerk110
				, [72]						AS Overwerk130
				, [73]						AS Overwerk145
				, [74]						AS Overwerk150
				, [75]						AS Overwerk200
				, [22]						AS Cursus
				, [70]+[34]					AS TijdvoorTijd
				, [35]						AS Feestdag
				, [32]						AS Vakantie
FROM
		(SELECT			tw.bkdate
						, tw.pers_key					
						, tw.department_id				
						, tw.bktype_id	
						, tw.bktype_id	boektype
						, tw.bkminutes					
		FROM            ATIMO.timewize AS tw
		INNER JOIN (
			SELECT
				MAX(tw.track_id) AS track_id
				, tw.pers_key
				, tw.bkdate
			FROM ATIMO.timewize AS tw
			WHERE			tw.ActInd = 'Y'
			GROUP BY
				tw.pers_key
				, tw.bkdate
		) AS T1 ON T1.track_id = tw.track_id AND T1.pers_key = tw.pers_key and T1.bkdate = tw.bkdate
		WHERE			(tw.ActInd = 'Y')
		)Source
		PIVOT
		(
		SUM(bkminutes)
		FOR boektype in ([99],[100],[112],[71],[72],[73],[74],[75],[22],[70],[34],[35],[32])
		) AS PivotTable
)A
GROUP BY DateKey, Employee_Key, Department_ID, HourType_ID