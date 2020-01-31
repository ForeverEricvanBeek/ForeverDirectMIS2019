

CREATE VIEW [RV].[Shipped_Orders]
AS

SELECT  OD.Order_ID ORDER_ID
       ,CASE WHEN OD.Order_Facility_Code = '3016' AND CAST(OD.Order_Shipped_Date AS DATE) < '2018-11-15' THEN SUBSTRING(OD.Order_Pos_Number,4,15)
		ELSE SUBSTRING(OD.Order_Pos_Number,3,15) END AS  POS_ORDER_NR
	   ,OD.Order_Pos_Number POS_FUL
	   ,CM.Customer_Postal_Code POSTAL_CODE
	   ,OD.Order_Facility_Code  FACILITY_CODE
	   ,TR.Transporter_Code CARRIER_CODE
	   ,CAST(OD.Order_Shipped_Date AS DATE) SHIPPING_DATE
	   ,YEAR(OD.Order_Shipped_Date) YEAR
	   ,MONTH(OD.Order_Shipped_Date) MONTH    
  FROM [$(ForeverData01)].[DM].[F_Outbound] OB
  JOIN [$(ForeverData01)].[DM].[D_Order] OD
  ON
  OB.D_Order_Skey = OD.D_Order_Skey
  JOIN [$(ForeverData01)].[DM].[D_Transporter] TR
  ON
  TR.D_Transporter_Skey = OB.D_Transporter_Skey
  JOIN [$(ForeverData01)].[DM].[D_Customer] CM
  ON
  CM.D_Customer_Skey = OB.D_Customer_Skey