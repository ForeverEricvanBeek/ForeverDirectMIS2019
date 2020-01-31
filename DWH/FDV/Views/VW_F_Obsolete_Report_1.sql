






CREATE VIEW [FDV].[VW_F_Obsolete_Report]
AS
--CTE_1 haalt de voorraad en costprice info op uit de F_Obsolescense
--Uit de SKU wordt de sku_description en de ordertype van de SKU opgehaald. 
With CTE_1 as (
       Select  
         OB.SKU_Name
		 ,OB.Contract
         , OB.Lot_Code
         , SK.SKU_Description
         , cast(OB.Inventory_Netto_QTY as float) as Inventory_Netto_QTY
         , OB.Inventory_Cost_Price
         , OB.Inventory_Netto_Value
         , SK.Order_Type
         , Case when SK.Order_Type='OF' then 90 when SK.Order_Type='BK' then 100 end as Criteria
         , OB.Days_to_Expire
         , cast(OB.Expiration_Date as date) Expiration_Date
         , cast(DATEADD(DAY,Case when SK.Order_Type='OF' then -90 when SK.Order_Type='BK' then -100 end ,OB.Expiration_Date) as date) Lock_Date
         , DATEDIFF(DD,getdate(),DATEADD(DAY,Case when SK.Order_Type='OF' then -90 when SK.Order_Type='BK' then -100 end,OB.Expiration_Date))+1 Days_Until_Lockdate
         , Case when DATEDIFF(DD,getdate(),DATEADD(DAY,Case when SK.Order_Type='OF' then -90 when SK.Order_Type='BK' then -100 end,OB.Expiration_Date))<0 then 'Locken' else 'OK' end as Locken
       FROM          [$(ForeverData01)].DM.F_Obsolescense OB
       LEFT JOIN     [$(ForeverData01)].DM.D_SKU SK
       ON                   OB.SKU_Name = SK.SKU_Name
	   and					OB.Contract=SK.Contract
	  -- where  OB.SKU_Name='716IN'
	   --where OB.Contract <> 'FD01'
	  
)
-- CTE_2 
--Haalt de number of units uit de F_Outbound. SCRAP en Samples worden uitgefilterd
--Haalt quantity issued uit de Work_orders op
--Beiden worden ge-unioned 
,CTE_2 AS (
       
select 
         QTY.SKU_Name
		,Contract 
         , QTY.Number_Of_Units Number_Of_Units
          from (
              select 
                SK.SKU_Name
				,OB.Contract
                , ISNULL(OB.Number_Of_Units_Shipped,0) Number_Of_Units
              from       [$(ForeverData01)].DM.F_Outbound OB
              right join    [$(ForeverData01)].DM.D_SKU SK
			  on                   SK.D_SKU_Skey=OB.D_SKU1_Skey
			  and				   SK.Contract=OB.Contract
			  and				   SK.IsDeleted=0
			  where cast(cast(OB.DateKey as varchar)as date) >= cast(dateadd(month,-6,getdate()) as datetime) --between '2018-07-17' and '2019-01-17'
			 -- and SK.SKU_Name='716IN'
			  and OB.D_Order_Skey not in (SELECT D_Order_Skey 
			  										from [$(ForeverData01)].[DM].[D_Order] od
			 										where      od.Order_Facility_Code  like '%SCR%'
													or         od.Order_Facility_Code  like '%SAM%'
													or         od.Order_Facility_Code  like '%SITA%')

      
       ) QTY
	      union all

       SELECT 
         SKU_Name
		 ,'FD01' as Contract
         , cast(sum(Requested_QTY)-sum(In_Work_QTY) as float) Number_Of_Units   
       FROM          [$(ForeverData01)].DM.D_Work_Orders
       where      Create_Date_Time >= cast(dateadd(month,-6,getdate()) as datetime) --between '2018-07-17' and '2019-01-17'
       and                  FU_SKU is null
       and                  Status ='CLOSED'
       group by
       SKU_Name
       having 
         cast(sum(Requested_QTY)-sum(In_Work_QTY) as float)>0
)
-- CTE_3
--Gegevens uit CTE_1 en CTE_2 worden gejoined en aggregatie van QTY_issued en Inbound en terug berekend naar units per maand en dag 

,CTE_3 as (
       Select 
		   C1.Contract
         , C1.SKU_Name
         , C1.Lot_Code
         , C1.SKU_Description
         , C1.Inventory_Netto_QTY
         , C1.Inventory_Cost_Price
         , C1.Inventory_Netto_Value
         , C1.Order_Type
         , C1.Criteria
         , C1.Days_to_Expire
         , C1.Expiration_Date
         , C1.Lock_Date
         , C1.Days_Until_Lockdate
         , C1.Locken
         , ROUND(ISNULL(sum(C2.Number_Of_Units),0)/6,2) as Number_Of_Units_PMND
         , ROUND(ISNULL(sum(C2.Number_Of_Units),0)/26.428/5,2) as Number_Of_Units_PD
		 , case when ISNULL(sum(C2.Number_Of_Units),0)= 0 then 0
		        when CEILING(C1.Inventory_Netto_QTY/ROUND(ISNULL(sum(C2.Number_Of_Units),0)/26.428/5,2)) >800000 then 800000
				else CEILING(C1.Inventory_Netto_QTY/ROUND(ISNULL(sum(C2.Number_Of_Units),0)/26.428/5,2)) end as Days_To_Sell_Stock 
       from          CTE_1 C1
       left join     CTE_2 C2
       On            C1.SKU_Name=C2.SKU_Name
	   and			 C1.Contract=C2.Contract
       group by 
           C1.Contract
		 , C1.SKU_Name
         , C1.Lot_Code
         , C1.SKU_Description
         , C1.Inventory_Netto_QTY
         , C1.Inventory_Cost_Price
         , C1.Inventory_Netto_Value
         , C1.Order_Type
         , C1.Criteria
         , C1.Days_to_Expire
         , C1.Expiration_Date
         , C1.Lock_Date
         , C1.Days_Until_Lockdate
         , C1.Locken
)
--select * from CTE_3
--where SKU_Name='715A'
--where Contract='FD01'
--CTE_4
--Ophalen van de totale sum van de inventory per SKU. 
,CTE_4 as (
       Select 
         OB.SKU_Name,OB.Contract
         , cast(SUM(OB.Inventory_Netto_QTY) as float) Sum_Netto_Qty
       from          [$(ForeverData01)].DM.F_Obsolescense OB
       group BY 
         OB.SKU_Name,OB.Contract
)
 --CTE5
 --Join van CTE_3 en CTE_4
 --Berekenen van percentage van SKU-Lot combinatie in relatie tot de total sum per SKU 
,CTE_5 as (
       select 
         cast(getdate()-1 as date) as DateKey
		 ,C3.Contract
         ,C3.SKU_Name
         , ROW_NUMBER () over (partition by C3.SKU_Name,C3.Contract order by  C3.Lock_Date asc) as RN
         , C3.Days_To_Sell_Stock as Days_To_Sell_Stock
         , C3.Lot_Code
         , C3.SKU_Description
         , C3.Inventory_Netto_QTY  as Inventory_Netto_QTY
         , C4.Sum_Netto_Qty
         , round((C3.Inventory_Netto_QTY/C4.Sum_Netto_Qty),2) as Percentage
         , C3.Inventory_Cost_Price
         , C3.Inventory_Netto_Value
         , C3.Order_Type
         , C3.Criteria
         , C3.Days_to_Expire
         , C3.Expiration_Date
         , C3.Lock_Date
         , C3.Days_Until_Lockdate
         , C3.Locken
		 , C3.Number_Of_Units_PMND
         , C3.Number_Of_Units_PD
		 
       From          CTE_3 C3
       INNER join    CTE_4 C4
       on            C3.SKU_Name = C4.SKU_Name
	   and			 C3.Contract=C4.Contract
     
)

--select * from CTE_5
--where SKU_Name='715A'
--CTE_6
-- Berekenen van Days_To_Sell_Stock_SUM
-- Berekenen van Projection_OOS
-- Berekenen van Lock_VS_Projection_OOS

