



CREATE VIEW [FDV].[VW_D_Price_List_SKU] as
--RN=1 is the most actual Price per SKU per Pricelist
WITH CTE_1 as (
SELECT [PRICE_LIST_NO]
      ,[CATALOG_NO]
      ,[MIN_QUANTITY]
      ,cast([VALID_FROM_DATE] as date) as VALID_FROM_DATE
	  ,cast(LEAD(VALID_FROM_DATE,1,VALID_FROM_DATE)
	       over 
		   (partition by PRICE_LIST_NO, CATALOG_NO
		    order by VALID_FROM_DATE,PRICE_LIST_NO, CATALOG_NO) as date) as CALC_DATE
      ,[BASE_PRICE]
      ,[SALES_PRICE]
      
  FROM [IFS].[SALES_PRICE_LIST_PART]
  where 1=1 
  and [BASE_PRICE_SITE]='FD01'
  and IsDeleted='N' 
  and ActInd='Y'  
  )
  
  select C1.PRICE_LIST_NO as Price_List_NO
  ,C1.CATALOG_NO as Part_NO
  ,ROW_NUMBER() over (partition by C1.PRICE_LIST_NO,C1.CATALOG_NO order by cast(C1.VALID_FROM_DATE as date )desc) as RN
  ,cast(C1.VALID_FROM_DATE as date) as Valid_From_Date
  ,case when C1.VALID_FROM_DATE=C1.CALC_DATE then cast(getdate() as date) else cast(C1.CALC_DATE as date) end as Valid_Till_Date
  ,C1.BASE_PRICE As Base_Price
  ,C1.SALES_PRICE as Sales_Price
  from CTE_1 C1
  union all
  select '-1','-1','-1','1965-04-26',null,null,null