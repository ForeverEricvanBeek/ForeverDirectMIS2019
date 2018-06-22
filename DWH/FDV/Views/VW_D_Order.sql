


CREATE VIEW [FDV].[VW_D_Order]
AS

SELECT        
	OD.TC_ORDER_ID					AS Order_ID
	, LP.TC_SHIPMENT_ID				AS Order_Shipment_ID
	, OD.DSG_SHIP_VIA				AS Order_Ship_Via_Code
	, OD.BILL_FACILITY_ALIAS_ID		AS Order_Facility_Code
	, OD.D_COUNTRY_CODE				AS Order_Country_Code
	, OD.EXT_PURCHASE_ORDER			AS Order_Pos_Number
	, CC.CARRIER_CODE				AS Order_Carrier_Code
	, OD.DWH_CUSTOMER_ID			AS Order_Customer_ID
	, CASE
		WHEN STO.OLPN_Delivered_Date IS NOT NULL THEN 'Delivered'
		WHEN STO.OLPN_First_Attempt_Date IS NOT NULL THEN 'First Deliver attempt'
		WHEN STO.OLPN_First_Scan_Date IS NOT NULL THEN 'First Scanned'
		WHEN STO.OLPN_Ship_Confirm_Date IS NOT NULL THEN 'Ship Confirmed'
		WHEN OD.ACTUAL_SHIPPED_DTTM IS NOT NULL THEN 'Shipped'
		ELSE 'Created'
	END								AS Order_Status
	, OD.CREATED_DTTM				AS Order_Create_Date
	, SD.Order_Planned_Ship_Date	AS Order_Planned_Ship_Date
	, CASE WHEN SD.Order_Planned_Ship_Date IS NULL THEN NULL ELSE (
		SELECT 
			COUNT(cal3.DateKey)
		FROM [$(ForeverData01)].DM.D_Calendar cal3
		WHERE cal3.FullDate > SD.Order_Planned_Ship_Date
		AND cal3.FullDate <= OD.ACTUAL_SHIPPED_DTTM
	) END							AS Order_Days_Too_Late
	, OD.ACTUAL_SHIPPED_DTTM		AS Order_Shipped_Date
	, STO.OLPN_Ship_Confirm_Date	AS Order_Ship_Confirm_Date
	, STO.OLPN_First_Scan_Date		AS Order_First_Scan_Date
	, ISNULL(STO.OLPN_First_Attempt_Date,STO.OLPN_Delivered_Date) AS Order_First_Attempt_Date
	, STO.OLPN_Delivered_Date		AS Order_Delivered_Date
	--Doorlooptijd berekening Create - Delivered zonder weekend
	, (DATEDIFF(dd, OD.CREATED_DTTM, STO.OLPN_Delivered_Date) + 0)
		-(DATEDIFF(wk, OD.CREATED_DTTM, STO.OLPN_Delivered_Date) * 2)
		-(CASE WHEN DATENAME(dw, OD.CREATED_DTTM) = 'Sunday' THEN 1 ELSE 0 END)
		-(CASE WHEN DATENAME(dw, STO.OLPN_Delivered_Date) = 'Saturday' THEN 1 ELSE 0 END)  AS Order_LT_Create_Delivered
	--Doorlooptijd berekening Ship Confirm - FirstScan zonder weekend
	, (DATEDIFF(dd, STO.OLPN_Ship_Confirm_Date, STO.OLPN_First_Scan_Date) + 0)
		-(DATEDIFF(wk, STO.OLPN_Ship_Confirm_Date, STO.OLPN_First_Scan_Date) * 2)
		-(CASE WHEN DATENAME(dw, STO.OLPN_Ship_Confirm_Date) = 'Sunday' THEN 1 ELSE 0 END)
		-(CASE WHEN DATENAME(dw, STO.OLPN_First_Scan_Date) = 'Saturday' THEN 1 ELSE 0 END) AS Order_LT_Ship_Confirm_First_Scan
	--Doorlooptijd berekening Ship Confirm - First Attempt zonder weekend
	, (DATEDIFF(dd, STO.OLPN_Ship_Confirm_Date, ISNULL(STO.OLPN_First_Attempt_Date,STO.OLPN_Delivered_Date)) + 0)
		-(DATEDIFF(wk, STO.OLPN_Ship_Confirm_Date, ISNULL(STO.OLPN_First_Attempt_Date,STO.OLPN_Delivered_Date)) * 2)
		-(CASE WHEN DATENAME(dw,STO.OLPN_Ship_Confirm_Date) = 'Sunday' THEN 1 ELSE 0 END)
		-(CASE WHEN DATENAME(dw, ISNULL(STO.OLPN_First_Attempt_Date,STO.OLPN_Delivered_Date)) = 'Saturday' THEN 1 ELSE 0 END) AS Order_LT_Ship_Confirm_First_Attempt
	--Doorlooptijd berekening Ship Confirm - Delivered zonder weekend
	, (DATEDIFF(dd, STO.OLPN_Ship_Confirm_Date, STO.OLPN_Delivered_Date) + 0)
		-(DATEDIFF(wk, STO.OLPN_Ship_Confirm_Date, STO.OLPN_Delivered_Date) * 2)
		-(CASE WHEN DATENAME(dw, STO.OLPN_Ship_Confirm_Date) = 'Sunday' THEN 1 ELSE 0 END)
		-(CASE WHEN DATENAME(dw, STO.OLPN_Delivered_Date) = 'Saturday' THEN 1 ELSE 0 END) AS Order_LT_Ship_Confirm_Delivered
	, LP.Number_Of_Parcels			AS Order_Number_Of_Parcels
	, IFS.IFS_Order_ID				AS Order_IFS_Order_ID
	, OD.ORDER_TYPE					AS Order_Type 
