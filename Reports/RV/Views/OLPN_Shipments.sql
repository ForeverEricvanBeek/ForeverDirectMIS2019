




CREATE VIEW [RV].[OLPN_Shipments]
as
SELECT 
     
	 OD.[Order_Pos_Number] as Order_Pos_Number
	  ,OD.Order_Country_Code
      ,cast(cast(OD.[Order_Create_Date] as Date) as nvarchar(16)) as Order_Date
	  ,CONVERT(NVARCHAR(8),OD.[Order_Shipped_Date],112)as Shipped_Date
	  ,CU.Customer_Phone
	  ,CU.Customer_Email
	  ,OL.OLPN_ID
	  ,OL.OLPN_X_Y
	  ,OL.OLPN_Tracking_Code
	  ,OL.OLPN_Box_Size
	  ,OL.OLPN_Container_Description
	  ,OL.OLPN_Volume
	  ,OL.OLPN_Weight
  FROM [$(ForeverData01)].[DM].[D_Order] OD
  join [$(ForeverData01)].[DM].[D_OLPN] OL
  on
  OD.Order_ID=OL.OLPN_Order_ID
  and OD.IsDeleted='0'
  and OL.IsDeleted='0'
  join [$(ForeverData01)].[DM].[D_Customer] CU 
  on 
  OD.Order_Customer_ID=CU.Customer_ID
  and CU.IsDeleted='0'
  where OD.Order_Type='OF'