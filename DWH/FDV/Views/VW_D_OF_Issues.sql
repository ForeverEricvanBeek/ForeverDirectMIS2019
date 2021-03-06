﻿


CREATE VIEW [FDV].[VW_D_OF_Issues]
AS

SELECT
	'U_' + CAST(QI.ID AS NVARCHAR(10)) AS OF_Issues_ID
	, CASE 
		WHEN X.DATUM IS NOT NULL THEN X.DATUM
		WHEN LP.LAST_UPDATED_DTTM IS NOT NULL THEN LP.LAST_UPDATED_DTTM
		ELSE QI.Datum END AS OF_Issues_Date
	, ISNULL(LP.TC_ORDER_ID,'-1')	AS OF_Issues_Order_ID
	, ISNULL(QI.oLPN_Nr,'-1')		AS OF_Issues_OLPN_ID
	, CASE 
			WHEN CO.CODE_DESC IS NULL 
			THEN LP.CONTAINER_SIZE
			ELSE CO.CODE_DESC
	END								AS OF_Issues_Box_Type
	, ISNULL(QI.Allocated_Item,'-1')AS OF_Issues_Allocated_Item
	, ISNULL(QI.Picked_Item,'-1')	AS OF_Issues_Picked_Item
	, ISNULL(QI.Location_Allocated,'-1')AS OF_Issues_Location_Allocated
	, ISNULL(QI.Location_Picked,'-1')AS OF_Issues_Location_Picked
	, ISNULL(QI.Allocated_Qty,NULL)	AS OF_Issues_Allocated_Qty
	, ISNULL(QI.Qty,NULL)			AS OF_Issues_Qty
	, ISNULL(PS.Picker_ID,'-1')		AS OF_Issues_Picker_ID
	, PS.Picker_Name				AS OF_Issues_Picker_Name
	, ISNULL(QI.QA_operator,'-1')	AS OF_Issues_QA_operator
	, CASE
		WHEN QI.Error1 IS NOT NULL THEN 
			CASE
				WHEN QI.Error2 LIKE	'Damage%' 
				THEN 'Damage'
				ELSE QI.Error1
				END + 
			CASE 
				WHEN QI.Error2 IS NOT NULL AND QI.Error2 NOT LIKE 'Damage%' THEN ' - ' + QI.Error2 
				ELSE '' 
			END 
	END	AS OF_Issues_Error
	, 'User'						AS OF_Issues_Error_Type
	, QI.Comments					AS OF_Issues_Comments
FROM		WEB.OF_Issues		AS QI
LEFT JOIN	(SELECT MAX(PT.CREATE_DATE_TIME) AS DATUM, PT.CNTR_NBR FROM MANH.PROD_TRKG_TRAN PT WHERE PT.MENU_OPTN_NAME IN ('PackCD','Pack Cubed Directed') GROUP BY PT.CNTR_NBR) X 
ON			X.CNTR_NBR = QI.oLPN_Nr
LEFT JOIN	(
				SELECT 
				   /*MAX(CASE WHEN P2.REF_FIELD_1 IS NULL THEN P2.USER_ID ELSE RIGHT(P2.REF_FIELD_1,5) END) AS PICKID
				   , MAX(P2.CREATE_DATE_TIME) AS CREATE_DATE_TIME*/
				   CASE WHEN P2.REF_FIELD_1 IS NULL THEN P2.USER_ID ELSE RIGHT(P2.REF_FIELD_1,5) END AS PICKID
				   , dateadd(mi, datediff(mi, 0, P2.BEGIN_DATE), 0) AS CREATE_DATE_TIME
				   , P2.CNTR_NBR
				   , P2.LINE_ITEM_ID
				   , LH.DSP_LOCN
				   , RANK() OVER (PARTITION BY P2.CNTR_NBR, P2.LINE_ITEM_ID, LH.DSP_LOCN ORDER BY P2.CNTR_NBR, P2.LINE_ITEM_ID, LH.DSP_LOCN, P2.TRAN_NBR) AS NUMBER
				 FROM		MANH.PROD_TRKG_TRAN P2 
				 LEFT JOIN	MANH.LOCN_HDR LH 
				 ON			LH.LOCN_ID = P2.FROM_LOCN 
				 AND		LH.ActInd = 'Y' 
				 WHERE		P2.NBR_UNITS > 0
				 AND		P2.MENU_OPTN_NAME <> 'RF QA incomplete'
				 GROUP BY
				 CASE WHEN P2.REF_FIELD_1 IS NULL THEN P2.USER_ID ELSE RIGHT(P2.REF_FIELD_1,5) END 
				   , dateadd(mi, datediff(mi, 0, P2.BEGIN_DATE), 0)
				   , P2.CNTR_NBR
				   , P2.LINE_ITEM_ID
				   , LH.DSP_LOCN
				   , P2.TRAN_NBR
				 /*GROUP BY 
				    P2.CNTR_NBR
					, P2.LINE_ITEM_ID
					, LH.DSP_LOCN*/
			) Y
