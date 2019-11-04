﻿







CREATE VIEW [FDV].[VW_F_Vas_Productivity]
AS


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


SELECT 
	T1.DateKey											AS DateKey
	,ISNULL(T1.ORDER_TYPE,-1)							AS Order_Type_Code
	,T1.Vas_Lane_Code									AS Vas_Lane_Code
	--,T1.MISC_FLAGS										AS MISC_FLAGS
	,T1.MACHINE											AS Vas_Machine_Code
	, SUM(VAS_KIT)										AS #VAS_KIT
	, SUM(VAS_TRI_PAK)									AS #VAS_TRI_PAK
	, SUM(VAS_SI_PAK)									AS #VAS_SI_PAK
	, SUM(VAS_LB_M8)									AS #VAS_LB_M8
	, SUM(VAS_LB_M7)									AS #VAS_LB_M7
	, SUM(VAS_LB_M6)									AS #VAS_LB_M6
	, SUM(VAS_LB_M5)									AS #VAS_LB_M5
	, SUM(VAS_LB_M4)									AS #VAS_LB_M4
	, SUM(VAS_LB_M3)									AS #VAS_LB_M3
	, SUM(VAS_LB_M2)									AS #VAS_LB_M2
	, SUM(VAS_LB_M1)									AS #VAS_LB_M1
	, SUM(VAS_LB_HND)									AS #VAS_LB_HND
	, SUM(VAS_OMPAK)									AS #VAS_OMPAK
	, SUM(VAS_UITPAK)									AS #VAS_UITPAK
	, SUM(VAS_TPA_BULK)									AS #VAS_TPA_BULK
	, SUM(VAS_SPOED)									AS #VAS_SPOED


	
FROM (

SELECT
			X.DateKey									AS DateKey
			, X.DEPARTMENT								AS ORDER_TYPE
			, X.MACHINE								    AS MACHINE
			, X."ORDER TYPE"							AS Vas_Lane_Code
			--, X.MISC_FLAGS								AS MISC_FLAGS
			, CASE WHEN X.[ORDER TYPE] in  ('KT','KK')  THEN SUM(X.[COMPLETED QTY]) ELSE 0 END AS VAS_KIT
			, CASE WHEN X.[ORDER TYPE] in  ('KH')  THEN SUM(X.[COMPLETED QTY]) ELSE 0 END AS VAS_TRI_PAK
			, CASE WHEN X.[ORDER TYPE] in  ('LH')  THEN SUM(X.[COMPLETED QTY]) ELSE 0 END AS VAS_SI_PAK
			, CASE WHEN X.[ORDER TYPE] in  ('LK')  THEN SUM(X.[COMPLETED QTY]) ELSE 0 END AS VAS_LB_M8
			, CASE WHEN X.[ORDER TYPE] in  ('KRIMP')  THEN SUM(X.[COMPLETED QTY]) ELSE 0 END AS VAS_LB_M7
			, CASE WHEN X.[ORDER TYPE] in  ('LL')  THEN SUM(X.[COMPLETED QTY]) ELSE 0 END AS VAS_LB_M6
			, CASE WHEN X.[ORDER TYPE] in  ('LC','KC')  THEN SUM(X.[COMPLETED QTY]) ELSE 0 END AS VAS_LB_M5
			, CASE WHEN X.[ORDER TYPE] in  ('LD')  THEN SUM(X.[COMPLETED QTY]) ELSE 0 END AS VAS_LB_M4
			, CASE WHEN X.[ORDER TYPE] in  ('LE')  THEN SUM(X.[COMPLETED QTY]) ELSE 0 END AS VAS_LB_M3
			, CASE WHEN X.[ORDER TYPE] in  ('LF')  THEN SUM(X.[COMPLETED QTY]) ELSE 0 END AS VAS_LB_M2
			, CASE WHEN X.[ORDER TYPE] in  ('LG','KG')  THEN SUM(X.[COMPLETED QTY]) ELSE 0 END AS VAS_LB_M1
			, CASE WHEN X.[ORDER TYPE] in  ('LB')  THEN SUM(X.[COMPLETED QTY]) ELSE 0 END AS VAS_LB_HND
			, CASE WHEN X.[ORDER TYPE] in  ('OP')  THEN SUM(X.[COMPLETED QTY]) ELSE 0 END AS VAS_OMPAK
			, CASE WHEN X.[ORDER TYPE] in  ('UP')  THEN SUM(X.[COMPLETED QTY]) ELSE 0 END AS VAS_UITPAK
			, CASE WHEN X.[ORDER TYPE] in  ('LI')  THEN SUM(X.[COMPLETED QTY]) ELSE 0 END AS VAS_TPA_BULK
			, CASE WHEN X.[ORDER TYPE] in  ('LS')  THEN SUM(X.[COMPLETED QTY]) ELSE 0 END AS VAS_SPOED

		    FROM (
			SELECT 
				CONVERT(CHAR, WD.MOD_DATE_TIME, 112)		AS DateKey
				, WH.MFG_LINE								AS "ORDER TYPE"
				, SC.MISC_FLAGS								AS MISC_FLAGS
				, SC.CODE_DESC								AS MACHINE			
				, OB.Department								AS DEPARTMENT
				, WD.REQD_QTY								AS "REQ QTY"
				, WD.CMPL_QTY								AS "COMPLETED QTY"
			FROM		MANH.WORK_ORD_HDR WH
			INNER JOIN	MANH.WORK_ORD_DTL WD
			ON			WH.WORK_ORD_NBR = WD.WORK_ORD_NBR
			INNER JOIN	MANH.ITEM_CBO IC
			ON			WD.ITEM_ID = IC.ITEM_ID
			AND			IC.ActInd = 'Y'

			LEFT JOIN [MANH].[SYS_CODE] SC
			on
			CAST(WH.TRANS_INVN_TYPE AS NVARCHAR (20))=SC.CODE_ID
			AND SC.CODE_TYPE='VAT'
			AND
			SC.ActInd='Y'
			
			LEFT JOIN	OFBULKPER OB 
			ON OB.Item = IC.ITEM_NAME
			WHERE WD.BACK_FLUSH_FLAG = 'Y'
			AND WH.STAT_CODE = 90
		) X
		GROUP BY 
			X.DateKey
			, X.[ORDER TYPE]
			, X.DEPARTMENT
			, X.MACHINE
			--, X.MISC_FLAGS
			) AS T1
WHERE (DateKey IS NOT NULL)
--AND DateKey='20190725'
GROUP BY 
	DateKey
	, ORDER_TYPE
	, MACHINE
	, Vas_Lane_Code
	--, MISC_FLAGS