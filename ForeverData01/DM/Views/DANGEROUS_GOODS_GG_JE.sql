



  CREATE VIEW [DM].[DANGEROUS_GOODS_GG_JE]
  AS
    with cte_ord_tot_pwk (wk,country,tot_ord_wk) AS
  (
 select  DATENAME(ISO_WEEK,O.Order_Shipped_Date) as wk, O.Order_Country_Code as Country_Code, count(distinct O.Order_ID) as 'tot_ord_wk' 
  FROM DM.D_Order as O
   where  cast(O.Order_Shipped_Date as date) between '20180101' and CONVERT(date, GETDATE())
  and O.Order_Country_Code in ('DE')
  group by 
   DATENAME(ISO_WEEK,O.Order_Shipped_Date),
   O.Order_Country_Code
   ),
  cte_ord_pwk_dg (wk, dag_van_de_week, tot_dg_pg ) AS
  (
   select 
		DATENAME(ISO_WEEK,O.Order_Shipped_Date) as wk
		,CASE		 
				when DATENAME(WEEKDAY, O.Order_Shipped_Date)='Monday' then 1
				when DATENAME(WEEKDAY, O.Order_Shipped_Date)='Tuesday' then 2
				when DATENAME(WEEKDAY, O.Order_Shipped_Date)='Wednesday' then 3
				when DATENAME(WEEKDAY, O.Order_Shipped_Date)='Thursday' then 4
				when DATENAME(WEEKDAY, O.Order_Shipped_Date)='Friday' then 5
				when DATENAME(WEEKDAY, O.Order_Shipped_Date)='Saturday' then 6
				when DATENAME(WEEKDAY, O.Order_Shipped_Date)='Sunday' then 7
				end 
		as 'dag vd week'
		,count(distinct O.Order_ID) as 'tot_dg_pg'
  FROM DM.D_Order as O
  join DM.D_OLPN as L
	on O.Order_ID=L.OLPN_Order_ID 
	and L.OLPN_Dangerous_Goods <> 0
	and O.Order_Country_Code in ('DE')
	and cast(O.Order_Shipped_Date as date) between '20180101' and CONVERT(date, GETDATE())
  group by 
  DATENAME(ISO_WEEK,O.Order_Shipped_Date) 
		,CASE		 
				when DATENAME(WEEKDAY, O.Order_Shipped_Date)='Monday' then 1
				when DATENAME(WEEKDAY, O.Order_Shipped_Date)='Tuesday' then 2
				when DATENAME(WEEKDAY, O.Order_Shipped_Date)='Wednesday' then 3
				when DATENAME(WEEKDAY, O.Order_Shipped_Date)='Thursday' then 4
				when DATENAME(WEEKDAY, O.Order_Shipped_Date)='Friday' then 5
				when DATENAME(WEEKDAY, O.Order_Shipped_Date)='Saturday' then 6
				when DATENAME(WEEKDAY, O.Order_Shipped_Date)='Sunday' then 7
				end 
 )
 select pwk.wk as 'week',pwk.country as 'country code',dag_van_de_week as 'dag van de week', pw.tot_dg_pg as 'orders dg per dag', pwk.tot_ord_wk as 'totaal orders per week', cast(round(cast(cast(pw.tot_dg_pg as numeric(9,2))/(cast(pwk.tot_ord_wk as numeric(9,2)))as numeric(9,2)),3)*100 as nchar(10)) + '' + '%' as 'percentage tov week'
 from  cte_ord_tot_pwk pwk 
  left join cte_ord_pwk_dg pw
 on pwk.wk=pw.wk;