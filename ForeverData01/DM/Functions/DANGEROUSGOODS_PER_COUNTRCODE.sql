CREATE FUNCTION [DM].[DANGEROUSGOODS_PER_COUNTRCODE]
                 ( @CountryCode1 varchar(10))
RETURNS table
AS
RETURN (
  
  with cte_ord_tot_pwk (wk,country,tot_ord_wk) AS
  (
  select     DATENAME(ISO_WEEK,O.Order_Planned_Ship_Date) as wk
			,O.Order_Country_Code as Country_Code
			,count(distinct O.Order_ID) as 'tot_ord_wk'
  FROM DM.D_Order as O
  where cast(O.Order_Planned_Ship_Date as date) between '20180101' and CONVERT(date, GETDATE())
  and O.Order_Country_Code in (@CountryCode1)
  group by 
  DATENAME(ISO_WEEK,O.Order_Planned_Ship_Date)
  ,O.Order_Country_Code
  ),
   
  cte_ord_pwk_dg (wk, dag_van_de_week, tot_dg_pg ) AS
  (
  select 
		DATENAME(ISO_WEEK,O.Order_Planned_Ship_Date) as wk
		,CASE		 
				when DATENAME(WEEKDAY, O.Order_Planned_Ship_Date)='Monday' then 1
				when DATENAME(WEEKDAY, O.Order_Planned_Ship_Date)='Tuesday' then 2
				when DATENAME(WEEKDAY, O.Order_Planned_Ship_Date)='Wednesday' then 3
				when DATENAME(WEEKDAY, O.Order_Planned_Ship_Date)='Thursday' then 4
				when DATENAME(WEEKDAY, O.Order_Planned_Ship_Date)='Friday' then 5
				when DATENAME(WEEKDAY, O.Order_Planned_Ship_Date)='Saturday' then 6
				when DATENAME(WEEKDAY, O.Order_Planned_Ship_Date)='Sunday' then 7
				end 
		as 'dag vd week'
		,count(distinct O.Order_ID) as 'tot_dg_pg'
  FROM DM.D_Order as O
  join DM.D_OLPN as L ON
  O.Order_ID=L.OLPN_Order_ID 
  and L.OLPN_Dangerous_Goods <> 0
  and O.Order_Country_Code in (@CountryCode1)
  and cast(O.Order_Planned_Ship_Date as date) between '20180101' and CONVERT(date, GETDATE()) 
  group by 
  DATENAME(ISO_WEEK,O.Order_Planned_Ship_Date)
  ,CASE		 
				when DATENAME(WEEKDAY, O.Order_Planned_Ship_Date)='Monday' then 1
				when DATENAME(WEEKDAY, O.Order_Planned_Ship_Date)='Tuesday' then 2
				when DATENAME(WEEKDAY, O.Order_Planned_Ship_Date)='Wednesday' then 3
				when DATENAME(WEEKDAY, O.Order_Planned_Ship_Date)='Thursday' then 4
				when DATENAME(WEEKDAY, O.Order_Planned_Ship_Date)='Friday' then 5
				when DATENAME(WEEKDAY, O.Order_Planned_Ship_Date)='Saturday' then 6
				when DATENAME(WEEKDAY, O.Order_Planned_Ship_Date)='Sunday' then 7
				end 
   ),
  
  cte_gem_dg_pd (dag_van_de_week, gem_dg_pg ) AS
  (select	dag_van_de_week as 'dag van de week'
			,avg(tot_dg_pg) as 'gem dg per dag' 
  FROM cte_ord_pwk_dg
  group by dag_van_de_week
  )
  
 select  pwk.wk as 'week'
		,pwk.country as 'country code'
		,pw.dag_van_de_week as 'dag van de week'
		,pw.tot_dg_pg as 'aantal dg orders per dag'
		,gem.gem_dg_pg as 'aantal dg orders gemiddeld per dag'
		,pwk.tot_ord_wk as 'totaal orders incl dg orders per week'
		,cast(round(cast(cast(pw.tot_dg_pg as numeric(7,3))/(cast(pwk.tot_ord_wk as numeric(7,3)))as numeric(7,3)),4)*100 as nchar(10)) + '' + '%' 
		as 'percentage dg tov totaal orders deze week'
 FROM  cte_ord_tot_pwk pwk 
 left join cte_ord_pwk_dg pw ON
 pwk.wk=pw.wk
 left join cte_gem_dg_pd gem ON
 gem.dag_van_de_week=pw.dag_van_de_week
 );