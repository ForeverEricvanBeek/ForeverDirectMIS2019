



CREATE VIEW [RV].[Shelf_Life] AS

SELECT  ISNULL(AG.Category_Code,'Unknown') AS Category_Code
	   ,SK.SKU_Name
	   ,SK.SKU_Description
	   ,LT.Lot_Code
	   ,CONVERT(CHAR,LT.Expiration_Date,103) as Expiration_Date
	   ,IL.ILPN_TC_LPN_ID
	   ,LO.Location_Display_Location
	   ,LO.Location_Class_Description
	   ,LO.Location_Work_Group
	   ,IL.ILPN_LOCK_CODE 
       ,SUM(ST.Number_Of_Units) AS Number_Of_Units
  FROM [$(ForeverData01)].DM.F_Stock_Act ST
  INNER JOIN [$(ForeverData01)].DM.D_Aging_Category AG
  ON
  ST.D_Aging_Category_Skey=AG.D_Aging_Category_Skey
  INNER JOIN [$(ForeverData01)].DM.D_SKU SK
  ON
  SK.D_SKU_Skey=ST.D_SKU_Skey
  AND SK.Contract='FD01'
  INNER JOIN [$(ForeverData01)].DM.D_Lot_IFS LT
  ON
  LT.D_Lot_IFS_Skey=ST.D_Lot_IFS_Skey
  INNER JOIN [$(ForeverData01)].DM.D_ILPN IL
  ON
  IL.D_ILPN_Skey=ST.D_ILPN_Skey
  INNER JOIN [$(ForeverData01)].DM.D_WHS_Location LO
  ON
  LO.D_WHS_Location_Skey=ST.D_WHS_Location_Skey
  WHERE ST.Number_Of_Units <> 0
  GROUP BY 
  ISNULL(AG.Category_Code,'Unknown')
	   ,SK.SKU_Name
	   ,SK.SKU_Description
	   ,LT.Lot_Code
	   ,CONVERT(CHAR,LT.Expiration_Date,103)
	   ,IL.ILPN_TC_LPN_ID
	   ,LO.Location_Display_Location
	   ,LO.Location_Class_Description
	   ,LO.Location_Work_Group
	   ,IL.ILPN_LOCK_CODE