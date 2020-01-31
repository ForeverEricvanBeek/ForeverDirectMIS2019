








CREATE VIEW [RV].[Shipments_Benelux]
AS
SELECT			
			   
                OD.Order_Pos_Number AS [Customer Number]   
			  , OL.OLPN_ID AS [Parcel Number]
			  ,cast(OD.Order_Create_Date as date) as [Order Create Date]
				 ,cast(OD.Order_Planned_Ship_Date as date) as [Planned Ship Date]
				, cast(OD.Order_Delivered_Date AS  date) as [Ship Cofirm Date]
     
			  ,  cast(OD.Order_Delivered_Date as date)	AS [Delivered Date (if available at logistix)]	
			  , SK.SKU_Name AS [Item Number]
              , SK.SKU_Description AS [Item Description]
			  , SK.Unit_Weight AS [Item Weight]
			   , SK.Weight_Type AS [Weight Type]
			  , SK.Unit_Volume AS [Item Volume]
			  , SK.Volume_Type as [Volume Type]
              , SUM(OB.Number_Of_Units_Shipped) AS [Shipped Quantity] 
              , SUM(OB.Number_Of_Units_Shipped) * Unit_Weight AS [Total Shipped Item Weight]
              , SUM(OB.Number_Of_Units_Shipped) * Unit_Volume AS [Total Shipped Item Volume]
              , CR.Country_Name AS [Country]
              , OLPN_Box_Size AS [Parcel Box Size]
              , OLPN_Weight	  AS [Total Parcel Weight (incl. Package material)]
			  
             
 FROM [$(ForeverData01)].[DM].[F_Outbound] OB
INNER JOIN [$(ForeverData01)].[DM].D_OLPN OL
       ON OL.D_OLPN_Skey = OB.D_OLPN_Skey
INNER JOIN [$(ForeverData01)].[DM].D_Order OD
  ON OD.D_Order_Skey = OB.D_Order_Skey
	AND YEAR(OD.Order_Create_Date) = YEAR( GETDATE())  
	AND MONTH(OD.Order_Create_Date) = MONTH(GETDATE())-1
INNER JOIN[$(ForeverData01)].[DM].D_SKU SK
       ON OB.D_SKU1_Skey = SK.D_SKU_Skey
       AND SK.Contract = 'FD01'
INNER JOIN [$(ForeverData01)].[DM].D_Order_Details DD
  ON  DD.Order_ID = OD.Order_ID AND DD.SKU_Name = SK.SKU_Name
INNER JOIN [$(ForeverData01)].[DM].D_Country CR
       ON CR.D_Country_Skey = OB.D_Country_Skey
  WHERE  CR.D_Country_Skey IN ( '21' , '166' , '135')
	
	

GROUP BY
       OD.Order_Create_Date
,		OD.Order_Planned_Ship_Date
,		OD.Order_Ship_Confirm_Date
,		OD.Order_Delivered_Date
,	   OD.Order_Pos_Number
,	   OL.OLPN_ID
,      OD.Order_ID
,		OD.Order_Type
,      SK.SKU_Name
,      SK.SKU_Description
	 , SK.Weight_Type
,      CR.Country_Name
,      OLPN_Box_Size
,      OLPN_Weight
,      OLPN_Volume
,SK.Volume_Type
,      SK.SKU_Size_Desc 
,      SK.Unit_Weight
,		SK.Unit_Volume