/****** Script for SelectTopNRows command from SSMS  ******/
create view [FDV].[VW_D_Sales_part_cross_ref] as

WITH CTE_1 as 
(SELECT 
      distinct(SCR.[CATALOG_NO]) as PART_NO
	  ,CI.COUNTRY
	  ,row_number () over (partition by SCR.[CATALOG_NO] order by SCR.[CATALOG_NO]) as Row_No
      ,CI.COUNTRY_DB as Country_Code
  FROM [IFS].[SALES_PART_CROSS_REFERENCE] SCR
  left join [IFS].[CUSTOMER_INFO] CI
  ON
  SCR.CUSTOMER_NO=CI.CUSTOMER_ID
  and CI.ActInd='Y'
  and SCR.ActInd='Y'
  where CI.COUNTRY is not null
  group by SCR.CATALOG_NO,CI.COUNTRY,CI.COUNTRY_DB
  )
  ,CTE_2 as
  ( select C1.PART_NO, MAX(C1.Row_No) as Aantal_Countries
  from CTE_1 C1
  group by C1.PART_NO)

select  C1.PART_NO, C1.COUNTRY,C1.Country_Code,1 as Teller, C2.Aantal_Countries
from CTE_1 C1
join CTE_2 C2
on 
C1.PART_NO=C2.PART_NO