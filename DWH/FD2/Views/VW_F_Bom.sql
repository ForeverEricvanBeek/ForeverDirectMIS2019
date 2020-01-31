﻿

CREATE VIEW [FD2].[VW_F_Bom]
AS

WITH CTE_1 AS (
	SELECT
		CONCAT(MH.CONTRACT,CB.ITEM_ID)	AS PART_CODE
		, MH.EFF_PHASE_IN_DATE			AS Phase_In_Date
		, MH.EFF_PHASE_OUT_DATE			AS Phase_Out_Date
		, MH.ENG_CHG_LEVEL				AS Revision_NR
	FROM		IFS.MANUF_STRUCTURE_HEAD MH
	INNER JOIN	(SELECT MAX(ENG_CHG_LEVEL) AS ENG_CHG_LEVEL, PART_NO FROM IFS.MANUF_STRUCTURE_HEAD WHERE ActInd = 'Y' GROUP BY PART_NO) M1
	ON			M1.PART_NO = MH.PART_NO
	AND			M1.ENG_CHG_LEVEL = MH.ENG_CHG_LEVEL
	INNER JOIN	MANH.ITEM_CBO CB
	ON			CB.ITEM_NAME = MH.PART_NO
	AND			CB.ActInd = 'Y'
	WHERE		MH.ActInd = 'Y'
	AND			MH.CONTRACT = 'FD01'
	
)

, CTE_2 AS (
	SELECT
		CONCAT(MS1.CONTRACT,ISNULL(CB.ITEM_ID,'-1'))			AS Sales_SKU_Code
		, CONCAT(MS1.CONTRACT,ISNULL(CB1.ITEM_ID,'-1')) 		AS Component_L1_SKU_Code
		, CONCAT(MS2.CONTRACT,ISNULL(CB2.ITEM_ID,'-1')) 		AS Component_L2_SKU_Code
		, CONCAT(MS3.CONTRACT,ISNULL(CB3.ITEM_ID,'-1')) 		AS Component_L3_SKU_Code
		, MS1.QTY_PER_ASSEMBLY									AS QTY_PER_ASSEMBLY
		, MS1.ALTERNATIVE_NO									AS ANO1
		, CASE WHEN SP.USE_SITE_SPECIFIC = 'True' THEN 'BK' WHEN SP.USE_SITE_SPECIFIC = 'False' THEN 'OF' END AS SALE_TYPE
	FROM		IFS.MANUF_STRUCTURE MS1
	LEFT JOIN	MANH.ITEM_CBO CB
	ON			CB.ITEM_NAME = MS1.PART_NO
	AND			CB.ActInd = 'Y'
	LEFT JOIN	MANH.ITEM_CBO CB1
	ON			CB1.ITEM_NAME = MS1.COMPONENT_PART
	AND			CB1.ActInd = 'Y'
	LEFT JOIN	IFS.MANUF_STRUCTURE MS2 
	ON			MS2.PART_NO = MS1.COMPONENT_PART
	AND			MS2.ENG_CHG_LEVEL = MS1.ENG_CHG_LEVEL
	AND			MS2.ActInd = 'Y'
	AND			MS2.CONTRACT= 'FD01'
	LEFT JOIN	MANH.ITEM_CBO CB2
	ON			CB2.ITEM_NAME = MS2.COMPONENT_PART
	AND			CB2.ActInd = 'Y'
	LEFT JOIN	IFS.MANUF_STRUCTURE MS3
	ON			MS3.PART_NO = MS2.COMPONENT_PART
	AND			MS3.ActInd= 'Y'
	AND			MS3.CONTRACT = 'FD01'
	LEFT JOIN	MANH.ITEM_CBO CB3
	ON			CB3.ITEM_NAME = MS3.COMPONENT_PART
	AND			CB3.ActInd = 'Y'
	LEFT JOIN	IFS.SALES_PART SP
	ON			SP.PART_NO = MS1.PART_NO
	AND			SP.ActInd = 'Y'
	WHERE		MS1.ActInd = 'Y'
	AND			MS1.CONTRACT = 'FD01'
	AND			MS1.ALTERNATIVE_NO = '*'
	
	GROUP BY
		CONCAT(MS1.CONTRACT,ISNULL(CB.ITEM_ID,'-1'))																		
		, CONCAT(MS1.CONTRACT,ISNULL(CB1.ITEM_ID,'-1'))		
		, CONCAT(MS2.CONTRACT,ISNULL(CB2.ITEM_ID,'-1'))		
		, CONCAT(MS3.CONTRACT,ISNULL(CB3.ITEM_ID,'-1'))	
		, MS1.QTY_PER_ASSEMBLY																							
		, MS1.ALTERNATIVE_NO																								
		, CASE WHEN SP.USE_SITE_SPECIFIC = 'True' THEN 'BK' WHEN SP.USE_SITE_SPECIFIC = 'False' THEN 'OF' END							
)

SELECT 
	C2.Sales_SKU_Code						AS Sales_SKU_Code
	, C2.Component_L1_SKU_Code				AS Component_L1_SKU_Code
	, C2.Component_L2_SKU_Code				AS Component_L2_SKU_Code
	, C2.Component_L3_SKU_Code				AS Component_L3_SKU_Code
	, CASE 
		WHEN C2.Component_L3_SKU_Code <>'-1' THEN C2.Component_L3_SKU_Code
		WHEN C2.Component_L2_SKU_Code <>'-1' THEN C2.Component_L2_SKU_Code
		WHEN C2.Component_L1_SKU_Code <>'-1' THEN C2.Component_L1_SKU_Code
		ELSE N'-1'
	END										AS Purchase_SKU_Code
	, C1.Phase_In_Date						AS Phase_In_Date
	, C1.Phase_Out_Date						AS Phase_Out_Date
	, C1.Revision_NR						AS Revision_NR
	, ISNULL(C2.SALE_TYPE,'-1')				AS Sale_Type
	, C2.QTY_PER_ASSEMBLY					AS QTY_Per_Assembley
FROM		CTE_2 C2
INNER JOIN	CTE_1 C1
ON			C1.PART_CODE = C2.Sales_SKU_Code