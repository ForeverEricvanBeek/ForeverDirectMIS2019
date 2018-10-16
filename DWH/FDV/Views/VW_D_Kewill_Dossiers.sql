




CREATE VIEW [FDV].[VW_D_Kewill_Dossiers]
as
with CTE_1 as
--Ophalen dockdate and ASN nummer uit manhattan van inbound goederen (not bonded).
--Purchase orders die beginnen met een A worden uitgesloten omdat dit AVE orders zijn (not bonded)
(select AP.EST_DEPARTURE_DTTM as DOCK_DATE
,AP.APPOINTMENT_ID
,AO.APPT_OBJ_ID
,LN.TC_ASN_ID
,LN.SHIP_VIA
,LN.SHIPMENT_ID
,LN.ORDER_ID
from MANH.ILM_APPOINTMENTS AP
left join MANH.ILM_APPOINTMENT_OBJECTS AO
on
AP.APPOINTMENT_ID=AO.APPOINTMENT_ID
And AP.ActInd='Y'
and AO.ActInd='Y'
join MANH.LPN_INBOUND LN
on AO.APPT_OBJ_ID=LN.ASN_ID
and LN.ActInd='Y'
and LN.TC_PURCHASE_ORDERS_ID not like 'A%')

,CTE_2 as
--ophalen asn en dossiernummer kewill en invoerdatum kewill van inbound goederen 
--gefilterd op asn'nrs die niet met PR (not bonded) beginnen. 
(select
TS.ref01
,TS.dosvlg
,cast(TS.datinv as date) as datinv
,TS.afd
from KEWILL.tsdsmd TS
where TS.ActInd='Y'
and TS.afd='inbo'
and TS.ref01 not like 'PR%')

,CTE_3 as
--ophalen Order_id, shipment_id, ship_via, shipment_date van outbound goederen vanuit Manhattan	
(SELECT	  
	OD.TC_ORDER_ID
    ,OD.DSG_SHIP_VIA
	,MAX( LP.TC_SHIPMENT_ID) AS TC_SHIPMENT_ID
	,OD.ACTUAL_SHIPPED_DTTM
			
FROM	 MANH.LPN_OUTBOUND AS LP
join     MANH.ORDERS OD
on
OD.TC_ORDER_ID=LP.TC_ORDER_ID
AND OD.ActInd='Y'
and OD.DSG_SHIP_VIA not in ('FD01','NL08')

WHERE	 LP.ActInd = 'Y'
AND		 LP.LPN_FACILITY_STATUS <> 99
and		 OD.ACTUAL_SHIPPED_DTTM > GETDATE()-365 
and		 OD.ORDER_TYPE='BK'

GROUP BY OD.TC_ORDER_ID
		,OD.DSG_SHIP_VIA
		,OD.ACTUAL_SHIPPED_DTTM)
		
,CTE_4 as
--Ophalen Kewill dossiers + aanmaak datum van bulk outbound goederen
(Select 
	ISNULL(K.datinv,'2999-01-01') as KEWILL_INVD
	,ISNULL(K.dosvlg,0) as KEWILL_DOSVLG
	,ISNULL(K.ref01+K.ref02,0) as KEWILL_REF
	,K.afd as KEWILL_AFD
	from KEWILL.tsdsmd K 
	where K.afd= 'outb'
	and K.ref01+K.ref02 not like 'OF%'
	and K.datinv>GETDATE()-365 )


select
C2.dosvlg as Dossier_ID 
,C2.datinv as Inv_Date_Kewill
,C2.ref01 as Reference
,C2.afd as Department
,cast(C1.SHIPMENT_ID as NVARCHAR(50)) as Shipment_ID
,isnull(cast(C1.ORDER_ID as nvarchar(50)),'-1') as Order_ID

,NULL as Ship_Confirm_Date
,C1.DOCK_DATE as Dock_Time
,cast(C1.SHIP_VIA as nvarchar(4)) as Ship_Via
,Case when C2.afd='inbo' and datepart(weekday,C1.DOCK_DATE)=6 then Dateadd(d,3,C1.DOCK_DATE)
      when C2.afd='inbo' and datepart(weekday,C1.DOCK_DATE)in (2,3,4,5) then Dateadd(d,1,C1.DOCK_DATE)
 end as KPI_Inbound
,null as KPI_Outbound
from CTE_1 C1
join CTE_2 C2
on C1.TC_ASN_ID=C2.ref01
group by 
C1.DOCK_DATE
,C1.TC_ASN_ID
,C1.APPT_OBJ_ID
,C1.APPOINTMENT_ID
,C1.SHIP_VIA
,C1.SHIPMENT_ID 
,C1.ORDER_ID
,C2.ref01
,C2.dosvlg
,C2.datinv 
,C2.afd

union

Select C4.KEWILL_DOSVLG as Dossier_ID 
,C4.KEWILL_INVD as Inv_Date_Kewill
,C4.KEWILL_REF as Reference
,C4.KEWILL_AFD as Department
,C3.TC_SHIPMENT_ID AS Shipment_ID
,ISNULL(C3.TC_ORDER_ID,'-1') AS Order_ID
,C3.ACTUAL_SHIPPED_DTTM AS Ship_Confirm_Date
,NUll as Dock_Time
,C3.DSG_SHIP_VIA AS Ship_Via
,Null AS KPI_INBO
,DATEDIFF(ss,C4.KEWILL_INVD,C3.ACTUAL_SHIPPED_DTTM) AS KPI_OUTB

from CTE_3 C3
join CTE_4 C4
on 'BK'+C3.TC_ORDER_ID=C4.KEWILL_REF
or 'BK'+C3.TC_SHIPMENT_ID=C4.KEWILL_REF
union all

SELECT        '-1', NULL, NULL, NULL, NULL, '-1', NULL, NULL, NULL, NULL, NULL