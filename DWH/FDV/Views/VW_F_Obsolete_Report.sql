



CREATE VIEW [FDV].[VW_F_Obsolete_Report]
AS
With CTE_1 as (
       Select  
         OB.SKU_Name
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
       FROM          ForeverData01.DM.F_Obsolescense OB
       LEFT JOIN     ForeverData01.DM.D_SKU SK
       ON                   OB.SKU_Name = SK.SKU_Name
	  
)

,CTE_2 AS (
       /*select 
         QTY.SKU_Name
         , SUM(QTY.Number_Of_Units) Number_Of_Units
       from (
              select 
                SK.SKU_Name
                , ISNULL(SUM(OB.Number_Of_Units_Shipped),0) Number_Of_Units
              from        ForeverData01.DM.D_SKU SK
              left join ForeverData01.DM.F_Outbound OB
			  on                   OB.D_SKU1_Skey=SK.D_SKU_Skey
			  and				   SK.IsDeleted=0
			  and				  cast(cast(OB.DateKey as varchar)as date) >= cast(dateadd(month,-6,getdate()) as datetime)
			  join       ForeverData01.[DM].[D_Order] od
			  on                   OB.D_Order_Skey=od.D_Order_Skey
              and                  od.Order_Facility_Code NOT like '%SCR%'
              and                  od.Order_Facility_Code NOT like '%SAM%'
              and                  od.Order_Facility_Code NOT like '%SITA%'
              group by 
			   SK.SKU_Name
      
       ) QTY
	 --where QTY.SKU_Name='462'
       group by 
         QTY.SKU_Name

		    union all

       SELECT 
         SKU_Name
         , cast(sum(Requested_QTY)-sum(In_Work_QTY) as float) Number_Of_Units   
       FROM          ForeverData01.DM.D_Work_Orders
       where      Create_Date_Time  >= cast(dateadd(month,-6,getdate()) as datetime)
       and                  FU_SKU is null
       and                  Status ='CLOSED'
	   --and   SKU_Name='462'
       group by
         SKU_Name
       having 
         cast(sum(Requested_QTY)-sum(In_Work_QTY) as float)>0*/
select 
         QTY.SKU_Name
         , QTY.Number_Of_Units Number_Of_Units
          from (
              select 
                SK.SKU_Name
                , ISNULL(OB.Number_Of_Units_Shipped,0) Number_Of_Units
              from       ForeverData01.DM.F_Outbound OB
              right join    ForeverData01.DM.D_SKU SK
			  on                   SK.D_SKU_Skey=OB.D_SKU1_Skey
			  and				   SK.IsDeleted=0
			  --and				  cast(cast(OB.DateKey as varchar)as date) >= cast(dateadd(month,-6,getdate()) as datetime)
			  --where OB.D_Order_Skey not in (SELECT D_Order_Skey 
			  --										from ForeverData01.[DM].[D_Order] od
			 --										where      od.Order_Facility_Code  like '%SCR%'
			--										or         od.Order_Facility_Code  like '%SAM%'
			--										or         od.Order_Facility_Code  like '%SITA%')
			  where cast(cast(OB.DateKey as varchar)as date) >= cast(dateadd(month,-6,getdate()) as datetime) --between '2018-07-17' and '2019-01-17'
			  and OB.D_Order_Skey not in (SELECT D_Order_Skey 
			  										from ForeverData01.[DM].[D_Order] od
			 										where      od.Order_Facility_Code  like '%SCR%'
													or         od.Order_Facility_Code  like '%SAM%'
													or         od.Order_Facility_Code  like '%SITA%')

             -- group by 
			  -- SK.SKU_Name
      
       ) QTY
	   --where QTY.SKU_Name='462'
      -- group by 
       --QTY.SKU_Name
	   --where QTY.Number_Of_Units=0
		    union all

       SELECT 
         SKU_Name
         , cast(sum(Requested_QTY)-sum(In_Work_QTY) as float) Number_Of_Units   
       FROM          ForeverData01.DM.D_Work_Orders
       where      Create_Date_Time >= cast(dateadd(month,-6,getdate()) as datetime) --between '2018-07-17' and '2019-01-17'
       and                  FU_SKU is null
       and                  Status ='CLOSED'
	   --and   SKU_Name='462'
       group by
         SKU_Name
       having 
         cast(sum(Requested_QTY)-sum(In_Work_QTY) as float)>0


)

,CTE_3 as (
       Select 
         C1.SKU_Name
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
         , ROUND(sum(C2.Number_Of_Units)/6,2) as Number_Of_Units_PMND
         , ROUND(sum(C2.Number_Of_Units)/26.428/5,2) as Number_Of_Units_PD
		 , case when sum(C2.Number_Of_Units)= 0 then 0
		        when CEILING(C1.Inventory_Netto_QTY/ROUND(sum(C2.Number_Of_Units)/26.42/5,2)) >800000 then 800000
				else CEILING(C1.Inventory_Netto_QTY/ROUND(sum(C2.Number_Of_Units)/26.42/5,2)) end as Days_To_Sell_Stock 
       from          CTE_1 C1
       right join    CTE_2 C2
       On            C1.SKU_Name=C2.SKU_Name
       group by 
         C1.SKU_Name
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

,CTE_4 as (
       Select 
         OB.SKU_Name
         , cast(SUM(OB.Inventory_Netto_QTY) as float) Sum_Netto_Qty
       from          ForeverData01.DM.F_Obsolescense OB
       group BY 
         OB.SKU_Name
)
   
,CTE_5 as (
       select 
         cast(getdate()-1 as date) as DateKey
         ,C3.SKU_Name
         , ROW_NUMBER () over (partition by C3.SKU_Name order by  C3.Lock_Date asc) as RN
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
     
)


,CTE_6 as (
select 
  C5.DateKey
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
  , SUM(C5.Days_To_Sell_Stock) OVER (PARTITION BY C5.SKU_Name ORDER BY C5.RN ASC) AS Days_To_Sell_Stock_SUM
  , DATEADD(day,SUM(C5.Days_To_Sell_Stock) OVER (PARTITION BY C5.SKU_Name ORDER BY C5.RN ASC),C5.DateKey) AS Projection_OOS
  ,case when C5.Lock_Date < DATEADD(day,SUM(C5.Days_To_Sell_Stock) OVER (PARTITION BY C5.SKU_Name ORDER BY C5.RN ASC),C5.DateKey) then C5.Lock_Date 
   else DATEADD(day,SUM(C5.Days_To_Sell_Stock) OVER (PARTITION BY C5.SKU_Name ORDER BY C5.RN ASC),C5.DateKey) end as Lock_VS_Projection_OOS

from          CTE_5 C5)
--where  C5.Days_To_Sell_Stock < 800000 )

--select * from CTE_6 C6
--where C6.Days_To_Sell_Stock <800000
--where C6.SKU_Name='FD037OF'
--and C6.Lot_Code='310518-176'
--order by 20 desc

,CTE_7 as
(select *, 
      case when lag(C6.Lock_VS_Projection_OOS)over (partition by C6.SKU_Name order by C6.SKU_Name,RN ) is null then C6.Lock_VS_Projection_OOS
	  else lag(C6.Lock_VS_Projection_OOS)over (partition by C6.SKU_Name order by C6.SKU_Name,RN ) end as Calc_Date
      ,case when C6.RN=1 then C6.Days_Until_Lockdate else DATEDIFF(DAY, case when lag(C6.Lock_VS_Projection_OOS)over (partition by C6.SKU_Name order by C6.SKU_Name,RN ) is null then C6.Lock_VS_Projection_OOS
	  else lag(C6.Lock_VS_Projection_OOS)over (partition by C6.SKU_Name order by C6.SKU_Name,RN ) end,C6.Lock_Date) end as Last_batch_vs_lock_date_next_batch
	   
	  
from CTE_6 C6)

select *
,case when C7.Last_batch_vs_lock_date_next_batch*C7.Number_Of_Units_PD < C7.Inventory_Netto_QTY then 'Problem' else 'OK' end as Expected_Obsolete 
,case when C7.Last_batch_vs_lock_date_next_batch < 0 then C7.Inventory_Netto_QTY 
      when C7.Inventory_Netto_QTY-(C7.Last_batch_vs_lock_date_next_batch*C7.Number_Of_Units_PD)<=0 then 0 else 
          C7.Inventory_Netto_QTY-(C7.Last_batch_vs_lock_date_next_batch*C7.Number_Of_Units_PD) end as Expected_Obsolete_Stock 
,ROUND(ISNULL(case when C7.Last_batch_vs_lock_date_next_batch < 0 then C7.Inventory_Netto_QTY 
      when C7.Inventory_Netto_QTY-(C7.Last_batch_vs_lock_date_next_batch*C7.Number_Of_Units_PD)<=0 then 0 else 
          C7.Inventory_Netto_QTY-(C7.Last_batch_vs_lock_date_next_batch*C7.Number_Of_Units_PD) end*C7.Inventory_Cost_Price,0),2) as Value_Obsolete_Stock
 from CTE_7 C7
-- where SKU_Name='462'
-- order by Days_To_Sell_Stock desc