ON			Y.LINE_ITEM_ID = QI.Line_ID
AND			Y.CNTR_NBR = QI.oLPN_Nr
AND			Y.DSP_LOCN = QI.Location_Allocated
AND			Y.CREATE_DATE_TIME < QI.Created_Date
AND			Y.PICKID IS NOT NULL
AND			Y.NUMBER = 1
LEFT JOIN	WEB.Picker				AS PS
ON			PS.Picker_ID = ISNULL(QI.Picker_ID,Y.PICKID)
AND			PS.ActInd = 'Y'
LEFT JOIN	dbo.VW_T_LPN			AS LP
ON			LP.TC_LPN_ID = QI.oLPN_Nr
AND			LP.ActInd = 'Y'
LEFT JOIN	MANH.SYS_CODE CO 
ON			CO.CODE_ID = ISNULL(LP.CONTAINER_SIZE, '000')
AND			CO.REC_TYPE = 'C' 
AND			CO.CODE_TYPE = 'STU'
AND			CO.ActInd = 'Y'
/*LEFT JOIN	(
			  SELECT SYS_CODE.*, SUBSTRING(MISC_FLAGS,1,10) / 1000 AS MIN_WEIGHT, SUBSTRING(MISC_FLAGS,11,10) / 1000 AS MAX_WEIGHT
			  FROM MANH.SYS_CODE
			  WHERE REC_TYPE = 'C' AND CODE_TYPE = 'SW1'
			  AND ActInd = 'Y'
			  UNION ALL
			  SELECT SYS_CODE.*, SUBSTRING(MISC_FLAGS,1,10) / 1000 AS MIN_WEIGHT, SUBSTRING(MISC_FLAGS,11,10) / 1000 AS MAX_WEIGHT
			  FROM MANH.SYS_CODE
			  WHERE REC_TYPE = 'C' AND CODE_TYPE = 'SW2'
			  AND ActInd = 'Y'
			) SC ON SC.CODE_ID = CO.CODE_ID*/
WHERE QI.ActInd = 'Y'
AND QI.Error1 <> 'NotPicked'
AND QI.Created_Date >= DATEADD(YEAR,-1,GETDATE())

UNION ALL

SELECT DISTINCT
	LD.INSTRTN_CODE_1 + '_' + LP.TC_LPN_ID + '_' + IC.ITEM_NAME
	, ISNULL(X.DATUM, LP.LAST_UPDATED_DTTM)AS OF_Issues_Date
	, ISNULL(LP.TC_ORDER_ID,'-1')	AS OF_Issues_Order_ID
	, ISNULL(LP.TC_LPN_ID,'-1')		AS OF_Issues_OLPN_ID
	, CASE 
			WHEN CO.CODE_DESC IS NULL 
			THEN LP.CONTAINER_SIZE
			ELSE CO.CODE_DESC
	END								AS OF_Issues_Box_Type
	, ISNULL(IC.ITEM_NAME,'-1')		AS OF_Issues_Allocated_Item
	, '-1'							AS OF_Issues_Picked_Item
	, '-1'							AS OF_Issues_Location_Allocated
	, '-1'							AS OF_Issues_Location_Picked
	, NULL							AS OF_Issues_Allocated_Qty
	, NULL							AS OF_Issues_Qty
	, '-1'							AS OF_Issues_Picker_ID
	, '-1'							AS OF_Issues_Picker_Name
	, '-1'							AS OF_Issues_QA_operator
	, CASE
         WHEN LD.INSTRTN_CODE_1 = 'E' THEN 'Expiration Date Issue'
         WHEN LD.INSTRTN_CODE_1 = 'L' THEN 'iLPN not on correct location'
         WHEN LD.INSTRTN_CODE_1 = 'S' THEN 'iLPN Status Issue'
     END							AS OF_Issues_Error
	, 'System'						AS OF_Issues_Error_Type
	, LD.INSTRTN_CODE_1				AS OF_Issues_Comments

FROM		MANH.LPN_DETAIL		AS LD
INNER JOIN	dbo.VW_T_LPN			AS LP
ON			LP.LPN_ID = LD.LPN_ID
AND			LP.ActInd = 'Y'
AND			LP.CREATED_DTTM >= DATEADD(YEAR,-1,GETDATE())
INNER JOIN	MANH.ITEM_CBO		AS IC
ON			IC.ITEM_ID = LD.ITEM_ID
LEFT JOIN	(SELECT MAX(PT.CREATE_DATE_TIME) AS DATUM, PT.CNTR_NBR FROM MANH.PROD_TRKG_TRAN PT WHERE PT.MENU_OPTN_NAME IN ('PackCD','Pack Cubed Directed') GROUP BY PT.CNTR_NBR) X 
ON			X.CNTR_NBR = LP.TC_LPN_ID 
LEFT JOIN	MANH.SYS_CODE CO 
ON			CO.CODE_ID = ISNULL(LP.CONTAINER_SIZE, '000') 
AND			CO.REC_TYPE = 'C' 
AND			CO.CODE_TYPE = 'STU'
AND			CO.ActInd = 'Y'
LEFT JOIN	(
			  SELECT SYS_CODE.*, SUBSTRING(MISC_FLAGS,1,10) / 1000 AS MIN_WEIGHT, SUBSTRING(MISC_FLAGS,11,10) / 1000 AS MAX_WEIGHT
			  FROM MANH.SYS_CODE
			  WHERE REC_TYPE = 'C' AND CODE_TYPE = 'SW1'
			  AND ActInd = 'Y'
			  UNION ALL
			  SELECT SYS_CODE.*, SUBSTRING(MISC_FLAGS,1,10) / 1000 AS MIN_WEIGHT, SUBSTRING(MISC_FLAGS,11,10) / 1000 AS MAX_WEIGHT
			  FROM MANH.SYS_CODE
			  WHERE REC_TYPE = 'C' AND CODE_TYPE = 'SW2'
			  AND ActInd = 'Y'
			) SC ON SC.CODE_ID = CO.CODE_ID
WHERE LD.INSTRTN_CODE_1 IS NOT NULL
AND LD.ActInd = 'Y'

UNION ALL

SELECT DISTINCT
	'W_' + LP.TC_LPN_ID
	, ISNULL(X.DATUM, LP.LAST_UPDATED_DTTM)AS OF_Issues_Date
	, ISNULL(LP.TC_ORDER_ID,'-1')	AS OF_Issues_Order_ID
	, ISNULL(LP.TC_LPN_ID,'-1')		AS OF_Issues_OLPN_ID
	, CASE 
			WHEN CO.CODE_DESC IS NULL 
			THEN LP.CONTAINER_SIZE
			ELSE CO.CODE_DESC
	END								AS OF_Issues_Box_Type
	, '-1'							AS OF_Issues_Allocated_Item
	, '-1'							AS OF_Issues_Picked_Item
	, '-1'							AS OF_Issues_Location_Allocated
	, '-1'							AS OF_Issues_Location_Picked
	, NULL							AS OF_Issues_Allocated_Qty
	, NULL							AS OF_Issues_Qty
	, '-1'							AS OF_Issues_Picker_ID
	, NULL							AS OF_Issues_Picker_Name
	, '-1'							AS OF_Issues_QA_operator
	, 'Weight'						AS OF_Issues_Error
	, 'System'						AS OF_Issues_Error_Type
	, CAST(LP.WEIGHT - LP.ESTIMATED_WEIGHT AS NVARCHAR(MAX)) AS OF_Issues_Comments
FROM dbo.VW_T_LPN	AS LP
LEFT JOIN			(SELECT MAX(PT.CREATE_DATE_TIME) AS DATUM, PT.CNTR_NBR FROM MANH.PROD_TRKG_TRAN PT WHERE PT.MENU_OPTN_NAME = 'RF Anchor oLPN Pltz' GROUP BY PT.CNTR_NBR) X 
ON					X.CNTR_NBR = LP.TC_LPN_ID 
INNER JOIN			MANH.ORDERS AS OD
ON					LP.ORDER_ID = OD.ORDER_ID
AND					OD.ORDER_TYPE = 'OF'
AND					OD.ActInd = 'Y'
AND					OD.DO_STATUS = '190'
AND					OD.CREATED_DTTM >= DATEADD(YEAR,-1,GETDATE())
LEFT JOIN			MANH.SYS_CODE CO 
ON					CO.CODE_ID = ISNULL(LP.CONTAINER_SIZE, '000') 
AND					CO.REC_TYPE = 'C' 
AND					CO.CODE_TYPE = 'STU'
AND					CO.ActInd = 'Y'
LEFT JOIN (
  SELECT SYS_CODE.*, SUBSTRING(MISC_FLAGS,1,10) / 1000 AS MIN_WEIGHT, SUBSTRING(MISC_FLAGS,11,10) / 1000 AS MAX_WEIGHT
  FROM MANH.SYS_CODE
  WHERE REC_TYPE = 'C' AND CODE_TYPE = 'SW1'
  AND ActInd = 'Y'
  UNION ALL
  SELECT SYS_CODE.*, SUBSTRING(MISC_FLAGS,1,10) / 1000 AS MIN_WEIGHT, SUBSTRING(MISC_FLAGS,11,10) / 1000 AS MAX_WEIGHT
  FROM MANH.SYS_CODE
  WHERE REC_TYPE = 'C' AND CODE_TYPE = 'SW2'
  AND ActInd = 'Y'
) SC ON SC.CODE_ID = CO.CODE_ID
WHERE				LP.ActInd = 'Y'
AND					LP.INBOUND_OUTBOUND_INDICATOR = 'O' 
AND					LP.LPN_FACILITY_STATUS <> '99'
AND					CASE 
					   WHEN (LP.ESTIMATED_WEIGHT + SC.MIN_WEIGHT - LP.WEIGHT) < 0 THEN 1
					   WHEN (LP.ESTIMATED_WEIGHT - SC.MAX_WEIGHT - LP.WEIGHT) > 0 THEN 1
						ELSE 0
					END	= 1
UNION ALL

