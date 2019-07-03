
CREATE VIEW dbo.CUSTOMER
AS

WITH ORD_CTE (Customer_ID,Customer_Last_Order,Customer_First_Order_Date,Customer_NumOf_Orders) AS (
SELECT
	X.Customer_ID
	, MAX(X.Customer_Order) AS Customer_Last_Order
	, MIN(X.CREATED_DTTM)	AS Customer_First_Order_Date
	, COUNT(*)				AS Customer_NumOf_Orders
FROM (
	SELECT
			dbo.fn_StripCharacters(ISNULL(OD.D_STATE_PROV,'0') + ISNULL(OD.D_POSTAL_CODE,'0') + ISNULL(OD.D_NAME,'0'), '^a-z0-9') + dbo.fn_StripCharacters(ISNULL(OD.D_ADDRESS_1,'0') + ISNULL(OD.D_ADDRESS_2,'0'), '^0-9') AS Customer_ID
			, OD.TC_ORDER_ID			AS Customer_Order
			, OD.CREATED_DTTM
	 FROM DWH.MANH.ORDERS AS OD
	 WHERE OD.ActInd = 'Y'
	 UNION ALL
	 SELECT
			dbo.fn_StripCharacters(ISNULL(OD.D_STATE_PROV,'0') + ISNULL(OD.D_POSTAL_CODE,'0') + ISNULL(OD.D_NAME,'0'), '^a-z0-9') + dbo.fn_StripCharacters(ISNULL(OD.D_ADDRESS_1,'0') + ISNULL(OD.D_ADDRESS_2,'0'), '^0-9') AS Customer_ID
			, OD.TC_ORDER_ID			AS Customer_Order
			, OD.CREATED_DTTM
	 FROM DWH.MANH_ARC.ORDERS AS OD
	 WHERE OD.ActInd = 'Y'
) X
GROUP BY
   X.Customer_ID
)

SELECT
	CAST(CC.Customer_ID	AS NVARCHAR(300))				AS Customer_ID
	, CAST(OD.D_NAME AS NVARCHAR(100))					AS Customer_Name
	, CAST(OD.D_ADDRESS_1 AS NVARCHAR(100))				AS Customer_Address1
	, CAST(OD.D_ADDRESS_2 AS NVARCHAR(100))				AS Customer_Address2
	, CAST(OD.D_CITY AS NVARCHAR(100))					AS Customer_City
	, CAST(OD.D_COUNTRY_CODE AS NVARCHAR(10))			AS Customer_Country_Code
	, CAST(OD.D_POSTAL_CODE	AS NVARCHAR(10))			AS Customer_Postal_Code
	, CAST(OD.D_STATE_PROV AS NVARCHAR(10))				AS Customer_State
	, CAST(OD.D_PHONE_NUMBER AS NVARCHAR(100))			AS Customer_Phone
	, CAST(OD.D_EMAIL AS NVARCHAR(256))					AS Customer_Email
	, CAST(CC.Customer_First_Order_Date AS DATETIME2(7))AS Customer_First_Order_Date
	, CAST(OD.CREATED_DTTM AS DATETIME2(7))				AS Customer_Last_Order_Date
	, CAST(CC.Customer_NumOf_Orders	AS INT)				AS Customer_NumOf_Orders
FROM ORD_CTE AS CC
INNER JOIN DWH.MANH.ORDERS AS OD
ON CC.Customer_Last_Order = OD.TC_ORDER_ID
AND OD.ActInd = 'Y'