





CREATE VIEW [RV].[Obsolescense]
AS
SELECT  CONVERT(VARCHAR,DateKey,103) AS DateKey
      ,OB.[Contract]
      ,[RN]
      ,OB.[SKU_Name]
	  ,SK.Generic_SKU_Name
      ,[Lot_Code]
      ,OB.[SKU_Description]
      ,CAST([Inventory_Netto_QTY] as decimal (32,3)) as Inventory_Netto_QTY
      ,CAST([Percentage] as decimal (32,3)) as Percentage
      ,CAST([Sum_Netto_Qty] as decimal (32,3)) as Sum_Netto_Qty
      ,CAST([Inventory_Cost_Price] as decimal (32,3)) as Inventory_Cost_Price
      ,CAST([Inventory_Netto_Value] as decimal (32,3)) as Inventory_Netto_Value 
      ,OB.[Order_Type]
      ,[Criteria]
      ,[Days_to_Expire]
      ,CONVERT(VARCHAR,[Expiration_Date],103) AS Expiration_Date
      ,CONVERT(VARCHAR,[Lock_Date],103) AS Lock_Date
      ,[Days_Until_Lockdate]
      ,[Locken]
      ,CAST([Number_Of_Units_PMND] as decimal (32,3)) as Number_Of_Units_PMND
      ,CAST([Number_Of_Units_PD] as decimal (32,2)) as Number_Of_Units_PD
      ,CAST([Days_To_Sell_Stock] as decimal (32,0)) as Days_To_Sell_Stock
      ,CAST([Days_To_Sell_Stock_SUM] as decimal (32,0)) as Days_To_Sell_Stock_SUM 
      ,CONVERT(VARCHAR,[Projection_OOS],103) AS Projection_OOS
      ,CONVERT(VARCHAR,[Lock_VS_Projection_OOS],103) AS Lock_VS_Projection_OOS
      ,CONVERT(VARCHAR,[Calc_Date],103) AS Calc_Date
      ,[Last_batch_vs_lock_date_next_batch]
      ,[Expected_Obsolete]
      ,CAST([Expected_Obsolete_Stock] as decimal (32,2)) as Expected_Obsolete_Stock
      ,CAST([Value_Obsolete_Stock] as decimal (32,2)) as Value_Obsolete_Stock 
      
  FROM [$(ForeverData01)].[DM].[F_Obsolete_Report] OB
  join [$(ForeverData01)].[DM].[D_SKU] SK
  ON
  SK.SKU_Name=OB.SKU_Name
  AND
  SK.Contract='FD01'
  AND
  SK.Accounting_Group_Desc='Finished Goods'
  and OB.DateKey=CAST(GETDATE()-1 as date)