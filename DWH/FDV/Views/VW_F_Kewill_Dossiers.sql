

CREATE VIEW [FDV].[VW_F_Kewill_Dossiers]
as
select distinct(ISNULL(TS.dosvlg,-1)) as Dossier_ID 
,cast(TS.datinv as date) as Inv_Date_Kewill
,ISNULL(TS.ref01, '-1') as Kewill_ref
,TS.afd as Department
,ISNULL(LN.TC_ASN_ID,-1) as ASN_ID
,cast(ISNULL(LN.SHIPMENT_ID,-1) as NVARCHAR(50)) as Shipment_ID
,NULL as Ship_Confirm_Date
,DS.C_DATE_REQUEST_SENT as Dock_Time
,ISNULL(LN.SHIP_VIA,-1) as Ship_Via
,'-1' as Country_Code
,CASE when datepart(weekday,DS.C_DATE_REQUEST_SENT)=6 then dateadd(d,3,DS.C_DATE_REQUEST_SENT)
	 when datepart(weekday,DS.C_DATE_REQUEST_SENT) in (2,3,4,5) then dateadd(d,1,DS.C_DATE_REQUEST_SENT) 
	 end
 as KPI_DOCK_Inbound
,DATEDIFF(hh,CASE when datepart(weekday,DS.C_DATE_REQUEST_SENT)=6 then dateadd(d,3,DS.C_DATE_REQUEST_SENT)
	 when datepart(weekday,DS.C_DATE_REQUEST_SENT) in (2,3,4,5) then dateadd(d,1,DS.C_DATE_REQUEST_SENT) 
	 end,Y.End_Dossier_Aanmaak) as Inbound_Result --hours between kpi_koppelen aan dock en de eindtijd dossier aanmaak kewill score moet negatief of 0 zijn. 
,null as KPI_outbound
,null as Outbound_Result
,Y.Start_Dossier_Aanmaak Start_Dossier_Aanmaak
,Y.End_Dossier_Aanmaak End_Dossier_Aanmaak

from  MANH.LPN_INBOUND LN

left join KEWILL.tsdsmd TS
on
TS.ref01=LN.TC_ASN_ID
and TS.ActInd='Y'
and TS.afd='inbo'

left join IFS.EXT_DESADV_HEADER DS
on
DS.MESSAGE_ID=LN.TC_ASN_ID
and DS.ActInd='Y'

left join 
(SELECT TR.dosvlg Dossier_ID
	  ,dateadd(hh,2,MIN(cast(TR.tsacty as datetime) +cast(TR.tsacdt as datetime))) Start_Dossier_Aanmaak --min(dateadd(hh,2,TR.tsacty)) Start_Dossier_Aanmaak
	  ,dateadd(hh,2,MAX(cast(TR.tsacty as datetime) +cast(TR.tsacdt as datetime))) End_Dossier_Aanmaak
  FROM KEWILL.tstrac TR
  where TR.ActInd='Y'
  and TR.tsttkd='LINKING TG'
  or TR.tsttkd='ALL FINAL'
  group by TR.dosvlg)Y
on
Y.Dossier_ID=TS.dosvlg

where LN.TC_PURCHASE_ORDERS_ID not like 'A%'	--AV zendingen
and LN.TC_ASN_ID not like 'PR%'					--weet ik niet meer
and LN.ActInd='Y'
and LN.BUSINESS_PARTNER_ID not like ('3129%')	--AV zendingen
and TS.datinv > getdate()-60

union

SELECT ISNULL(K.dosvlg,'-1') as Dossier_ID
	,cast(K.datinv as date) as Inv_Date_Kewill
	,K.ref01+K.ref02 as Kewill_Ref
	,K.afd as Department
	,ISNULL(LP.TC_ASN_ID,-1) as ASN_ID
    ,cast(LP.TC_SHIPMENT_ID  as NVARCHAR(50))as Shipment_ID	
	--,cast(OD.TC_ORDER_ID as NVARCHAR(50)) as Order_ID
	,OD.ACTUAL_SHIPPED_DTTM as Ship_Confirm_Date
	,null as Dock_Time
    ,OD.DSG_SHIP_VIA as Ship_Via
	,OD.D_COUNTRY_CODE
	,null as KPI_Dock_Inbound
	,null as  Inbound_Result
	,dateadd(mi,90,OD.ACTUAL_SHIPPED_DTTM) as KPI_Outbound
	,DATEDIFF(mi,dateadd(mi,90,OD.ACTUAL_SHIPPED_DTTM),Y.End_Dossier_Aanmaak) as Outbound_Result -- minuten between KPI_outbound en de eindtijd dossier aanmaak Kewill score moet negatief of 0 zijn.
	,Y.Start_Dossier_Aanmaak Start_Dossier_Aanmaak
    ,Y.End_Dossier_Aanmaak End_Dossier_Aanmaak

FROM	 MANH.LPN_OUTBOUND AS LP

join     MANH.ORDERS OD
on
OD.TC_ORDER_ID=LP.TC_ORDER_ID
AND OD.ActInd='Y'
and OD.DSG_SHIP_VIA not in ('FD01','NL08')

left join KEWILL.tsdsmd K 
ON 
OD.TC_ORDER_ID=substring(K.ref01+K.ref02,3,15)
and K.ActInd='Y'
and K.afd='outb'