SELECT DISTINCT
	'D_' + LP.TC_LPN_ID + '_' + IC.ITEM_NAME
	, ISNULL(X.DATUM, LP.LAST_UPDATED_DTTM)AS OF_Issues_Date
	, ISNULL(LP.TC_ORDER_ID,'-1')	AS OF_Issues_Order_ID
	, ISNULL(LP.TC_LPN_ID,'-1')		AS OF_Issues_OLPN_ID
	, CASE 
			WHEN CO.CODE_DESC IS NULL 
			THEN LP.CONTAINER_SIZE
			ELSE CO.CODE_DESC
	END								AS OF_Issues_Box_Type
	, ISNULL(IC.ITEM_NAME,'-1')		AS OF_Issues_Allocated_Item
	, '-1'							AS OF_Issues_Picked_Item
	, '-1'							AS OF_Issues_Location_Allocated
	, '-1'							AS OF_Issues_Location_Picked
	, NULL							AS OF_Issues_Allocated_Qty
	, NULL							AS OF_Issues_Qty
	, '-1'							AS OF_Issues_Picker_ID
	, '-1'							AS OF_Issues_Picker_Name
	, '-1'							AS OF_Issues_QA_operator
	, CASE WHEN UN.UN_NUMBER_ID IS NULL THEN N'Divert' ELSE N'Dangerous Goods' END AS OF_Issues_Error
	, 'System'						AS OF_Issues_Error_Type
	, CAST(UN.UN_NUMBER	AS VARCHAR(10))	AS OF_Issues_Comments
FROM dbo.VW_T_LPN	AS LP
LEFT JOIN			(SELECT MAX(PT.CREATE_DATE_TIME) AS DATUM, PT.CNTR_NBR FROM MANH.PROD_TRKG_TRAN PT WHERE PT.MENU_OPTN_NAME = 'RF Anchor oLPN Pltz' GROUP BY PT.CNTR_NBR) X 
ON					X.CNTR_NBR = LP.TC_LPN_ID 
INNER JOIN			MANH.ORDERS AS OD
ON					LP.ORDER_ID = OD.ORDER_ID
AND					OD.ORDER_TYPE = 'OF'
AND					OD.ActInd = 'Y'
AND					OD.DO_STATUS = '190'
AND					OD.CREATED_DTTM >= DATEADD(YEAR,-1,GETDATE())
INNER JOIN			MANH.LPN_DETAIL LD
ON					LD.LPN_ID = LP.LPN_ID
AND					LD.ActInd = 'Y'
INNER JOIN			MANH.ITEM_CBO IC
ON					IC.ITEM_ID = LD.ITEM_ID
AND					IC.ITEM_QUALITY_CODE = 1
AND					IC.ActInd = 'Y'
LEFT JOIN			MANH.UN_NUMBER UN
ON					UN.UN_NUMBER_ID = IC.UN_NUMBER_ID
AND					UN.ActInd = 'Y'
LEFT JOIN			MANH.SYS_CODE CO 
ON					CO.CODE_ID = ISNULL(LP.CONTAINER_SIZE, '000') 
AND					CO.REC_TYPE = 'C' 
AND					CO.CODE_TYPE = 'STU'
AND					CO.ActInd = 'Y'
LEFT JOIN (
  SELECT SYS_CODE.*, SUBSTRING(MISC_FLAGS,1,10) / 1000 AS MIN_WEIGHT, SUBSTRING(MISC_FLAGS,11,10) / 1000 AS MAX_WEIGHT
  FROM MANH.SYS_CODE
  WHERE REC_TYPE = 'C' AND CODE_TYPE = 'SW1'
  AND ActInd = 'Y'
  UNION ALL
  SELECT SYS_CODE.*, SUBSTRING(MISC_FLAGS,1,10) / 1000 AS MIN_WEIGHT, SUBSTRING(MISC_FLAGS,11,10) / 1000 AS MAX_WEIGHT
  FROM MANH.SYS_CODE
  WHERE REC_TYPE = 'C' AND CODE_TYPE = 'SW2'
  AND ActInd = 'Y'
) SC ON SC.CODE_ID = CO.CODE_ID
WHERE				LP.ActInd = 'Y'
AND					LP.INBOUND_OUTBOUND_INDICATOR = 'O' 
AND					LP.LPN_FACILITY_STATUS <> '99'

--UNION ALL

--SELECT '-1','99991231','-1','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL