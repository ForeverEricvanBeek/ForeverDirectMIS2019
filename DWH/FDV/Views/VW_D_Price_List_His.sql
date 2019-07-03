



CREATE VIEW [FDV].[VW_D_Price_List_His] as

WITH CTE_1 as

(SELECT 
       [CUSTOMER_NO] as [Customer_ID]
      ,[SALES_PRICE_GROUP_ID] as Sales_Price_Group_ID
      ,[PRICE_LIST_NO] AS Price_List_NO
      ,[Eff_Date] as [Start_Date] 
	  ,LEAD([Eff_Date],1,[Eff_Date])
	   over 
	  (partition by [CUSTOMER_NO]
	   order by [Eff_Date],[CUSTOMER_NO]) as End_Date
      
  FROM [IFS].[CUSTOMER_PRICELIST]
  where 1=1
  and [SALES_PRICE_GROUP_ID]='FD')

  select C1.Customer_ID
  ,C1.Sales_Price_Group_ID
  ,C1.Price_List_NO
  ,C1.[Start_Date]
  ,Case when C1.Start_Date=C1.End_Date then cast(getdate() as date) else End_Date end as End_Date
  from CTE_1 C1
  
  union all
  select '-1',null,'-1','1965-04-26','1965-04-26'