﻿CREATE VIEW FDV.VW_D_OLPN
AS

SELECT DISTINCT 
		  LP.TC_LPN_ID						AS OLPN_ID
		, LP.TC_ORDER_ID					AS OLPN_Order_ID
		, FD.FORWARDER_SHIPMENT_REF			AS OLPN_Tracking_Code
		, CASE  WHEN FD.STATUS_DATE_DL IS NOT NULL THEN 'Delivered'
				WHEN FD.STATUS_DATE_AT IS NOT NULL THEN 'First Deliver attempt'
				WHEN FD.STATUS_DATE_IN IS NOT NULL THEN 'First Scanned'
				WHEN FD.STATUS_DATE_SH IS NOT NULL THEN 'Ship Confirmed'
				WHEN OD.ACTUAL_SHIPPED_DTTM IS NOT NULL AND LP.LPN_FACILITY_STATUS = '90' THEN 'Shipped'
				ELSE 'Created'
				END							AS OLPN_Status
		, LP.WEIGHT							AS OLPN_Weight
		, ISNULL(MW.FIRST_WEIGHT, LP.WEIGHT)AS OLPN_First_Weight
		, MW.LAST_WEIGHT					AS OLPN_Last_Weight
		, LP.ESTIMATED_VOLUME/1000			AS OLPN_Volume
		, LP.TOTAL_LPN_QTY					AS OLPN_Quantity
		,  (SELECT 	COUNT(*) AS DangerousGoods
            FROM MANH.LPN_DETAIL AS LD 
			INNER JOIN MANH.ITEM_CBO AS IC 
			ON IC.ITEM_ID = LD.ITEM_ID 
			AND IC.ActInd = 'Y'
            WHERE (IC.UN_NUMBER_ID IS NOT NULL) 
			AND (LD.LPN_ID = LP.LPN_ID) 
			AND (LD.ActInd = 'Y')
			)								AS OLPN_Dangerous_Goods
		, CASE 
			WHEN CO.CODE_DESC IS NULL 
			THEN LP.CONTAINER_SIZE
			ELSE CO.CODE_DESC
		END									AS OLPN_Box_Size
		, OD.CREATED_DTTM					AS OLPN_Order_Create_Date
		, ISNULL(P2.CREATE_DATE_TIME,OD.ACTUAL_SHIPPED_DTTM) AS OLPN_Handled_Date
		, OD.ACTUAL_SHIPPED_DTTM			AS OLPN_Shipped_Date
		, FD.STATUS_DATE_SH					AS OLPN_Ship_Confirm_Date
		, FD.STATUS_DATE_IN					AS OLPN_First_Scan_Date
		, ISNULL(FD.STATUS_DATE_AT,FD.STATUS_DATE_DL) AS OLPN_First_Attempt_Date
		, FD.STATUS_DATE_DL					AS OLPN_Delivered_Date
		, (DATEDIFF(dd, OD.CREATED_DTTM, FD.STATUS_DATE_DL) + 0)
			-(DATEDIFF(wk, OD.CREATED_DTTM, FD.STATUS_DATE_DL) * 2)
			-(CASE WHEN DATENAME(dw, OD.CREATED_DTTM) = 'Sunday' THEN 1 ELSE 0 END)
			-(CASE WHEN DATENAME(dw, FD.STATUS_DATE_DL) = 'Saturday' THEN 1 ELSE 0 END)	AS OLPN_LT_Create_Delivered
		, (DATEDIFF(dd, FD.STATUS_DATE_SH, FD.STATUS_DATE_IN) + 0)
			-(DATEDIFF(wk, FD.STATUS_DATE_SH, FD.STATUS_DATE_IN) * 2)
			-(CASE WHEN DATENAME(dw, FD.STATUS_DATE_SH) = 'Sunday' THEN 1 ELSE 0 END)
			-(CASE WHEN DATENAME(dw, FD.STATUS_DATE_IN) = 'Saturday' THEN 1 ELSE 0 END)	AS OLPN_LT_Ship_Confirm_First_Scan
		, (DATEDIFF(dd, FD.STATUS_DATE_SH, ISNULL(FD.STATUS_DATE_AT,FD.STATUS_DATE_DL)) + 0)
			-(DATEDIFF(wk, FD.STATUS_DATE_SH, ISNULL(FD.STATUS_DATE_AT,FD.STATUS_DATE_DL)) * 2)
			-(CASE WHEN DATENAME(dw, FD.STATUS_DATE_SH) = 'Sunday' THEN 1 ELSE 0 END)
			-(CASE WHEN DATENAME(dw, ISNULL(FD.STATUS_DATE_AT,FD.STATUS_DATE_DL)) = 'Saturday' THEN 1 ELSE 0 END)		AS OLPN_LT_Ship_Confirm_First_Attempt
		, (DATEDIFF(dd, FD.STATUS_DATE_SH, FD.STATUS_DATE_DL) + 0)
			-(DATEDIFF(wk, FD.STATUS_DATE_SH, FD.STATUS_DATE_DL) * 2)
			-(CASE WHEN DATENAME(dw, FD.STATUS_DATE_SH) = 'Sunday' THEN 1 ELSE 0 END)
			-(CASE WHEN DATENAME(dw, FD.STATUS_DATE_DL) = 'Saturday' THEN 1 ELSE 0 END)	AS OLPN_LT_Ship_Confirm_Delivered
		, TU.Link + FD.FORWARDER_SHIPMENT_REF 
			+ CASE WHEN TU.Link2 IS NOT NULL THEN TU.Link2 ELSE '' END 
			+ CASE WHEN TU.Zipcode = 1 THEN OD.D_POSTAL_CODE ELSE '' END	AS OLPN_Track_Trace_Link
		, P2.PLT_ID							AS OLPN_Pallet_ID
		, '//FDXDOCP01/PackingslipPRD/'  + REPLACE(PP.fileName,'\','/') AS OLPN_Document_Location
FROM		dbo.VW_T_LPN AS LP 
INNER JOIN	MANH.ORDERS AS OD 
ON			OD.TC_ORDER_ID = LP.TC_ORDER_ID 
AND			OD.ActInd = 'Y' 
AND			OD.DO_STATUS = '190' 
AND			OD.ACTUAL_SHIPPED_DTTM >= '20140601'
AND			YEAR(OD.CREATED_DTTM) > YEAR(GETDATE())-2
LEFT JOIN	(
			SELECT
			  P1.olpn
			  , MAX(P1.path) + MAX(P1.name) AS fileName
			FROM		DOC.PlanetPress P1
			WHERE		P1.ActInd = 'Y'
			GROUP By P1.olpn
) PP
ON			PP.olpn = LP.TC_LPN_ID
LEFT JOIN	MANH.LPN_FACILITY_STATUS AS LS 
ON			LS.LPN_FACILITY_STATUS = LP.LPN_FACILITY_STATUS 
AND			LS.INBOUND_OUTBOUND_INDICATOR = 'O' 
AND			LS.ActInd = 'Y'
LEFT JOIN	MANH.SYS_CODE CO 
ON			CO.CODE_ID = ISNULL(LP.CONTAINER_SIZE, '000') 
AND			CO.REC_TYPE = 'C' 
AND			CO.CODE_TYPE = 'STU' 
AND			CO.ActInd = 'Y'
LEFT JOIN	(
			  SELECT 
				'CTN' as CONTAINER_TYPE
				, SYS_CODE.*, SUBSTRING(MISC_FLAGS,1,10) / 1000 AS MIN_WEIGHT, SUBSTRING(MISC_FLAGS,11,10) / 1000 AS MAX_WEIGHT
			  FROM		MANH.SYS_CODE
			  WHERE		REC_TYPE = 'C' 
			  AND		CODE_TYPE = 'SW1'
			  UNION ALL
			  SELECT 
				'XL' as CONTAINER_TYPE
				, SYS_CODE.*, SUBSTRING(MISC_FLAGS,1,10) / 1000 AS MIN_WEIGHT, SUBSTRING(MISC_FLAGS,11,10) / 1000 AS MAX_WEIGHT
			  FROM		MANH.SYS_CODE
			  WHERE		REC_TYPE = 'C' 
			  AND		CODE_TYPE = 'SW2'
			) SC ON SC.CONTAINER_TYPE = LP.CONTAINER_TYPE AND SC.CODE_ID = CO.CODE_ID
LEFT JOIN	WEB.Transporter_URL AS TU 
ON			TU.Ship_Via = OD.DSG_SHIP_VIA 
AND			TU.ActInd = 'Y' 
AND			YEAR(OD.CREATED_DTTM) > YEAR(GETDATE())-2
LEFT JOIN(
			SELECT
				MAX(P1.PROD_TRKG_TRAN_ID) AS PROD_TRKG_TRAN_ID
				, P1.CNTR_NBR
            FROM		MANH.PROD_TRKG_TRAN AS P1
            WHERE		P1.MENU_OPTN_NAME IN (N'RF Anchor oLPN Pltz', 'Pltz oLPN', 'PackCD', 'RF QA incomplete', 'Pack Cubed Directed', 'Weigh and Manifest oLPN', 'Pck Cubed Dir CP Conveyable', 'TASK Pck Cubed Dir Bulk Repl') -- Some parcels are palletized Pltz oLPN
			AND			P1.FROM_LOCN IS NULL
            GROUP BY	P1.CNTR_NBR
) AS PT		ON PT.CNTR_NBR = LP.TC_LPN_ID 
LEFT JOIN	MANH.PROD_TRKG_TRAN AS P2 
ON			P2.CNTR_NBR = PT.CNTR_NBR
AND			P2.PROD_TRKG_TRAN_ID = PT.PROD_TRKG_TRAN_ID
LEFT JOIN (
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
FROM TPX7.VW_FORWARDER_STATUS AS F1
LEFT JOIN TPX7.VW_SHIPMENT F2 ON F2.SHIPMENT_ID = F1.SHIPMENT_ID
GROUP BY F1.SHIPPER_SHIPMENT_REF
) X
GROUP BY
  SHIPPER_SHIPMENT_REF
		  ) AS FD 
