



CREATE VIEW [FDV].[VW_F_OF]
AS
--  Measure Number of Errors for OF Issues
SELECT
	CONVERT(CHAR, QI.OF_Issues_Date, 112)		AS DateKey
	, ISNULL(QI.OF_Issues_OLPN_ID,'-1')			AS OLPN_ID
	, ISNULL(QI.OF_Issues_Order_ID,'-1')		AS Order_ID
	, ISNULL(QI.OF_Issues_ID,'-1')			    AS OF_Issues_ID
	, '-1'										AS D_OF_Complaints_Skey
	, ISNULL(QI.OF_Issues_Picker_ID,'-1')		AS Pickers_ID
	, ISNULL(OD.Order_Facility_Code,'-1')		AS Facility_ID
	, ISNULL(OD.Order_Ship_Via_Code,'-1')		AS Transporter_Ship_Via_Code
	, ISNULL(OD.Order_Customer_ID,'-1')			AS Customer_ID
	, COUNT(*)									AS Number_Of_Errors
	, NULL										AS Number_Of_Picks
FROM		[$(ForeverData01)].DM.D_OF_Issues AS QI
LEFT JOIN	[$(ForeverData01)].DM.D_Order AS OD
ON			OD.Order_ID = QI.OF_Issues_Order_ID
AND			OD.IsActual = 1
AND			OD.IsDeleted = 0
WHERE		QI.IsActual = 1
AND			QI.IsDeleted = 0
AND			QI.OF_Issues_Date > DATEADD(YEAR,-1,GETDATE())
GROUP BY
	CONVERT(CHAR, QI.OF_Issues_Date, 112)
	, QI.OF_Issues_OLPN_ID
	, QI.OF_Issues_Order_ID
	, QI.OF_Issues_ID
	, QI.OF_Issues_Picker_ID
	, OD.Order_Facility_Code
	, OD.Order_Ship_Via_Code
	, OD.Order_Customer_ID

UNION ALL

--  Measure Number of Errors for OF Complaints
/*
SELECT
	CONVERT(CHAR, QI.OF_Complaints_Date, 112)	AS DateKey
	, ISNULL(QI.OF_Complaints_OLPN_ID, '-1')	AS OLPN_ID
	, ISNULL(QI.OF_Complaints_Order_ID,'-1')	AS Order_ID
	, '-1'										AS D_OF_Issues_Skey
	, ISNULL(QI.D_OF_Complaints_Skey,'-1')		AS D_OF_Complaints_Skey
	, '-1'										AS Pickers_ID
	, ISNULL(QI.OF_Complaints_Facility,'-1')	AS Facility_ID
	, ISNULL(OD.Order_Ship_Via_Code,'-1')		AS Transporter_Ship_Via_Code
	, ISNULL(OD.Order_Customer_ID,'-1')			AS Customer_ID
	, COUNT(*)									AS Number_Of_Errors
	, NULL										AS Number_Of_Picks
FROM		Datamart.DM.D_OF_Complaints AS QI
LEFT JOIN	Datamart.DM.D_Order AS OD
ON			OD.Order_ID = QI.OF_Complaints_Order_ID
AND			OD.IsActual = 1
AND			OD.IsDeleted = 0
WHERE		QI.IsActual = 1
AND			QI.IsDeleted = 0
GROUP BY
	CONVERT(CHAR, QI.OF_Complaints_Date, 112)
	, QI.OF_Complaints_OLPN_ID
	, QI.OF_Complaints_Order_ID
	, QI.D_OF_Complaints_Skey
	, QI.OF_Complaints_ID
	, QI.OF_Complaints_Facility
	, OD.Order_Ship_Via_Code
	, OD.Order_Customer_ID
	

UNION ALL
*/
-- Measure Number of Pick Lines
SELECT 
 CONVERT(CHAR, PT1.CREATE_DATE_TIME, 112)		AS DateKey
	, '-1'										AS OLPN_ID
	, '-1'										AS Order_ID
	, '-1'										AS OF_Issues_ID
	, '-1'										AS D_OF_Complaints_Skey
	, ISNULL(CASE
		WHEN (PT1.MENU_OPTN_NAME IN ('RF QA incomplete') AND PT1.REF_FIELD_1 IS NULL) THEN PT1.USER_ID
		ELSE RIGHT(PT1.REF_FIELD_1, LEN(PT1.REF_FIELD_1) - 1)
	END,'-1')									AS Pickers_ID
	, ISNULL(OD.Order_Facility_Code,'-1')		AS Facility_ID
	, ISNULL(OD.Order_Ship_Via_Code,'-1')		AS Transporter_Ship_Via_Code
	, ISNULL(OD.Order_Customer_ID,'-1')			AS Customer_ID
	, NULL										AS Number_Of_Errors
	, 1											AS Number_Of_Picks
FROM		 [$(ForeverData01)].DM.D_Order AS OD
INNER JOIN	 MANH.PROD_TRKG_TRAN AS PT1
ON			OD.Order_ID = PT1.TC_ORDER_ID
AND        PT1.MENU_OPTN_NAME IN ('PackCD', 'RF QA incomplete','Pack Cubed Directed')

--INNER JOIN ForeverData01.DM.D_OLPN_Stats_OF PT1
--ON OD.Order_ID = PT1.ORDER_ID
--AND PT1.MENU_OPTN_NAME IN ('PackCD', 'RF QA incomplete','Pack Cubed Directed')

LEFT JOIN	WEB.Picker AS PS
ON			'0' + PS.Picker_ID = PT1.REF_FIELD_1
AND			PS.ActInd = 'Y'
AND			PS.IsDeleted = 'N'
WHERE		OD.Order_Create_Date >= DATEADD(YEAR,-1,GETDATE())