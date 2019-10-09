


CREATE VIEW [RV].[SKU_Expire_Next_15M]
as
SELECT 
      SK.[SKU_Name]
	  ,SK.SKU_Description
	  ,ISNULL(CR.Aantal_Countries,0) Num_of_Countries
      ,[Lot_Code]
      ,[Inventory_Netto_QTY] Inventory_QTY
      ,[Inventory_Cost_Price]
      ,[Inventory_Netto_Value] Inventory_Value
      ,[Expiration_Date]
      ,[Days_to_Expire]
      
  FROM [$(ForeverData01)].[DM].[F_Obsolescense] OB
  join [$(ForeverData01)].[DM].[D_SKU] SK
  on SK.SKU_Name=OB.SKU_Name
  and SK.Accounting_Group_ID='10' --Finished_goods
  left join [$(DWH)].FDV.VW_D_Sales_part_cross_ref CR
  on CR.PART_NO=OB.SKU_Name
 -- where Expiration_Date between  DATEADD(DAY,1,EOMONTH(GETDATE(),-1)) and DATEADD(DAY,1,EOMONTH(GETDATE(),+14))  --<= DATEADD(month,15,getdate())
 where Expiration_Date between DATEADD(DAY,1,EOMONTH(GETDATE()))and DATEADD(DAY,1,EOMONTH(GETDATE(),+15))
  group by 
      SK.[SKU_Name]
	  ,CR.Aantal_Countries
      ,[Lot_Code]
      ,[Inventory_Netto_QTY]
      ,[Inventory_Cost_Price]
      ,[Inventory_Netto_Value]
      ,[Expiration_Date]
      ,[Days_to_Expire]
	  ,SK.SKU_Description