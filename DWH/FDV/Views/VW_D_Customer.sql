CREATE VIEW FDV.VW_D_Customer
AS

SELECT
   Customer_ID
   , CU.Customer_Name
   , CU.Customer_Address1
   , CU.Customer_Address2
   , CU.Customer_City
   , CU.Customer_Country_Code
   , CU.Customer_Postal_Code
   , CU.Customer_State
   , MIN(CU.Customer_First_Order_Date) as Customer_First_Order_Date
   , MAX(CU.Customer_Last_Order_Date) as Customer_Last_Order_Date
   , SUM(CU.Customer_NumOf_Orders) as Customer_NumOf_Orders
FROM EXTRA.CUSTOMER AS CU
WHERE CU.ActInd = 'Y'
group by 
Customer_ID
   , CU.Customer_Name
   , CU.Customer_Address1
   , CU.Customer_Address2
   , CU.Customer_City
   , CU.Customer_Country_Code
   , CU.Customer_Postal_Code
   , CU.Customer_State
UNION ALL
SELECT		'-1'
			,'Unknown'
			, null
			, null
			, null
			, null
			, null
			, null
			, null
			, null
			, null