left join 
(SELECT TR.dosvlg Dossier_ID
      ,dateadd(hh,2,MIN(cast(TR.tsacty as datetime) +cast(TR.tsacdt as datetime))) Start_Dossier_Aanmaak --min(dateadd(hh,2,TR.tsacty)) Start_Dossier_Aanmaak
	  ,dateadd(hh,2,MAX(cast(TR.tsacty as datetime) +cast(TR.tsacdt as datetime))) End_Dossier_Aanmaak
  FROM KEWILL.tstrac TR
  where TR.ActInd='Y'
  and TR.tsttkd='LINKING TG'
  or TR.tsttkd='ALL FINAL'
  group by TR.dosvlg)Y
on
Y.Dossier_ID=K.dosvlg


where    OD.ACTUAL_SHIPPED_DTTM > DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) -1 , 0)
and		 OD.ORDER_TYPE='BK'
AND		 LP.LPN_FACILITY_STATUS <> 99
and		 LP.ActInd='Y'
and K.datinv > getdate()-60

group by ISNULL(K.dosvlg,'-1') 
	,cast(K.datinv as date) 
	,K.ref01+K.ref02 
	,K.afd 
	,ISNULL(LP.TC_ASN_ID,-1) 
    ,cast(LP.TC_SHIPMENT_ID  as NVARCHAR(50))
	,cast(OD.TC_ORDER_ID as NVARCHAR(50)) 
	,OD.ACTUAL_SHIPPED_DTTM 
    ,OD.DSG_SHIP_VIA 
	,OD.D_COUNTRY_CODE
	,dateadd(mi,90,OD.ACTUAL_SHIPPED_DTTM)
	,DATEDIFF(mi,dateadd(mi,90,OD.ACTUAL_SHIPPED_DTTM),Y.End_Dossier_Aanmaak)
	,Y.Start_Dossier_Aanmaak
    ,Y.End_Dossier_Aanmaak

union

SELECT ISNULL(K.dosvlg,'-1') as Dossier_ID
	,cast(K.datinv as date) as Inv_Date_Kewill
	,K.ref01+K.ref02 as Kewill_Ref
	,K.afd as Department
	,ISNULL(LP.TC_ASN_ID,-1) as ASN_ID
    ,cast(LP.TC_SHIPMENT_ID  as NVARCHAR(50))as Shipment_ID	
	,OD.ACTUAL_SHIPPED_DTTM as Ship_Confirm_Date
	,null as Dock_Time
    ,OD.DSG_SHIP_VIA as Ship_Via
	,OD.D_COUNTRY_CODE
	,null as KPI_Dock_Inbound
	,null as Inbound_Result
	,dateadd(mi,90,OD.ACTUAL_SHIPPED_DTTM) as KPI_Outbound
	,DATEDIFF(mi,dateadd(mi,90,OD.ACTUAL_SHIPPED_DTTM),Y.End_Dossier_Aanmaak) as Outbound_Result
	,Y.Start_Dossier_Aanmaak Start_Dossier_Aanmaak
    ,Y.End_Dossier_Aanmaak End_Dossier_Aanmaak
   
	

FROM	 MANH.LPN_OUTBOUND AS LP

join     MANH.ORDERS OD
on
OD.TC_ORDER_ID=LP.TC_ORDER_ID
AND OD.ActInd='Y'
and OD.DSG_SHIP_VIA not in ('FD01','NL08')

left join KEWILL.tsdsmd K 
ON 
LP.TC_SHIPMENT_ID=substring(K.ref01+K.ref02,3,15)
and 
K.ActInd='Y'
and K.afd='outb'


left join 
(SELECT TR.dosvlg Dossier_ID
       ,dateadd(hh,2,MIN(cast(TR.tsacty as datetime) +cast(TR.tsacdt as datetime))) Start_Dossier_Aanmaak --min(dateadd(hh,2,TR.tsacty)) Start_Dossier_Aanmaak
	  ,dateadd(hh,2,MAX(cast(TR.tsacty as datetime) +cast(TR.tsacdt as datetime))) End_Dossier_Aanmaak
  FROM KEWILL.tstrac TR
  where TR.ActInd='Y'
  and TR.tsttkd='LINKING TG'
  or TR.tsttkd='ALL FINAL'
  group by TR.dosvlg)Y
on
Y.Dossier_ID=K.dosvlg

where    OD.ACTUAL_SHIPPED_DTTM > DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) -1 , 0)
and		 OD.ORDER_TYPE='BK'
AND		 LP.LPN_FACILITY_STATUS <> 99
and		 LP.ActInd='Y'
and K.datinv > getdate()-60

group by ISNULL(K.dosvlg,'-1') 
	,cast(K.datinv as date) 
	,K.ref01+K.ref02 
	,K.afd 
	,ISNULL(LP.TC_ASN_ID,-1) 
    ,cast(LP.TC_SHIPMENT_ID  as NVARCHAR(50))
	,cast(OD.TC_ORDER_ID as NVARCHAR(50)) 
	,OD.ACTUAL_SHIPPED_DTTM 
	--,null 
    ,OD.DSG_SHIP_VIA 
	,OD.D_COUNTRY_CODE
	,dateadd(mi,90,OD.ACTUAL_SHIPPED_DTTM)
	,DATEDIFF(mi,dateadd(mi,90,OD.ACTUAL_SHIPPED_DTTM),Y.End_Dossier_Aanmaak)
	,Y.Start_Dossier_Aanmaak
    ,Y.End_Dossier_Aanmaak