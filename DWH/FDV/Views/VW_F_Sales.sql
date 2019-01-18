





Create VIEW  [FDV].[VW_F_Sales]
as
SELECT			
	 cast(ODI.DATE_ENTERED as date)					AS DateKey
	,ISNULL(ODI.COUNTRY_CODE,'-1')				    AS Country_Code
	,ISNULL(Z.DSG_SHIP_VIA,'-1')		     	    AS Transporter_Ship_Via_Code
	,ISNULL(SOL.SHIPMENT_ID,'-1')				    AS Order_ID
	,ISNULL(ODI.CUSTOMER_PO_NO,'-1')				AS Master_Order
	--,ISNULL(ODI.STATE,'-1')						AS Order_Status
	,ISNULL(ODI.ORDER_NO,'-1')						AS Order_ID_IFS
	,ISNULL(ODL.PART_NO,'-1')						AS SKU_Name
	,ISNULL(ODL.STATE,'-1')							AS Status
	,CAST(ODL.DATE_ENTERED as date)					AS Date_Item_Ordered
	,ISNULL(SH.C_CONSOLIDATED_SHIPMENT_ID,'-1')		AS Shipment_ID
	,ISNULL(ODL.BUY_QTY_DUE,'0')					AS Number_Items_Initial_Ordered
	,ISNULL(SOL.C_SHIPMENT_CONNECTED_QTY,'0')		AS Number_Items_Shipped
	,'0'											AS Total_Number_Items_Initial_Ordered
	,'0'											AS Total_Number_Items_Shipped
		
FROM			IFS.CUSTOMER_ORDER AS ODI

left JOIN IFS.CUSTOMER_ORDER_LINE ODL
on 
ODL.ORDER_NO=ODI.ORDER_NO
and ODL.ActInd='Y'

left JOIN		IFS.SHIPMENT_ORDER_LINE SOL
on 
SOL.ORDER_NO=ODI.ORDER_NO
and ODL.LINE_NO=SOL.LINE_NO
and ODL.LINE_ITEM_NO=SOL.LINE_ITEM_NO
and ODL.REL_NO=SOL.REL_NO
and SOL.ActInd='Y'

left join IFS.SHIPMENT SH
on 
SOL.SHIPMENT_ID=SH.SHIPMENT_ID
and SH.ActInd='Y'

/*
Left JOIN (Select ORDER_NO, sum(QTY_SHIPPED) as Total_Shipped, sum(BUY_QTY_DUE) as Total_Ordered
	     from IFS.CUSTOMER_ORDER_LINE
	      where ActInd='Y'
		  group by ORDER_NO)Y
on Y.ORDER_NO=ODI.ORDER_NO
*/
left JOIN (select distinct(cast(TC_ORDER_ID as nvarchar(25))) as TC_ORDER_ID, DSG_SHIP_VIA from MANH.ORDERS
			where ActInd='Y') Z
            on cast(Z.TC_ORDER_ID as nvarchar(25))=cast(SOL.SHIPMENT_ID as nvarchar(25))

where ODI.ActInd='Y'
and ODI.DATE_ENTERED>getdate()-365
and ODI.ORDER_ID='BK'
and ODI.AUTHORIZE_CODE='FLPISCINTPROD'
--and ODI.ORDER_NO='B1000005379'
--and ODI.ORDER_NO like  'B1000005588'--'B1000005635'--'B1000005588'