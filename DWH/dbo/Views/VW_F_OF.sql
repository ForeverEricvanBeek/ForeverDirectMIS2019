﻿
CREATE VIEW VW_F_OF
AS
--  Measure Number of Errors for OF Issues
SELECT
	CONVERT(CHAR, QI.OF_Issues_Date, 112)		AS DateKey
	, ISNULL(QI.OF_Issues_OLPN_ID,'-1')			AS OLPN_ID
	, ISNULL(QI.OF_Issues_Order_ID,'-1')		AS Order_ID
	, ISNULL(QI.D_OF_Issues_Skey,'-1')			AS D_OF_Issues_Skey
	, '-1'										AS D_OF_Complaints_Skey
	, ISNULL(QI.OF_Issues_Picker_ID,'-1')		AS Pickers_ID
	, ISNULL(OD.Order_Facility_Code,'-1')		AS Facility_ID
	, ISNULL(OD.Order_Ship_Via_Code,'-1')		AS Transporter_Ship_Via_Code
	, ISNULL(OD.Order_Customer_ID,'-1')			AS Customer_ID
	, COUNT(*)									AS Number_Of_Errors
	, NULL										AS Number_Of_Picks
FROM		[$(Datamart)].DM.D_OF_Issues AS QI
LEFT JOIN	[$(Datamart)].DM.D_Order AS OD
ON			OD.Order_ID = QI.OF_Issues_Order_ID
AND			OD.IsActual = 1
AND			OD.IsDeleted = 0
WHERE		QI.IsActual = 1
AND			QI.IsDeleted = 0
GROUP BY
	CONVERT(CHAR, QI.OF_Issues_Date, 112)
	, QI.OF_Issues_OLPN_ID
	, QI.OF_Issues_Order_ID
	, QI.D_OF_Issues_Skey
	, QI.OF_Issues_Picker_ID
	, OD.Order_Facility_Code
	, OD.Order_Ship_Via_Code
	, OD.Order_Customer_ID

UNION ALL

--  Measure Number of Errors for OF Complaints
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
FROM		[$(Datamart)].DM.D_OF_Complaints AS QI
LEFT JOIN	[$(Datamart)].DM.D_Order AS OD
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

-- Measure Number of Pick Lines
SELECT 
 CONVERT(CHAR, PT.CREATE_DATE_TIME, 112)		AS DateKey
	, '-1'										AS OLPN_ID
	, '-1'										AS Order_ID
	, '-1'										AS D_OF_Issues_Skey
	, '-1'										AS D_OF_Complaints_Skey
	, ISNULL(CASE
		WHEN (PT.MENU_OPTN_NAME IN ('RF QA incomplete') AND PT.REF_FIELD_1 IS NULL) THEN PT.USER_ID
		ELSE RIGHT(PT.REF_FIELD_1, LEN(PT.REF_FIELD_1) - 1)
	END,'-1')									AS Pickers_ID
	, ISNULL(OD.Order_Facility_Code,'-1')		AS Facility_ID
	, ISNULL(OD.Order_Ship_Via_Code,'-1')		AS Transporter_Ship_Via_Code
	, ISNULL(OD.Order_Customer_ID,'-1')			AS Customer_ID
	, NULL										AS Number_Of_Errors
	, 1											AS Number_Of_Picks
FROM		MANH.PROD_TRKG_TRAN AS PT
LEFT JOIN	[$(Datamart)].DM.D_Order AS OD
ON			OD.Order_ID = PT.TC_ORDER_ID
LEFT JOIN	WEB.Pickers AS PS
ON			'0' + PS.Picker_ID = PT.REF_FIELD_1
AND			PS.ActInd = 'Y'
AND			PS.IsDeleted = 'N'
WHERE		PT.MENU_OPTN_NAME IN ('PackCD', 'RF QA incomplete','Pack Cubed Directed')