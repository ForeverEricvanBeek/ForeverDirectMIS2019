﻿
CREATE VIEW VW_ODS_Shipment
AS


SELECT
	LP.TC_SHIPMENT_ID				AS ShipmentID
	, OD.TC_ORDER_ID				AS ShipmentOrderID
	, OD.DSG_SHIP_VIA				AS ShipmentShipViaCode
	, FA.FACILITY_ALIAS_ID			AS ShipmentFacilityCode
	, CC.CARRIER_CODE				AS ShipmentCarrierCode
	, OD.ACTUAL_SHIPPED_DTTM		AS ShipmentShippedDateTime
	, CAST(OD.ACTUAL_SHIPPED_DTTM AS DATE)		AS ShipmentShippedDate
	, COUNT(OD.TC_ORDER_ID) OVER (PARTITION BY LP.TC_SHIPMENT_ID) AS StatisticNumberOfOrders
FROM		MANH.ORDERS OD
INNER JOIN	MANH.SHIP_VIA AS SV 
ON			SV.SHIP_VIA = OD.DSG_SHIP_VIA 
AND			SV.ActInd = 'Y' 
INNER JOIN	MANH.CARRIER_CODE AS CC 
ON			CC.CARRIER_ID = SV.CARRIER_ID 
AND			CC.ActInd = 'Y' 
INNER JOIN	MANH.FACILITY_ALIAS AS FA 
ON			FA.FACILITY_ALIAS_ID = OD.BILL_FACILITY_ALIAS_ID 
AND			FA.ActInd = 'Y'
INNER JOIN  (
			SELECT	  
				LP.TC_ORDER_ID				AS TC_ORDER_ID
				, MAX(LP.TC_SHIPMENT_ID)	AS TC_SHIPMENT_ID
				,COUNT(1)					AS Number_Of_Parcels
			FROM	 MANH.LPN_OUTBOUND AS LP
			WHERE	 ActInd = 'Y'
			AND		 LPN_FACILITY_STATUS <> 99
			GROUP BY 
				TC_ORDER_ID
			) LP
ON			OD.TC_ORDER_ID = LP.TC_ORDER_ID
WHERE		OD.ActInd = 'Y'
AND			OD.Eff_Date >= GETDATE()-365
AND			LP.TC_SHIPMENT_ID IS NOT NULL