FROM		MANH.ORDERS AS OD

INNER JOIN	MANH.SYS_CODE AS S1 
ON			S1.CODE_ID = OD.DO_STATUS 
AND			S1.CODE_TYPE = '501' 
AND			S1.REC_TYPE = 'S' 
AND			S1.ActInd = 'Y' 
AND         YEAR(OD.ACTUAL_SHIPPED_DTTM) >  YEAR(GETDATE())-2
LEFT JOIN	EXTRA.ORDERS_SHIP_DATE SD
ON			SD.TC_Order_ID = OD.TC_ORDER_ID
AND			SD.ActInd = 'Y'
AND         YEAR(OD.ACTUAL_SHIPPED_DTTM) >  YEAR(GETDATE())-2
LEFT JOIN	MANH.SHIP_VIA AS SV 
ON			SV.SHIP_VIA = OD.DSG_SHIP_VIA 
AND			SV.ActInd = 'Y' 
AND         YEAR(OD.ACTUAL_SHIPPED_DTTM) >  YEAR(GETDATE())-2
LEFT JOIN	MANH.CARRIER_CODE AS CC 
ON			CC.CARRIER_ID = SV.CARRIER_ID 
AND			CC.ActInd = 'Y' 
LEFT JOIN	MANH.FACILITY_ALIAS AS FA 
ON			FA.FACILITY_ALIAS_ID = OD.BILL_FACILITY_ALIAS_ID 
AND			FA.ActInd = 'Y'
AND         YEAR(OD.ACTUAL_SHIPPED_DTTM) >  YEAR(GETDATE())-2
LEFT JOIN ( SELECT 
			MAX(SUBSTRING(OL.TC_ORDER_LINE_ID, 1,11)) AS IFS_Order_ID
			, OL.ORDER_ID
		FROM MANH.ORDER_LINE_ITEM AS OL
		WHERE OL.ActInd = 'Y'
		GROUP BY OL.ORDER_ID	
) AS IFS
ON			IFS.ORDER_ID = OD.ORDER_ID
AND         YEAR(OD.ACTUAL_SHIPPED_DTTM) >  YEAR(GETDATE())-2
LEFT JOIN (	
	SELECT		-- Bepaal Per order de laatste datum per status per OLPN, indien er één leeg is dan moet de datum ook leeg blijven.
						-- De statusdatum van een order geeft dus aan wanneer het laatste Parcel van de order de status heeft bereikt.
		OLPN_Order_ID
		, MAX(CASE WHEN rnk_scan=1 THEN OLPN_First_Scan_Date END)		AS OLPN_First_Scan_Date
		, MAX(CASE WHEN rnk_confirm=1 THEN OLPN_Ship_Confirm_Date END)	AS OLPN_Ship_Confirm_Date
		, MAX(CASE WHEN rnk_delivered=1 THEN OLPN_Delivered_Date END)	AS OLPN_Delivered_Date
		, MAX(CASE WHEN rnk_attempt=1 THEN OLPN_First_Attempt_Date END) AS OLPN_First_Attempt_Date
	FROM (		
		SELECT   
			XX.OLPN_Order_ID
			, XX.OLPN_Ship_Confirm_Date
			, XX.OLPN_First_Scan_Date
			, XX.OLPN_Delivered_Date
			, XX.OLPN_First_Attempt_Date
			, row_number() over (partition by XX.OLPN_Order_ID order by ISNULL(XX.OLPN_First_Scan_Date,'9999-12-31') desc)	AS rnk_scan
			, row_number() over (partition by XX.OLPN_Order_ID order by ISNULL(XX.OLPN_Ship_Confirm_Date,'9999-12-31') desc)	AS rnk_confirm
			, row_number() over (partition by XX.OLPN_Order_ID order by ISNULL(XX.OLPN_Delivered_Date,'9999-12-31') desc)		AS rnk_delivered
			, row_number() over (partition by XX.OLPN_Order_ID order by ISNULL(XX.OLPN_First_Attempt_Date,'9999-12-31') desc) AS rnk_attempt
		FROM (
			SELECT DISTINCT 
				LP.TC_LPN_ID						AS OLPN_ID
				, LP.TC_ORDER_ID					AS OLPN_Order_ID
				, FD.STATUS_DATE_SH					AS OLPN_Ship_Confirm_Date
				, FD.STATUS_DATE_IN					AS OLPN_First_Scan_Date
				, ISNULL(FD.STATUS_DATE_AT,FD.STATUS_DATE_DL) AS OLPN_First_Attempt_Date
				, FD.STATUS_DATE_DL					AS OLPN_Delivered_Date
			FROM		MANH.LPN_OUTBOUND AS LP 
			INNER JOIN	MANH.ORDERS AS OD 
			ON			OD.TC_ORDER_ID = LP.TC_ORDER_ID 
			AND			OD.ActInd = 'Y' 
			AND			OD.DO_STATUS = '190'
			AND         YEAR(OD.ACTUAL_SHIPPED_DTTM) >  YEAR(GETDATE())-2 
						
			INNER JOIN (
				SELECT
					SHIPPER_SHIPMENT_REF
					, MAX(STATUS_DATE_DL) AS STATUS_DATE_DL
					, MAX(STATUS_DATE_IN) AS STATUS_DATE_IN
					, MAX(STATUS_DATE_SH) AS STATUS_DATE_SH
					, MAX(STATUS_DATE_AT) AS STATUS_DATE_AT
					, MAX(FORWARDER_SHIPMENT_REF) AS FORWARDER_SHIPMENT_REF 
				FROM (
					SELECT	  
						'TPX5' AS SORT
						, F1.SHIPPER_SHIPMENT_REF
						, MAX(CASE WHEN F1.STATUS_CATEGORY = 'DELIVERED' THEN F1.STATUS_DATE  END) AS STATUS_DATE_DL
						, MAX(CASE WHEN F1.STATUS_CATEGORY = 'INTRANSIT' THEN F1.STATUS_DATE END) AS STATUS_DATE_IN
						, MAX(CASE WHEN F1.STATUS_CATEGORY = 'SHIP_CONFIRM' THEN F1.STATUS_DATE END) AS STATUS_DATE_SH
						, MAX(CASE WHEN F1.STATUS_CATEGORY = 'ATTEMPT' THEN F1.STATUS_DATE END) AS STATUS_DATE_AT
						, MAX(F1.FORWARDER_SHIPMENT_REF) AS FORWARDER_SHIPMENT_REF 
					FROM TRANS.FORWARDER_STATUS AS F1
					GROUP BY F1.SHIPPER_SHIPMENT_REF
					UNION ALL
					SELECT	  
						'TPX7' AS SORT
						, F1.SHIPPER_SHIPMENT_REF
						, MAX(CASE WHEN F1.SHIPMENT_STATUS = 'DELIVERED' THEN F1.SHIPMENT_EVENT_TS  END) AS STATUS_DATE_DL
						, MAX(CASE WHEN F1.SHIPMENT_STATUS = 'INTRANSIT' THEN F1.SHIPMENT_EVENT_TS END) AS STATUS_DATE_IN
						, MAX(CASE WHEN F1.SHIPMENT_STATUS = 'SHIP_CONFIRM' THEN F1.SHIPMENT_EVENT_TS END) AS STATUS_DATE_SH
						, MAX(CASE WHEN F1.SHIPMENT_STATUS = 'ATTEMPT' THEN F1.SHIPMENT_EVENT_TS END) AS STATUS_DATE_AT
						, MAX(F2.FORWARDER_REFERENCE) AS FORWARDER_SHIPMENT_REF 
					FROM		TPX7.VW_FORWARDER_STATUS AS F1
					LEFT JOIN	TPX7.VW_SHIPMENT F2 
					ON			F2.SHIPMENT_ID = F1.SHIPMENT_ID
					GROUP BY F1.SHIPPER_SHIPMENT_REF
				) X
				GROUP BY SHIPPER_SHIPMENT_REF
			) AS FD 
			ON			FD.SHIPPER_SHIPMENT_REF = LP.TC_LPN_ID
			WHERE		LP.ActInd = 'Y' 
			AND			LP.LPN_FACILITY_STATUS = '90'
		) XX		
	)a
	GROUP BY OLPN_Order_ID
)STO
ON			OD.TC_ORDER_ID = STO.OLPN_Order_ID
AND         YEAR(OD.ACTUAL_SHIPPED_DTTM) >  YEAR(GETDATE())-2
LEFT JOIN  (-- Bepaal het aantal Parcels per order
		SELECT	  
			TC_ORDER_ID
			, MAX(TC_SHIPMENT_ID) AS TC_SHIPMENT_ID
			, COUNT(*) AS Number_Of_Parcels
		FROM	 MANH.LPN_OUTBOUND AS LP
		WHERE	 LP.ActInd = 'Y'
		AND		 LP.LPN_FACILITY_STATUS <> 99
		GROUP BY TC_ORDER_ID
) LP
ON			OD.TC_ORDER_ID = LP.TC_ORDER_ID 
WHERE		OD.ActInd = 'Y'
AND			OD.IS_CANCELLED = 0
AND         YEAR(OD.ACTUAL_SHIPPED_DTTM) >  YEAR(GETDATE())-2

UNION ALL

SELECT        '-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL