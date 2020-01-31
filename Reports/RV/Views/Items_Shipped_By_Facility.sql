

CREATE VIEW [RV].[Items_Shipped_By_Facility]
AS
SELECT OD.Order_Facility_Code			AS Facility_ID
      ,YEAR(OD.Order_Shipped_Date)		AS Year
      ,MONTH(OD.Order_Shipped_Date)		AS Month
      ,SK.SKU_Name
      ,SUM([Number_Of_Units_Shipped])	AS Number_Of_Units_Shipped
            
  FROM [$(ForeverData01)].[DM].[F_Outbound] OB
  INNER JOIN [$(ForeverData01)].[DM].[D_Order] OD
  ON
  OB.D_Order_Skey = OD.D_Order_Skey

  INNER JOIN [$(ForeverData01)].[DM].[D_SKU] SK
  ON
  OB.D_SKU1_Skey = SK.D_SKU_Skey
  AND
  SK.Contract = 'FD01'
  GROUP BY  OD.Order_Facility_Code 
			,YEAR(OD.Order_Shipped_Date) 
			,MONTH(OD.Order_Shipped_Date)
			,SK.SKU_Name