ON			FD.SHIPPER_SHIPMENT_REF = LP.TC_LPN_ID
LEFT JOIN (
			SELECT DISTINCT 
			  MP.TC_LPN_ID
			  , MAX(MP.FIRST_WEIGHT) OVER (PARTITION BY MP.TC_LPN_ID) AS FIRST_WEIGHT
			  , MAX(MP.LAST_WEIGHT) OVER (PARTITION BY MP.TC_LPN_ID)  AS LAST_WEIGHT 
			FROM (
				SELECT DISTINCT
				  MP1.LPN			AS TC_LPN_ID
				  , CAST(CAST(FIRST_VALUE(MP1.WEIGHT) OVER (PARTITION BY MP1.LPN ORDER BY MP1.CREATE_DATE) AS DECIMAL(16,4)) / 1000 AS DECIMAL(16,4)) AS FIRST_WEIGHT
				  , CASE WHEN COUNT(*) OVER (PARTITION BY MP1.LPN ORDER BY MP1.CREATE_DATE) = 1 THEN
					NULL
					ELSE CAST(CAST(FIRST_VALUE(MP1.WEIGHT) OVER (PARTITION BY MP1.LPN ORDER BY MP1.CREATE_DATE DESC) AS DECIMAL(16,4)) / 1000 AS DECIMAL(16,4)) 
				  END AS LAST_WEIGHT
				FROM		EXTRA.CL_MESSAGE_PLUS MP1
				WHERE		MP1.TYPE = 'Container Status'
				AND			MP1.DIVERT = 'BAL01'
				AND			MP1.ActInd = 'Y'
			) MP
)			AS MW
ON			MW.TC_LPN_ID = LP.TC_LPN_ID
WHERE		LP.ActInd = 'Y' 
AND			LP.INBOUND_OUTBOUND_INDICATOR = 'O' 
AND			LP.LPN_FACILITY_STATUS = '90'


UNION ALL
SELECT '-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL