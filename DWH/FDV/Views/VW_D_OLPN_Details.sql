


CREATE VIEW [FDV].[VW_D_OLPN_Details]
AS
select 
LO.TC_LPN_ID			AS OLPN_ID
,IC.ITEM_NAME			AS SKU_Name
,sum(LD.SHIPPED_QTY)		AS Shipped_QTY
from  MANH.LPN_OUTBOUND as LO
inner join  MANH.LPN_DETAIL as LD 
on
LD.LPN_ID=LO.LPN_ID
and LD.ActInd = 'Y'
and LO.ActInd= 'Y'
and YEAR(LD.CREATED_DTTM) > YEAR(GETDATE())-3
inner join MANH.ITEM_CBO as IC
on
IC.ITEM_ID=LD.ITEM_ID
and IC.ActInd= 'Y'
group by LO.TC_LPN_ID,IC.ITEM_NAME;