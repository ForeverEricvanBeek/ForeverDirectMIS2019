


CREATE VIEW [FDV].[VW_F_Stock_Netto]
AS
--	netto stock
SELECT
                           YEAR(GETDATE() - 1) * 10000 + MONTH(GETDATE() - 1) * 100 + DAY(GETDATE() - 1) AS DateKey                    
                    ,     IC.ITEM_ID                               AS SKU_Code                    
					,     Lot_Code                             AS Lot_Code
					,     ILPN_ID                                     AS ILPN_ID                               
					,     Aging                                    AS Aging
					,     Location_Display_Location  AS Location_Display_Location
					,	  SUM(X.ON_HAND_QTY)          AS Number_Of_Netto_Units
					,	  SUM(X.WM_ALLOCATED_QTY)     AS Number_Of_Allocated_Units
					,	 ISNULL(SUM(X.ON_HAND_QTY) - SUM(X.WM_ALLOCATED_QTY),0) AS Number_Of_On_Hand_Units
FROM MANH.ITEM_CBO IC
LEFT JOIN (
      SELECT
              
                WI.BATCH_NBR AS Lot_Code
              , DATEDIFF(MM, GETDATE(), BM.XPIRE_DATE) AS Aging
              , WI.LPN_ID AS ILPN_ID
              , LH.DSP_LOCN AS Location_Display_Location
              , WI.ITEM_ID
              , WI.WM_ALLOCATED_QTY
              , WI.ON_HAND_QTY

       
         FROM MANH.WM_INVENTORY WI 
      LEFT JOIN MANH.LOCN_HDR LH ON LH.LOCN_ID = WI.LOCATION_ID
         LEFT JOIN MANH.BATCH_MASTER AS BM ON WI.ITEM_ID = BM.ITEM_ID AND WI.BATCH_NBR = BM.BATCH_NBR AND BM.ActInd = 'Y' 
         LEFT OUTER JOIN MANH.ITEM_CBO AS IC ON IC.ITEM_ID = BM.ITEM_ID AND IC.ActInd = 'Y'
         LEFT OUTER JOIN (SELECT PART_NO, MAX(INVENTORY_VALUE) INVENTORY_VALUE FROM  IFS.INVENTORY_PART_UNIT_COST_SUM WHERE ActInd = 'Y' GROUP BY PART_NO) AS IP ON IP.PART_NO = IC.ITEM_NAME /*AND IP.LOT_BATCH_NO = BM.BATCH_NBR*/ 
           
         WHERE (WI.ActInd = 'Y') AND (WI.ON_HAND_QTY <> 0)
                AND WI.MARKED_FOR_DELETE = 'N'
         
         and LH.ActInd = 'Y'

      AND LH.WORK_GRP NOT IN ('VSC','DAM','KIT','LCL','OUT','INB')
     AND LH.AISLE NOT IN ('70')
      AND WI.BATCH_NBR <> '*'
      AND NOT EXISTS (SELECT LL.TC_LPN_ID FROM MANH.LPN_LOCK LL WHERE LL.TC_LPN_ID = WI.TC_LPN_ID AND LL.ActInd = 'Y')
) X ON X.ITEM_ID = IC.ITEM_ID
WHERE IC.ActInd = 'Y'


GROUP BY
  IC.ITEM_NAME
  , IC.DESCRIPTION
  ,IC.ITEM_ID 
  , Lot_Code
      , ILPN_ID
       , Aging
         , Location_Display_Location