
CREATE VIEW dbo.VW_F_Paid_Productivity
AS

-- 2 Suptables to split Items in OF and BULK
-- Used to split inbound activities into OF / BULK
WITH ITEM_BY_DEP_CTE (Item, OF_QTY, BK_QTY) AS (
	SELECT
		IC.ITEM_NAME
		, CASE WHEN OD.ORDER_TYPE = 'OF' THEN CAST(1 AS DECIMAL(4,2)) /*ELSE CAST(0 AS DECIMAL(4,2))*/ END AS OF_QTY
		, CASE WHEN OD.ORDER_TYPE = 'BK' THEN CAST(1 AS DECIMAL(4,2)) /*ELSE CAST(0 AS DECIMAL(4,2))*/ END AS BK_QTY
	FROM MANH.ORDERS AS OD
	INNER JOIN dbo.VW_T_LPN AS LP ON LP.TC_ORDER_ID = OD.TC_ORDER_ID AND LP.ActInd = 'Y'
	INNER JOIN MANH.LPN_DETAIL AS LD ON LD.LPN_ID = LP.LPN_ID AND LP.ActInd = 'Y'
	INNER JOIN MANH.ITEM_CBO AS IC ON IC.ITEM_ID = LD.ITEM_ID AND IC.ActInd = 'Y'
	WHERE OD.ActInd = 'Y'
	AND OD.ORDER_TYPE <> 'DS'
 ), 
  
OFBULKPER (Item, Department) AS (
SELECT
 X.Item
 , CASE WHEN X.OF_QTY > X.BK_QTY THEN 'OF' ELSE 'BK' END AS Department
FROM (
		SELECT
		 ID.Item
		 , COUNT(ID.OF_QTY) AS OF_QTY
		 , COUNT(ID.BK_QTY) AS BK_QTY
		FROM ITEM_BY_DEP_CTE AS ID
		GROUP BY
		  ID.Item
) AS X
)

SELECT --TOP (100) PERCENT 
	T1.DateKey											AS DateKey
	, T1.ORDER_TYPE										AS Order_Type_Code
	, SUM(T1.OF_OLPN_SHIPPED)							AS Number_of_OLPN_Shipped_OF
	, SUM(T1.BULK_PALLET_SHIPPED)						AS Number_of_Pallets_Shipped_BULK
	, SUM(T1.INBOUND_CONTAINERS)						AS Number_of_Inbound_Containers
	, SUM(T1.INBOUND_PALLETS)							AS Number_of_Inbound_Pallet
	, SUM(T1.VAS_KIT)									AS Number_of_Units_Vas_KIT
	, SUM(T1.VAS_LABELLING)								AS Number_of_VAS_Labelling
	, SUM(T1.VAS_OMPAKKEN)								AS Number_of_VAS_Repack
	, SUM(T1.WORK_TIME_VAR)									AS Number_of_Work_Minutes_Var
	, SUM(T1.WORK_TIME_FIX)									AS Number_of_Work_Minutes_Fix
FROM (
		-- Number of OLP's Shipped for OF
		SELECT
			CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)	AS DateKey
			, OD.ORDER_TYPE								AS ORDER_TYPE
			, COUNT(LP.TC_LPN_ID)						AS OF_OLPN_SHIPPED
			, 0											AS BULK_PALLET_SHIPPED
			, 0											AS INBOUND_CONTAINERS
			, 0											AS INBOUND_PALLETS
			, 0											AS VAS_KIT
			, 0											AS VAS_LABELLING
			, 0											AS VAS_OMPAKKEN
			, 0											AS WORK_TIME_VAR
			, 0											AS WORK_TIME_FIX
		FROM MANH.ORDERS AS OD 
		INNER JOIN dbo.VW_T_LPN AS LP ON LP.TC_ORDER_ID = OD.TC_ORDER_ID AND LP.ActInd = 'Y' 
		WHERE OD.ORDER_TYPE = 'OF' 
		AND OD.ActInd = 'Y'
        GROUP BY 
			CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)
			, OD.ORDER_TYPE
        
		UNION ALL

		-- Number of Pallets shipped for Bulk
		SELECT
			CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)	AS DateKey
			, OD.ORDER_TYPE								AS ORDER_TYPE
			, 0											AS OF_OLPN_SHIPPED
			, COUNT(LP.TC_LPN_ID)						AS BULK_PALLET_SHIPPED
			, 0											AS INBOUND_CONTAINERS
			, 0											AS INBOUND_PALLETS
			, 0											AS VAS_KIT
			, 0											AS VAS_LABELLING
			, 0											AS VAS_OMPAKKEN
			, 0											AS WORK_TIME_VAR
			, 0											AS WORK_TIME_FIX
		FROM  MANH.ORDERS AS OD 
		INNER JOIN dbo.VW_T_LPN AS LP ON LP.TC_ORDER_ID = OD.TC_ORDER_ID AND LP.ActInd = 'Y' 
		WHERE OD.ORDER_TYPE = 'BK' 
		AND OD.ActInd = 'Y'
		GROUP BY 
			CONVERT(CHAR, OD.ACTUAL_SHIPPED_DTTM, 112)
			, OD.ORDER_TYPE

		UNION ALL

		-- Number of inbound Containers / Pallets
		SELECT        
					CONVERT(CHAR, AN.VERIFIED_DTTM, 112) 		AS DateKey
					, ISNULL(OB.Department,'OF')				AS ORDER_TYPE
					, 0 										AS OF_OLPN_SHIPPED
					, 0 										AS BULK_PALLET_SHIPPED
					, COUNT(DISTINCT AN.TC_ASN_ID)				AS INBOUND_CONTAINERS
					, COUNT(DISTINCT LP.TC_LPN_ID)				AS INBOUND_PALLETS
					, 0 										AS VAS_KIT
					, 0 										AS VAS_LABELLING
					, 0 										AS VAS_OMPAKKEN
					, 0											AS WORK_TIME_VAR
					, 0											AS WORK_TIME_FIX
		FROM MANH.ASN AS AN 
		LEFT JOIN dbo.VW_T_LPN AS LP ON LP.TC_ASN_ID = AN.TC_ASN_ID AND LP.ActInd = 'Y'
		LEFT JOIN MANH.ITEM_CBO IC ON IC.ITEM_ID = LP.ITEM_ID AND IC.ActInd = 'Y' 
		LEFT JOIN OFBULKPER OB ON OB.Item = IC.ITEM_NAME
		WHERE (AN.VERIFIED_DTTM IS NOT NULL) 
		AND (AN.ActInd = 'Y')
		AND LP.TC_PURCHASE_ORDERS_ID LIKE 'PO%'
		AND AN.IS_CANCELLED = 0
		GROUP BY 
		CONVERT(CHAR, AN.VERIFIED_DTTM, 112), OB.Department

		UNION ALL

		-- VAS 
		SELECT
			X.DateKey									AS DateKey
			, X.DEPARTMENT								AS ORDER_TYPE
			, 0											AS OF_OLPN_SHIPPED
			, 0 										AS BULK_PALLET_SHIPPED
			, 0											AS INBOUND_CONTAINERS
			, 0 										AS INBOUND_PALLETS
			, CASE WHEN X.[ORDER TYPE] = 'K' THEN SUM(X.[COMPLETED QTY]) ELSE 0 END AS VAS_KIT
			, CASE WHEN X.[ORDER TYPE] = 'L' THEN SUM(X.[COMPLETED QTY]) ELSE 0 END AS VAS_LABELLING
			, CASE WHEN X.[ORDER TYPE] = 'O' THEN SUM(X.[COMPLETED QTY]) ELSE 0 END AS VAS_OMPAKKEN
			, 0											AS WORK_TIME_VAR
			, 0											AS WORK_TIME_FIX
		FROM (
			SELECT 
				CONVERT(CHAR, WD.MOD_DATE_TIME, 112)		AS DateKey
				, LEFT(WH.MFG_LINE,1)						As "ORDER TYPE"
				, OB.Department								AS DEPARTMENT
				, WD.REQD_QTY								As "REQ QTY"
				, WD.CMPL_QTY								As "COMPLETED QTY"
			FROM		MANH.WORK_ORD_HDR WH
			INNER JOIN	MANH.WORK_ORD_DTL WD
			ON			WH.WORK_ORD_NBR = WD.WORK_ORD_NBR
			INNER JOIN	MANH.ITEM_CBO IC
			ON			WD.ITEM_ID = IC.ITEM_ID
			AND			IC.ActInd = 'Y'
			LEFT JOIN	OFBULKPER OB 
			ON OB.Item = IC.ITEM_NAME
			WHERE WD.BACK_FLUSH_FLAG = 'Y'
			AND WH.STAT_CODE = 90
		) X
		GROUP BY 
			X.DateKey
			, X.[ORDER TYPE]
			, X.DEPARTMENT

		UNION ALL

		-- Work Time OF - Gewerkt
		SELECT        
			CONVERT(CHAR, tw.bkdate, 112)				AS DateKey
			, 'OF'										AS ORDER_TYPE
			, 0 										AS OF_OLPN_SHIPPED
			, 0 										AS BULK_PALLET_SHIPPED
			, 0											AS INBOUND_CONTAINERS
			, 0 										AS INBOUND_PALLETS
			, 0 										AS VAS_KIT
			, 0 										AS VAS_LABELLING
			, 0 										AS VAS_OMPAKKEN
			, (SUM(CASE 
						WHEN es.timing = 1 and tw.bktype_id = '100' then tw.bkminutes
						WHEN (es.timing = 0 or es.timing is null) and tw.bktype_id = '99' then tw.bkminutes	
						ELSE 0	
				END ) * 0.5) /2							AS WORK_TIME_VAR
			, (SUM((CASE 
						WHEN es.timing = 1 and tw.bktype_id = '100' then tw.bkminutes
						WHEN (es.timing = 0 or es.timing is null) and tw.bktype_id = '99' then tw.bkminutes
						ELSE 0	
				END )) * 0.5) /2						AS WORK_TIME_FIX
			FROM ATIMO.timewize AS tw
			INNER JOIN (
				SELECT
					MAX(tw.track_id) AS track_id
					, tw.pers_key
					, tw.bkdate
				FROM ATIMO.timewize AS tw
				WHERE tw.ActInd = 'Y'
				GROUP BY
					tw.pers_key
					, tw.bkdate
			) AS T1 ON T1.track_id = tw.track_id AND T1.pers_key = tw.pers_key and T1.bkdate = tw.bkdate
			LEFT JOIN ATIMO.emplstam es on es.pers_id = tw.pers_id and es.ActInd = 'Y'
			WHERE (tw.ActInd = 'Y')
			AND (tw.department_id = '13') 
			AND (tw.bktype_id IN ('100', '99'))
		GROUP BY
			tw.bkdate

		UNION ALL

		-- Worktime Bulk - Gewerkt
		SELECT        
			CONVERT(CHAR, tw.bkdate, 112)				AS DateKey
			, 'BK'										AS ORDER_TYPE
			, 0 										AS OF_OLPN_SHIPPED
			, 0 										AS BULK_PALLET_SHIPPED
			, 0											AS INBOUND_CONTAINERS
			, 0 										AS INBOUND_PALLETS
			, 0 										AS VAS_KIT
			, 0 										AS VAS_LABELLING
			, 0 										AS VAS_OMPAKKEN
			, (SUM(CASE 
						WHEN es.timing = 1 and tw.bktype_id = '100' then tw.bkminutes
						WHEN (es.timing = 0 or es.timing is null) and tw.bktype_id = '99' then tw.bkminutes	
						ELSE 0	
				END ) * 0.5) /2							AS WORK_TIME_VAR
			, (SUM((CASE 
						WHEN es.timing = 1 and tw.bktype_id = '100' then tw.bkminutes
						WHEN (es.timing = 0 or es.timing is null) and tw.bktype_id = '99' then tw.bkminutes
						ELSE 0	
				END )) * 0.5) /2						AS WORK_TIME_FIX
			FROM ATIMO.timewize AS tw
			INNER JOIN (
				SELECT
					MAX(tw.track_id) AS track_id
					, tw.pers_key
					, tw.bkdate
				FROM ATIMO.timewize AS tw
				WHERE tw.ActInd = 'Y'
				GROUP BY
					tw.pers_key
					, tw.bkdate
			) AS T1 ON T1.track_id = tw.track_id AND T1.pers_key = tw.pers_key and T1.bkdate = tw.bkdate
			LEFT JOIN ATIMO.emplstam es on es.pers_id = tw.pers_id and es.ActInd = 'Y'
			WHERE (tw.ActInd = 'Y')
			AND (tw.department_id = '14') 
			AND (tw.bktype_id IN ('100', '99'))
		GROUP BY
			tw.bkdate
                         
		UNION ALL

		-- Work time OF - VAS (50% OF / 50% Bulk)
		SELECT        
			CONVERT(CHAR, tw.bkdate, 112)				AS DateKey
			, 'OF' 										AS ORDER_TYPE
			, 0 										AS OF_OLPN_SHIPPED
			, 0 										AS BULK_PALLET_SHIPPED
			, 0											AS INBOUND_CONTAINERS
			, 0 										AS INBOUND_PALLETS
			, 0 										AS VAS_KIT
			, 0 										AS VAS_LABELLING
			, 0 										AS VAS_OMPAKKEN
			, (SUM(CASE 
						WHEN es.timing = 1 and tw.bktype_id = '100' then tw.bkminutes
						WHEN (es.timing = 0 or es.timing is null) and tw.bktype_id = '99' then tw.bkminutes	
						ELSE 0	
				END ) * 0.5) /2							AS WORK_TIME_VAR
			, (SUM((CASE 
						WHEN es.timing = 1 and tw.bktype_id = '100' then tw.bkminutes
						WHEN (es.timing = 0 or es.timing is null) and tw.bktype_id = '99' then tw.bkminutes
						ELSE 0	
				END )) * 0.5) /2						AS WORK_TIME_FIX
			FROM ATIMO.timewize AS tw
			INNER JOIN (
				SELECT
					MAX(tw.track_id) AS track_id
					, tw.pers_key
					, tw.bkdate
				FROM ATIMO.timewize AS tw
				WHERE tw.ActInd = 'Y'
				GROUP BY
					tw.pers_key
					, tw.bkdate
			) AS T1 ON T1.track_id = tw.track_id AND T1.pers_key = tw.pers_key and T1.bkdate = tw.bkdate
			LEFT JOIN ATIMO.emplstam es on es.pers_id = tw.pers_id and es.ActInd = 'Y'
			WHERE (tw.ActInd = 'Y')
			AND (tw.department_id IN ('3')) 
			AND (tw.bktype_id IN ('100', '99'))
		GROUP BY
			tw.bkdate

		UNION ALL

		-- Work time Bulk - VAS (50% OF / 50% Bulk)
		SELECT        
			CONVERT(CHAR, tw.bkdate, 112)				AS DateKey
			, 'BK' 										AS ORDER_TYPE
			, 0 										AS OF_OLPN_SHIPPED
			, 0 										AS BULK_PALLET_SHIPPED
			, 0											AS INBOUND_CONTAINERS
			, 0 										AS INBOUND_PALLETS
			, 0 										AS VAS_KIT
			, 0 										AS VAS_LABELLING
			, 0 										AS VAS_OMPAKKEN
			, (SUM(CASE 
						WHEN es.timing = 1 and tw.bktype_id = '100' then tw.bkminutes
						WHEN (es.timing = 0 or es.timing is null) and tw.bktype_id = '99' then tw.bkminutes	
						ELSE 0	
				END ) * 0.5) /2							AS WORK_TIME_VAR
			, (SUM((CASE 
						WHEN es.timing = 1 and tw.bktype_id = '100' then tw.bkminutes
						WHEN (es.timing = 0 or es.timing is null) and tw.bktype_id = '99' then tw.bkminutes
						ELSE 0	
				END )) * 0.5) /2						AS WORK_TIME_FIX
			FROM ATIMO.timewize AS tw
			INNER JOIN (
				SELECT
					MAX(tw.track_id) AS track_id
					, tw.pers_key
					, tw.bkdate
				FROM ATIMO.timewize AS tw
				WHERE tw.ActInd = 'Y'
				GROUP BY
					tw.pers_key
					, tw.bkdate
			) AS T1 ON T1.track_id = tw.track_id AND T1.pers_key = tw.pers_key and T1.bkdate = tw.bkdate
			LEFT JOIN ATIMO.emplstam es on es.pers_id = tw.pers_id and es.ActInd = 'Y'
			WHERE (tw.ActInd = 'Y')
			AND (tw.department_id IN ('3')) 
			AND (tw.bktype_id IN ('100', '99'))
		GROUP BY
			tw.bkdate
) AS T1
WHERE (DateKey IS NOT NULL)
GROUP BY 
	DateKey
	, ORDER_TYPE