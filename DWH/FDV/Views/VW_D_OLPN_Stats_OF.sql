﻿




CREATE VIEW [FDV].[VW_D_OLPN_Stats_OF]
AS
select PT.CNTR_NBR as OLPN_ID
,PT.MENU_OPTN_NAME
,PT.MODULE_NAME
,PT.BEGIN_DATE
,PT.END_DATE
,OD.TC_ORDER_ID AS ORDER_ID
,OD.ORDER_TYPE 
,OD.DSG_SHIP_VIA				AS Ship_Via
,OD.D_COUNTRY_CODE				AS Order_Country_Code
,SD.Order_Planned_Ship_Date
,SD.Order_Wave_Date
from MANH.PROD_TRKG_TRAN PT

join MANH.ORDERS OD
on PT.TC_ORDER_ID=OD.TC_ORDER_ID
and OD.ActInd='Y'
and OD.ORDER_TYPE='OF'
--and OD.CREATED_DTTM > getdate()-65

join EXTRA.ORDERS_SHIP_DATE SD
on SD.TC_Order_ID=PT.TC_ORDER_ID
and SD.ActInd='Y'
and SD.Order_Planned_Ship_Date BETWEEN GETDATE()-65 AND GETDATE ()-1 

UNION ALL

SELECT        '-1', NULL, NULL, '1965-04-26', NULL, NULL, NULL,NULL,NULL,NULL,NULL