,CTE_6 as (
select 
  C5.DateKey
  ,C5.Contract
  ,C5.RN
  ,C5.SKU_Name
  ,C5.Lot_Code
  ,C5.SKU_Description
  ,C5.Inventory_Netto_QTY
  ,C5.Percentage
  ,C5.Sum_Netto_Qty
  ,C5.Inventory_Cost_Price
  ,C5.Inventory_Netto_Value
  ,C5.Order_Type
  ,C5.Criteria
  ,C5.Days_to_Expire
  ,C5.Expiration_Date
  ,C5.Lock_Date
  ,C5.Days_Until_Lockdate
  ,C5.Locken
  ,C5.Number_Of_Units_PMND
  ,C5.Number_Of_Units_PD
  , C5.Days_To_Sell_Stock
  , CASE when C5.Contract <> 'FD01' then NULL
  else SUM(C5.Days_To_Sell_Stock) OVER (PARTITION BY C5.SKU_Name,C5.Contract ORDER BY C5.RN ASC) end AS Days_To_Sell_Stock_SUM
  , CASE when C5.Contract <> 'FD01' then NULL
  else DATEADD(day,SUM(C5.Days_To_Sell_Stock) OVER (PARTITION BY C5.SKU_Name,C5.Contract ORDER BY C5.RN ASC),C5.DateKey) end AS Projection_OOS
  ,case when C5.Contract <> 'FD01' then NULL
   when C5.Lock_Date < DATEADD(day,SUM(C5.Days_To_Sell_Stock) OVER (PARTITION BY C5.SKU_Name,C5.Contract ORDER BY C5.RN ASC),C5.DateKey) then C5.Lock_Date 
   else DATEADD(day,SUM(C5.Days_To_Sell_Stock) OVER (PARTITION BY C5.SKU_Name,C5.Contract ORDER BY C5.RN ASC),C5.DateKey) end as Lock_VS_Projection_OOS

from          CTE_5 C5)
--select * from CTE_6
--where Contract='FD01'
--where SKU_Name='715A'

--CTE_7
--Berekenen Calc_Date. Dit veld is input voor berekning van Last_batch_vs_lock_date_next_batch

,CTE_7 as
(select *, 
      CASE when C6.Contract <> 'FD01' then NULL  
	  when lag(C6.Lock_VS_Projection_OOS)over (partition by C6.SKU_Name order by C6.SKU_Name,RN ) is null then C6.Lock_VS_Projection_OOS
	  else lag(C6.Lock_VS_Projection_OOS)over (partition by C6.SKU_Name order by C6.SKU_Name,RN ) end as Calc_Date
      ,CASE when C6.Contract <> 'FD01' then NULL 
	  when C6.RN=1 then C6.Days_Until_Lockdate else DATEDIFF(DAY, case when lag(C6.Lock_VS_Projection_OOS)over (partition by C6.SKU_Name order by C6.SKU_Name,RN ) is null then C6.Lock_VS_Projection_OOS
	  else lag(C6.Lock_VS_Projection_OOS)over (partition by C6.SKU_Name order by C6.SKU_Name,RN ) end,C6.Lock_Date) end as Last_batch_vs_lock_date_next_batch
	   
	  
from CTE_6 C6)
--select * from CTE_7
--where Contract like 'AVE%'
--where SKU_Name='715A'
--Berekening Expected_Obsolete en   Expected_Obsolete_Stock en Value_Obsolete_Stock

select *
,CASE when C7.Contract <> 'FD01' then NULL 
when C7.Last_batch_vs_lock_date_next_batch*C7.Number_Of_Units_PD < C7.Inventory_Netto_QTY then 'Problem' else 'OK' end as Expected_Obsolete 
,CASE when C7.Contract <> 'FD01' then NULL
 when C7.Last_batch_vs_lock_date_next_batch < 0 then C7.Inventory_Netto_QTY 
 when C7.Inventory_Netto_QTY-(C7.Last_batch_vs_lock_date_next_batch*C7.Number_Of_Units_PD)<=0 then 0 
 else C7.Inventory_Netto_QTY-(C7.Last_batch_vs_lock_date_next_batch*C7.Number_Of_Units_PD) end as Expected_Obsolete_Stock 
,ROUND(ISNULL(case when C7.Last_batch_vs_lock_date_next_batch < 0 then C7.Inventory_Netto_QTY 
      when C7.Inventory_Netto_QTY-(C7.Last_batch_vs_lock_date_next_batch*C7.Number_Of_Units_PD)<=0 then 0 else 
          C7.Inventory_Netto_QTY-(C7.Last_batch_vs_lock_date_next_batch*C7.Number_Of_Units_PD) end*C7.Inventory_Cost_Price,0),2) as Value_Obsolete_Stock
 from CTE_7 C7
 --where SKU_Name='715A'