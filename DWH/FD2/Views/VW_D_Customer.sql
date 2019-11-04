
CREATE VIEW [FD2].[VW_D_Customer]
AS

SELECT
   CU.Customer_ID								AS Customer_ID
   , CU.Customer_Name						AS Customer_Name
   , CU.Customer_Address1					AS Customer_Address1
   , CU.Customer_Address2					AS Customer_Address2
   , CU.Customer_City						AS Customer_City
   , CU.Customer_Country_Code				AS Customer_Country_Code
   , CU.Customer_Postal_Code				AS Customer_Postal_Code
   , CU.Customer_State						AS Customer_State
   , ISNULL(CU.Customer_Phone,'NA')			AS Customer_Phone
   , ISNULL(CU.Customer_Email,'NA')			AS Customer_Email
   , MIN(CU.Customer_First_Order_Date)		AS Customer_First_Order_Date
   , MAX(CU.Customer_Last_Order_Date)		AS Customer_Last_Order_Date
   , SUM(CU.Customer_NumOf_Orders)			AS Customer_NumOf_Orders
FROM			EXTRA.CUSTOMER CU
WHERE			CU.ActInd = 'Y'
GROUP BY
   CU.Customer_ID
   , CU.Customer_Name
   , CU.Customer_Address1
   , CU.Customer_Address2
   , CU.Customer_City
   , CU.Customer_Country_Code
   , CU.Customer_Postal_Code
   , CU.Customer_State
   , CU.Customer_Phone
   , CU.Customer_Email

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
			,null
			,null