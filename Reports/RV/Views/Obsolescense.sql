
CREATE VIEW [RV].[Obsolescense]
AS
--Ophalen van de obsolescense die vallen onder de Finish Goods
       SELECT  CONVERT(VARCHAR,DateKey,103) AS DateKey
      ,OB.[Contract]
      ,[RN]
      ,OB.[SKU_Name]
	  ,CASE WHEN Y.Purchase_SKU_Code IS NULL AND  Z.Purchase_SKU_Code IS NULL THEN OB.SKU_Name 
	        WHEN Y.Purchase_SKU_Code IS NULL AND  Z.Purchase_SKU_Code IS NOT NULL THEN  Z.Purchase_SKU_Code
			WHEN Y.Purchase_SKU_Code IS NOT NULL THEN Y.Purchase_SKU_Code
			END																		AS	Purchase_SKU_Code
      ,[Lot_Code]
      ,OB.[SKU_Description]
      ,CAST([Inventory_Netto_QTY] AS decimal (32,3)) AS Inventory_Netto_QTY
      ,CAST([Percentage] AS decimal (32,3)) AS Percentage
      ,CAST([Sum_Netto_Qty] AS decimal (32,3)) AS Sum_Netto_Qty
      ,CAST([Inventory_Cost_Price] AS decimal (32,3)) AS Inventory_Cost_Price
      ,CAST([Inventory_Netto_Value] AS decimal (32,3)) AS Inventory_Netto_Value 
      ,OB.[Order_Type]
      ,[Criteria]
      ,[Days_to_Expire]
      ,CONVERT(VARCHAR,[Expiration_Date],103) AS Expiration_Date
      ,CONVERT(VARCHAR,[Lock_Date],103) AS Lock_Date
      ,[Days_Until_Lockdate]
      ,[Locken]
      ,CAST([Number_Of_Units_PMND] AS decimal (32,3)) AS Number_Of_Units_PMND
      ,CAST([Number_Of_Units_PD] AS decimal (32,2)) AS Number_Of_Units_PD
      ,CAST([Days_To_Sell_Stock] AS decimal (32,0)) AS Days_To_Sell_Stock
      ,CAST([Days_To_Sell_Stock_SUM] AS decimal (32,0)) AS Days_To_Sell_Stock_SUM 
      ,CONVERT(VARCHAR,[Projection_OOS],103) AS Projection_OOS
      ,CONVERT(VARCHAR,[Lock_VS_Projection_OOS],103) AS Lock_VS_Projection_OOS
      ,CONVERT(VARCHAR,[Calc_Date],103) AS Calc_Date
      ,[Last_batch_vs_lock_date_next_batch]
      ,[Expected_Obsolete]
      ,CAST([Expected_Obsolete_Stock] AS decimal (32,2)) AS Expected_Obsolete_Stock
      ,CAST([Value_Obsolete_Stock] AS decimal (32,2)) AS Value_Obsolete_Stock 
      
  FROM [$(ForeverData01)].[DM].[F_Obsolete_Report] OB
  INNER JOIN [$(ForeverData01)].[DM].[D_SKU] SK
  ON
  SK.SKU_Name = OB.SKU_Name
  AND
  SK.Contract = 'FD01'
  AND
  SK.Accounting_Group_Desc = 'Finished Goods'
  AND OB.DateKey=CAST(GETDATE()-1 as date)
  --Inkoop sku ophalen van manufactured items uit de F_BOM
  LEFT JOIN  (SELECT [Sales_SKU_Code]
			 ,[Purchase_SKU_Code]
			 FROM [$(ForeverData01)].[DM].[F_Bom] B1
			 INNER JOIN [$(ForeverData01)].[DM].[D_SKU] SK
			 ON		Sales_SKU_Code=SKU_Name
			 AND		SK.FAM_Prod_ID NOT IN ('4','9') 
			 AND		SK.Contract = 'FD01'
			 AND		B1.Purchase_SKU_Code IN (select SKU_Name from [$(ForeverData01)].[DM].[D_SKU]
											     WHERE Accounting_Group_Desc = 'Finished Goods'
											     AND Contract = 'FD01')) Y ON Y.Sales_SKU_Code=OB.[SKU_Name]
  --Inkoop sku ophalen van Purchased Raws uit de D_SKU
  LEFT JOIN (SELECT SK1.SKU_Name AS Sales_SKU_Code 
 			,SK1.SKU_Name AS Purchase_SKU_Code
 			 FROM [$(ForeverData01)].[DM].[D_SKU] SK1
 			 WHERE SK1.Type_Code LIKE 'Purchased%'
             AND SK1.Accounting_Group_Desc = 'Finished Goods' 
			 AND Contract = 'FD01' ) Z ON Z.Sales_SKU_Code = OB.SKU_Name 
            -- WHERE OB.SKU_Name in ('061UK','061', '077SA','061LA','034SA','015SA')   --'7343EUOF' --'061LA'--'7343EUOF' --is NULL