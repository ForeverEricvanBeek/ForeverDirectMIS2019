



CREATE VIEW [FDV].[VW_D_Price_List]
AS


SELECT
	 A.Price_List_No,
	 A.Catalog_No, 
	 A.Sales_Price,
	 A.Price_List_Status,
	 Valid_Date,
	 Customer_No,
	 Sales_Price_Group_ID
FROM (
		SELECT	PLP.PRICE_LIST_NO as Price_List_No
              , PLP.CATALOG_NO as Catalog_No
              , PLP.SALES_PRICE as Sales_Price
              --latest pricelist for sku
			  , case 
					when ROW_NUMBER() over(PARTITION BY CATALOG_NO, CP.CUSTOMER_NO ORDER BY PLP.VALID_FROM_DATE  DESC) = 1 
					then 'Active'
					else 'Old' 
				end as Price_List_Status
			  , PLP.VALID_FROM_DATE AS Valid_Date
              , CP.CUSTOMER_NO as Customer_No
              , CP.SALES_PRICE_GROUP_ID as Sales_Price_Group_ID
     
  FROM [IFS].[SALES_PRICE_LIST_PART] PLP
     INNER JOIN IFS.CUSTOMER_PRICELIST CP ON 
              PLP.PRICE_LIST_NO = CP.PRICE_LIST_NO
			  AND PLP.ActInd = 'Y'
			  AND CP.ActInd = 'Y'
     INNER JOIN [IFS].[CUSTOMER_INFO] CI
              ON CI.CUSTOMER_ID = CP.CUSTOMER_NO
					 AND CI.ActInd = 'Y'
                     AND ASSOCIATION_NO is not null

Group by
				PLP.PRICE_LIST_NO 
              , PLP.CATALOG_NO 
              , PLP.SALES_PRICE 
              , CP.CUSTOMER_NO 
              , CP.SALES_PRICE_GROUP_ID 
			  , PLP.VALID_FROM_DATE
              
) A
WHERE A.Price_List_Status = 'Active'

UNION
SELECT  - 1, '-1', NULL, 'Unknown', NULL , 'Unknown' , NULL