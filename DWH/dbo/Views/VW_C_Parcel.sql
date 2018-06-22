
CREATE VIEW VW_C_Parcel
AS

SELECT
  LP.TC_LPN_ID								AS ParcelID
  , LP.TC_ORDER_ID							AS ParcelOrderID
  , LP.SHIP_VIA								AS ParcelShipVia
  , LP.TC_SHIPMENT_ID						AS ParcelShipmentID
  , LP.ACTUAL_VOLUME						AS ParcelVolume
  , CASE
		WHEN LP.WEIGHT IS NULL 
		THEN LP.ESTIMATED_WEIGHT
		ELSE LP.WEIGHT
  END										AS ParcelWeight
  , LP.LENGTH								AS ParcelLength
  , LP.WIDTH								AS ParcelWidth
  , LP.HEIGHT								AS ParcelHeight
  , LP.SHIPPED_DTTM							AS ParcelShippedDate
  , LP.CONTAINER_SIZE						AS ParcelBoxType
  , LP.LPN_NBR_X_OF_Y						AS ParcelXOfY
  , LP.Eff_Date
FROM			MANH.LPN_OUTBOUND LP
WHERE			LP.ActInd = 'Y'
AND				LP.LPN_FACILITY_STATUS = 90
--AND				LP.Eff_Date >= GETDATE() -5