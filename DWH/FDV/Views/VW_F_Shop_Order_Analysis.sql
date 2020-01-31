﻿







CREATE VIEW [FDV].[VW_F_Shop_Order_Analysis] AS
(
 SELECT 
		IH.TRANSACTION_ID			AS  TRANSACTION_ID,
       IH.ACCOUNTING_ID				AS  ACCOUNTING_ID,
       IH.DATE_TIME_CREATED			AS  DATE_CREATED,
       IH.ORDER_NO					AS  ORDER_NO,
       IH.RELEASE_NO				AS  RELEASE_NO,
       IH.SEQUENCE_NO				AS  SEQUENCE_NO,
       IH.LINE_ITEM_NO				AS  LINE_ITEM_NO,
       ''							AS  OPERATION_NO,
	   IH.CONTRACT					AS  CONTRACT,
       IH.PART_NO					AS  PART_NO,
       IH.TRANSACTION_CODE			AS  TRANSACTION_CODE,
	   IC.COST_BUCKET_ID			AS  COST_BUCKET_ID,
	   IC.COST_BUCKET_PUBLIC_TYPE	AS  COST_BUCKET_PUBLIC_TYPE,
       IC.COMPANY					AS  COMPANY,
       IC.COST_SOURCE_ID			AS  COST_SOURCE_ID,
       IC.BUCKET_POSTING_GROUP_ID	AS  BUCKET_POSTING_GROUP_ID,
       IC.ACCOUNTING_YEAR			AS  ACCOUNTING_YEAR,  
       CASE WHEN UPPER(IC.COST_BUCKET_PUBLIC_TYPE) = 'MATOH' AND UPPER(IC.ADDED_TO_THIS_TRANSACTION) = 'TRUE' AND IH.DIRECTION = '-' 
			THEN -IC.UNIT_COST * IH.QUANTITY 
			ELSE IC.UNIT_COST * IH.QUANTITY
		END AS LEVEL_COST,
	
	   CASE WHEN IH.DIRECTION = '-'
			THEN -IC.UNIT_COST * IH.QUANTITY  
			ELSE IC.UNIT_COST * IH.QUANTITY
		END AS ACCUM_COST,
		IH.CONFIGURATION_ID               CONFIGURATION_ID,
		IH.LOT_BATCH_NO                   LOT_BATCH_NO,
		IH.SERIAL_NO                      SERIAL_NO,
		NULL				            WORK_CENTER_NO,
		CASE WHEN IH.DIRECTION = '-'
			THEN -IH.QUANTITY ELSE IH.QUANTITY
		END AS QUANTITY,
		'INVENTORY' as ROW_TYPE,
		IH.OBJID,
		IH.OBJVERSION
FROM IFS.INVENTORY_TRANSACTION_HIST IH
	INNER JOIN  IFS.INVENTORY_TRANSACTION_COST IC
	ON IH.TRANSACTION_ID = IC.TRANSACTION_ID
	AND IC.ActInd	= 'Y'
WHERE IH.ActInd		= 'Y'
	AND   IH.DIRECTION IN ('+','-')
    AND   UPPER(IH.TRANSACTION_CODE) NOT IN ('OOREC','SUNREC')
    AND   UPPER(IH.ORDER_TYPE) = 'SHOP ORDER'
UNION ALL
SELECT /*+ ORDERED USE_NL(OTC) INDEX (OTC OPERATION_TRANSACTION_COST_PK) */
       OH.TRANSACTION_ID                 TRANSACTION_ID,
       OH.ACCOUNTING_ID                  ACCOUNTING_ID,
       OH.DATED                          DATE_CREATED,
       OH.ORDER_NO                       ORDER_NO,
       OH.RELEASE_NO                     RELEASE_NO,
       OH.SEQUENCE_NO                    SEQUENCE_NO,
       ''			                     LINE_ITEM_NO,
	   OH.OPERATION_NO                   OPERATION_NO,
       OH.CONTRACT                       CONTRACT,
       OH.PART_NO                        PART_NO,
       OH.TRANSACTION_CODE               TRANSACTION_CODE,
       OT.COST_BUCKET_ID                COST_BUCKET_ID,
       OT.COST_BUCKET_PUBLIC_TYPE       COST_BUCKET_PUBLIC_TYPE,
       OT.COMPANY                       COMPANY,
       OT.COST_SOURCE_ID                COST_SOURCE_ID,
       OT.BUCKET_POSTING_GROUP_ID       BUCKET_POSTING_GROUP_ID,
       OT.ACCOUNTING_YEAR               ACCOUNTING_YEAR,
       CASE 
			WHEN UPPER(WC.WORK_CENTER_CODE_DB) = 'I'  AND OH.TRANSACTION_CODE IN ('LABOR_RPT', 'OPFEED', 'TO4-LABOR', 'TO4-MACH') THEN   OT.TOTAL_COST 
			WHEN UPPER(WC.WORK_CENTER_CODE_DB) = 'I'  AND OH.TRANSACTION_CODE IN ('UNOPFEED', 'TO4-NLABOR', 'TO4-NMACH') THEN   -OT.TOTAL_COST
			WHEN UPPER(OH.TRANSACTION_CODE) IN ('SUBCONDIF', 'UNSUBCONTR') AND UPPER(WC.WORK_CENTER_CODE_DB) = 'O' AND UPPER(OH.ORDER_TYPE) = 'SHOP ORDER' THEN -OT.TOTAL_COST 	
			--WHEN UPPER(OH.TRANSACTION_CODE) IN ('SUBCONDIF+', 'SUBCONDIF-') AND UPPER(WC.WORK_CENTER_CODE_DB) = 'O' AND UPPER(OH.ORDER_TYPE) = 'SHOP ORDER' THEN OT.TOTAL_COST 	
			ELSE OT.TOTAL_COST
	   END LEVEL_COST, 
	  
	  CASE 
			WHEN UPPER(WC.WORK_CENTER_CODE_DB) = 'I'   AND OH.TRANSACTION_CODE IN ('LABOR_RPT', 'OPFEED', 'TO4-LABOR', 'TO4-MACH') THEN    OT.TOTAL_COST 
			WHEN UPPER(WC.WORK_CENTER_CODE_DB) = 'I'  AND OH.TRANSACTION_CODE IN ('UNOPFEED', 'TO4-NLABOR', 'TO4-NMACH') THEN   -OT.TOTAL_COST 	
			WHEN UPPER(OH.TRANSACTION_CODE) IN ('SUBCONDIF', 'UNSUBCONTR') AND UPPER(WC.WORK_CENTER_CODE_DB) = 'O' AND   OH.REVERSED_FLAG_DB = 'N'		THEN   -OT.TOTAL_COST 	
			--WHEN UPPER(OH.TRANSACTION_CODE) IN ('SUBCONDIF+', 'SUBCONDIF-') AND UPPER(WC.WORK_CENTER_CODE_DB) = 'O'  AND   OH.REVERSED_FLAG_DB = 'N'		THEN    OT.TOTAL_COST 	
		ELSE OT.TOTAL_COST
	  END ACCUM_COST, 
       NULL                              CONFIGURATION_ID,
       NULL                              LOT_BATCH_NO,
       NULL                              SERIAL_NO,
       OH.WORK_CENTER_NO                 WORK_CENTER_NO,
	  CASE 
			WHEN UPPER(WC.WORK_CENTER_CODE_DB) = 'I'  AND OH.TRANSACTION_CODE IN ('LABOR_RPT', 'OPFEED', 'TO4-LABOR', 'TO4-MACH') THEN    OH.QTY_COMPLETE 
			WHEN UPPER(WC.WORK_CENTER_CODE_DB) = 'I'  AND OH.TRANSACTION_CODE IN ('UNOPFEED', 'TO4-NLABOR', 'TO4-NMACH') THEN   -OH.QTY_COMPLETE 	
			WHEN UPPER(OH.TRANSACTION_CODE) IN ('SUBCONDIF', 'UNSUBCONTR') AND UPPER(WC.WORK_CENTER_CODE_DB) = 'O' AND   OH.REVERSED_FLAG_DB = 'N'	THEN   -OH.QTY_COMPLETE 	
			--WHEN UPPER(OH.TRANSACTION_CODE) IN ('SUBCONDIF+', 'SUBCONDIF-') AND UPPER(WC.WORK_CENTER_CODE_DB) = 'O'  AND   OH.REVERSED_FLAG_DB = 'N'	THEN	OH.QTY_COMPLETE 	
		ELSE OH.QTY_COMPLETE
	  END QUANTITY, 
	CASE WHEN UPPER(WC.WORK_CENTER_CODE_DB) = 'I'  AND OH.TRANSACTION_CODE IN ('LABOR_RPT', 'OPFEED', 'TO4-LABOR', 'TO4-MACH') THEN 'OPERATION'
		 WHEN UPPER(WC.WORK_CENTER_CODE_DB) = 'I' AND OH.TRANSACTION_CODE IN ('UNOPFEED', 'TO4-NLABOR', 'TO4-NMACH') THEN  'OPERATION'
		 WHEN UPPER(OH.TRANSACTION_CODE) IN ('SUBCONDIF', 'UNSUBCONTR', 'SUBCONDIF+', 'SUBCONDIF-') AND UPPER(WC.WORK_CENTER_CODE_DB) = 'O'  AND   OH.REVERSED_FLAG_DB = 'N'	
	THEN 'SUBCONTRACTING'  END  ROW_TYPE,
	   OH.OBJID,
	   OH.OBJVERSION
FROM IFS.OPERATION_HISTORY OH
INNER JOIN IFS.OPERATION_TRANSACTION_COST OT
	ON OH.TRANSACTION_ID = OT.TRANSACTION_ID
	AND		OT.ActInd = 'Y'
INNER JOIN IFS.WORK_CENTER WC
	ON  OH.WORK_CENTER_NO = WC.WORK_CENTER_NO
	AND	OH.CONTRACT       = WC.CONTRACT
	AND	WC.ActInd		= 'Y'
WHERE	OH.ActInd		= 'Y'
AND WC.WORK_CENTER_CODE_DB IN ('I', 'O')
AND OH.TRANSACTION_CODE IN ( 'LABOR_RPT', 'OPFEED', 'TO4-LABOR', 'TO4-MACH', 'UNOPFEED', 'TO4-NLABOR', 'TO4-NMACH', 'SUBCONDIF', 'UNSUBCONTR', 'SUBCONDIF+', 'SUBCONDIF-')
AND OH.ORDER_TYPE = 'SHOP ORDER'
UNION ALL
SELECT /*+ ORDERED USE_NL(SOTC) INDEX (SOTC SHOP_ORDER_OH_TRANS_COST_PK) */
       SH.TRANSACTION_ID               TRANSACTION_ID,
       SH.ACCOUNTING_ID                ACCOUNTING_ID,
       SH.DATED                        DATE_CREATED,
       SO.ORDER_NO                       ORDER_NO,
       SO.RELEASE_NO                     RELEASE_NO,
       SO.SEQUENCE_NO                    SEQUENCE_NO,
       ''				                   LINE_ITEM_NO,
       ''			                   OPERATION_NO,
       SH.CONTRACT                     CONTRACT,
       SH.PART_NO                      PART_NO,
       SH.TRANSACTION_CODE             TRANSACTION_CODE,
       SC.COST_BUCKET_ID               COST_BUCKET_ID,
       SC.COST_BUCKET_PUBLIC_TYPE      COST_BUCKET_PUBLIC_TYPE,
       SC.COMPANY                      COMPANY,
       SC.COST_SOURCE_ID               COST_SOURCE_ID,
       SC.BUCKET_POSTING_GROUP_ID      BUCKET_POSTING_GROUP_ID,
       SC.ACCOUNTING_YEAR              ACCOUNTING_YEAR,
			CASE WHEN SH.TRANSACTION_CODE = 'UNSOSTART' THEN -SC.TOTAL_COST ELSE SC.TOTAL_COST END LEVEL_COST,
			CASE WHEN SH.TRANSACTION_CODE = 'UNSOSTART' THEN -SC.TOTAL_COST ELSE SC.TOTAL_COST END ACCUM_COST,
			NULL                              CONFIGURATION_ID,
			NULL                              LOT_BATCH_NO,
			NULL                              SERIAL_NO,
			NULL                              WORK_CENTER_NO,
	    CASE WHEN SH.TRANSACTION_CODE = 'UNSOSTART' THEN -SC.TOTAL_COST ELSE SC.TOTAL_COST END QUANTITY,
       'GENERAL OH'                      ROW_TYPE,
        SO.OBJID			AS			 OBJID,
		SO.OBJVERSION		AS			 OBJVERSION

FROM IFS.SHOP_ORD SO
INNER JOIN  IFS.SHOP_ORDER_OH_HISTORY SH
	ON SH.ORDER_NO = SO.ORDER_NO AND SH.RELEASE_NO = SO.RELEASE_NO AND SH.SEQUENCE_NO = SO.SEQUENCE_NO
	AND SH.ActInd = 'Y'
INNER JOIN  IFS.SHOP_ORDER_OH_TRANS_COST SC
	ON    SH.TRANSACTION_ID = SC.TRANSACTION_ID
	AND SC.ActInd = 'Y'
WHERE  SO.ActInd = 'Y' 
)