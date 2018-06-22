
CREATE VIEW VW_C_Order
AS

SELECT
  OD.TC_ORDER_ID							AS OrderID
  , OD.EXT_PURCHASE_ORDER					AS OrderPOSNumber
  , OD.D_NAME								AS OrderCustomerName
  , OD.D_EMAIL								AS OrderCustomerEmail
  , OD.D_PHONE_NUMBER						AS OrderCustomerPhone
  , OD.D_ADDRESS_1							AS OrderCustomerAddress1
  , OD.D_ADDRESS_2							AS OrderCustomerAddress2
  , OD.D_CITY								AS OrderCustomerCity
  , OD.D_STATE_PROV							AS OrderCustomerState
  , OD.D_POSTAL_CODE						AS OrderCustomerZipcode
  , OD.D_COUNTRY_CODE						AS OrderCustomerCountryCode
  , OD.REF_FIELD_3							AS OrderCustomerLanguage
  , OD.DSG_SHIP_VIA							AS OrderShipVia
  , OD.GLOBAL_LOCN_NBR						AS OrderCompany
  , OD.CUSTOMER_ID							AS OrderCustomerID
  , OD.CREATED_DTTM							AS OrderIn
  , OD.ACTUAL_SHIPPED_DTTM					AS OrderOut
  , OD.Eff_Date
FROM			MANH.ORDERS OD
WHERE			OD.ActInd = 'Y'
AND				OD.DO_STATUS = 190
--AND				OD.Eff_Date >= GETDATE() -5 