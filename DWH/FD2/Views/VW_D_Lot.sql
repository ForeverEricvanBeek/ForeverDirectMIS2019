




CREATE VIEW [FD2].[VW_D_Lot]
AS 

SELECT
	 CONCAT(ISNULL(Contract,'FD01'),SKU_Code)			AS Lot_SKU_Code
	, Lot_Code											AS Lot_Code
	, Status_Code										AS Lot_Status_Code
	, Status_Description								AS Lot_Status_Description
	, Received_Date										AS Lot_Received_Date
	, Expire_Date										AS Lot_Expire_Date
	, DATEADD(dd,-100,Expire_Date)						AS Lot_Lock_Date
	, Expire_Flag										AS Lot_Expire_Flag
	, Cost_Price										AS Lot_Cost_Price
FROM (
		SELECT 
			BM.ITEM_ID				AS SKU_Code
			, IP.CONTRACT			AS Contract
			, BM.BATCH_NBR			AS Lot_Code
			, BM.STAT_CODE			AS Status_Code
			, SC.CODE_DESC			AS Status_Description
			, BM.RCVD_DATE			AS Received_Date
			, BM.XPIRE_DATE			AS Expire_Date
			, BM.XPIRE_FLAG			AS Expire_Flag
			, ISNULL(X.INVENTORY_VALUE,0) AS Cost_Price
			, ROW_NUMBER() OVER (PARTITION BY BM.ITEM_ID, BM.BATCH_NBR ORDER BY BM.MOD_DATE_TIME) AS KEYNR
			FROM			MANH.BATCH_MASTER BM 
			LEFT JOIN		MANH.SYS_CODE SC 
			ON				BM.STAT_CODE = SC.CODE_ID 
			AND				SC.CODE_TYPE = '305' 
			AND				SC.REC_TYPE = 'S' 
			AND				SC.ActInd = 'Y'
			LEFT JOIN		MANH.ITEM_CBO IC 
			ON				IC.ITEM_ID = BM.ITEM_ID 
			AND				IC.ActInd = 'Y'
			LEFT JOIN		IFS.INVENTORY_PART_IN_STOCK IP 
			ON				IP.LOT_BATCH_NO = BM.BATCH_NBR 
			AND				IP.PART_NO=IC.ITEM_NAME
			AND				IP.ActInd = 'Y'
			AND				IP.CONTRACT NOT LIKE 'AVE%' 
			LEFT JOIN      (SELECT B.PART_NO,LOT_BATCH_NO,INVENTORY_VALUE FROM (
							SELECT
							A.PART_NO
							, MAX(OBJVERSION) AS DATUM
							FROM          IFS.INVENTORY_PART_UNIT_COST_SUM A
							WHERE A.ActInd = N'Y'
							AND A.CONTRACT NOT LIKE 'AVE%'
							GROUP BY
							A.PART_NO
							) B
							INNER JOIN IFS.INVENTORY_PART_UNIT_COST_SUM C
							ON C.PART_NO = B.PART_NO
							AND C.OBJVERSION = B.DATUM
							AND C.CONTRACT NOT LIKE 'AVE%'
							AND C.ActInd = N'Y')X
							on
							X.PART_NO=IP.PART_NO
							AND
							X.LOT_BATCH_NO=BM.BATCH_NBR 
			  WHERE			BM.ActInd = 'Y'  
     ) A
WHERE  KEYNR = 1 
		

UNION ALL

SELECT  '-1', '-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL