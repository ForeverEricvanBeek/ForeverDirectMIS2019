

CREATE VIEW [FDV].[VW_D_IFS_Bulk_Order_Details]
AS 

WITH CTE_1 as
(SELECT			
	 cast(ODL.DATE_ENTERED as date)					AS DateKey
	 ,ODL.LINE_NO									AS LINE_NO
	 ,ODL.LINE_ITEM_NO								AS LINE_ITEM_NO
	 ,ODL.REL_NO									AS REL_NO
	,ISNULL(ODL.ORDER_NO,'-1')						AS Order_ID_IFS
	,ISNULL(ODL.CATALOG_NO,'-1')					AS SKU_Name
	,ISNULL(ODL.STATE,'-1')							AS Status
	,cast(ODL.DATE_ENTERED as date)    				AS Date_Item_Ordered
	,ISNULL(ODL.BUY_QTY_DUE,'0')					AS Number_Items_IFS_Ordered
	,O.ORDER_ID										as Order_Type

FROM IFS.CUSTOMER_ORDER_LINE ODL
join IFS.CUSTOMER_ORDER O
on
ODL.ORDER_NO=O.ORDER_NO
and O.ActInd='Y'
and O.IsDeleted='N'

where ODL.ActInd='Y'
and ODL.IsDeleted='N'
and ODL.DATE_ENTERED>DATEADD(yy, -1, GETDATE()) -- date filter toegevoegd
and ODL.ORDER_NO not like 'F%'
and O.ORDER_ID ='BK'
	)
,CTE_2 as
(select ISNULL(SOL.SHIPMENT_ID,'-1')				    AS Order_ID
,ISNULL(Z.DSG_SHIP_VIA,'-1')		     	            AS Transporter_Ship_Via_Code
,SOL.ORDER_NO											AS ORDER_NO
,SOL.LINE_NO											AS LINE_NO
,SOL.LINE_ITEM_NO										AS LINE_ITEM_NO
,SOL.REL_NO												AS REL_NO
,ISNULL(SOL.C_SHIPMENT_CONNECTED_QTY,'0')				AS Number_Items_Shipped
,cast(SH.SHIP_DATE as date)								AS Ship_Date
,ISNULL(SH.C_CONSOLIDATED_SHIPMENT_ID,'-1')				AS Shipment_ID
,OLH.Old_Value											As Old_Value
,SOL.OBJVERSION
,row_number() over (partition by SOL.[ORDER_NO],SOL.[LINE_NO],SOL.[REL_NO],SOL.[LINE_ITEM_NO],SOL.[C_SHIPMENT_CONNECTED_QTY] order by SOL.OBJVERSION desc) AS RN
from IFS.SHIPMENT_ORDER_LINE SOL
left join IFS.SHIPMENT SH
on 
SOL.SHIPMENT_ID=SH.SHIPMENT_ID
and SH.ActInd='Y'
and SH.IsDeleted='N'
left JOIN (select distinct(cast(TC_ORDER_ID as nvarchar(25))) as TC_ORDER_ID, DSG_SHIP_VIA from MANH.ORDERS
			where ActInd='Y') Z
            on cast(Z.TC_ORDER_ID as nvarchar(25))=cast(SOL.SHIPMENT_ID as nvarchar(25))

left join  FDV.VW_D_Order_Line_Bulk_His OLH
on OLH.Order_NO=SOL.ORDER_NO
and 
OLH.Line_NO=SOL.LINE_NO
and
OLH.Line_Item_NO=SOL.LINE_ITEM_NO
and 
OLH.REL_NO=SOL.REL_NO
and
OLH.RN='1'

where SOL.ORDER_NO not like 'F%'
and SOL.ActInd='Y'
and SOL.IsDeleted='N'
and SH.SHIP_DATE>DATEADD(yy, -1, GETDATE())) -- date filter toegevoegd

Select C1.DateKey
,C2.Transporter_Ship_Via_Code
,ISNULL(C2.Order_ID,'-1') as Order_ID
,C1.Order_ID_IFS
,C1.SKU_Name
,C1.REL_NO
,C1.Status
,C1.Date_Item_Ordered
,C2.Ship_Date
,C2.Shipment_ID
--,ISNULL(case when C2.Old_Value is null then C1.Number_Items_Initial_Ordered else C2.Old_Value end,0) as FLPI_Initial_QTY
,C1.Number_Items_IFS_Ordered
,C2.Number_Items_Shipped
from CTE_1 C1
left join CTE_2 C2
on  
C1.Order_ID_IFS=C2.ORDER_NO
and
C1.LINE_NO=C2.LINE_NO
and
C1.LINE_ITEM_NO=C2.LINE_ITEM_NO
and
C1.REL_NO=C2.REL_NO
and
C2.RN=1
and 
C1.Order_Type='BK'
union 
select null,null,'-1','-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL