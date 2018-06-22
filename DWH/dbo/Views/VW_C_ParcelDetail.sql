
CREATE VIEW VW_C_ParcelDetail
AS

SELECT 
  LD.LPN_DETAIL_ID							AS ParcelDetailID
  , LP.TC_LPN_ID							AS ParcelDetailLPNID
  , LP.TC_ORDER_ID							AS ParcelDetailOrderID
  , LD.ITEM_ID								AS ParcelDetailItemID
  , LD.BATCH_NBR							AS ParcelDetailItemBatch
  , LD.INITIAL_QTY							AS ParcelDetailQuantityOrdered
  , LD.SHIPPED_QTY							AS ParcelDetailQuantityShipped
  , LP.Eff_Date
FROM			MANH.LPN_OUTBOUND LP
INNER JOIN		MANH.LPN_DETAIL LD
ON				LD.LPN_ID = LP.LPN_ID
AND				LD.ActInd = 'Y'
WHERE			LP.ActInd = 'Y'
AND				LP.LPN_FACILITY_STATUS = 90
--AND				LP.Eff_Date >= GETDATE() -5