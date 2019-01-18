


CREATE VIEW [FDV].[VW_F_Invoiced_Sales]
AS
--	REGULAR INVOICES
SELECT  
	    convert(char, I.INVOICE_DATE, 112) AS DateKey,
		YEAR(I.INVOICE_DATE) AS   Accounting_Year,
		MONTH(I.INVOICE_DATE) AS   Accounting_Month, --- CUSTOMER INVOICES FROM ORDERS
       I.CONTRACT as Company_Site ,
	   left(I.CUSTOMER_NO, 4) AS OP_Country,
	   I.CUSTOMER_NO as Home_Country,
	   I.COUNTRY_CODE as Country_Code,
       convert(int, I.CATALOG_GROUP) as FAM_Prod_ID ,
      -- I.CATALOG_GROUP_DESC AS Prod_Family_Desc,
       I.PART_NO AS Sales_Item,
       I.PART_DESC AS Sales_Item_Desc,	  
       I.CUSTOMER_NAME AS Customer,
       I.PRICE_LIST_NO AS Price_List ,
	   I.COMPANY as Company,
       CASE WHEN I.COMPANY IS NULL THEN 0 
			WHEN I.INVOICE_ID IS NULL THEN 0
			WHEN I.ITEM_ID IS NULL THEN 0 ELSE 1 END AS Is_Charge,
       SUM(I.INVOICED_QTY) AS Invoiced_QTY,
       SUM(I.COST) AS Cost,
       SUM(I.GROSS_AMOUNT) AS Gross_Sales_Amount ,
       SUM(I.ORDER_DISCOUNT) AS Discounted_Sales_Amount ,
		 SUM(I.NET_AMOUNT) AS Net_Amount,
       SUM(I.NET_CURR_AMOUNT) AS Net_Curr_Amount,
	 --     I.INVOICE_NO as Invoice_Number,
		  'Regular_Invoice' as Invoice_Type
	   

  FROM IFS.CUST_ORD_INVO_STAT I
   JOIN IFS.CUSTOMER_INFO CI
	ON I.CUSTOMER_NO = CI.CUSTOMER_ID
 WHERE 1=1 
      AND YEAR(INVOICE_DATE) >= YEAR(GETDATE())-1 
	
	  AND I.ActInd = 'Y'

 GROUP BY I.INVOICE_DATE,
       I.CONTRACT ,
	   I.COMPANY,
	   I.ITEM_ID,
	   I.INVOICE_ID,
       I.CATALOG_GROUP ,
       I.CATALOG_GROUP_DESC ,
       I.PART_NO,
       I.PART_DESC ,
	    I.CUSTOMER_NO,
       I.CUSTOMER_NAME,
       I.PRICE_LIST_NO,
       I.INVOICE_NO    ,
	   I.COUNTRY_CODE

union all	   
--INSTANT INVOICES
SELECT	 
		convert(char, II.INVOICE_DATE, 112) AS Invoice_date,
		YEAR(II.INVOICE_DATE) AS   Accounting_Year,
		MONTH(II.INVOICE_DATE) AS     Accounting_Month,
		II.COMPANY AS Company_Site,
		left(II."IDENTITY", 4) AS OP_Country,
	    II."IDENTITY" as Home_Country,
		CO.COUNTRY_DB AS Country_Code,
		''  as FAM_Prod_ID,
	--	''  AS Prod_Family_Desc,
		III.C1 AS  Sales_Item,
		III.C3 AS Sales_Item_Desc,	
		CO."NAME" AS Customer,
		 '' AS Price_List,
		 '' as Company,
		 0 AS Is_Charge,
		  SUM(III.N2) AS Invoiced_QTY,
       0 AS Cost,
       SUM(III.NET_CURR_AMOUNT) AS Gross_Sales_Amount,
       0  as Discounted_Sales_Amount, 
        SUM(III.NET_CURR_AMOUNT) AS Net_Amount,
	   SUM(II.NET_CURR_AMOUNT) AS Net_Curr_Amount,
	  -- II.INVOICE_NO AS Invoice_Number,
	   'Instant Invoice'as Invoice_Type
	  

  FROM IFS.INVOICE II
 INNER JOIN IFS.INVOICE_ITEM III
    ON II.COMPANY = III.COMPANY AND II.PARTY_TYPE_DB = III.PARTY_TYPE_DB
       AND II.INVOICE_ID = III.INVOICE_ID
 INNER JOIN IFS.CUSTOMER_INFO CO
    ON II."IDENTITY" = CO.CUSTOMER_ID
 WHERE  II.PARTY_TYPE_DB = 'CUSTOMER' AND SERIES_ID = 'II'

	  AND YEAR(II.INVOICE_DATE)  >= getdate()-1
	    AND II.ActInd = 'Y'
		 AND III.ActInd = 'Y'
 GROUP BY 
		II.INVOICE_DATE, 
		II.COMPANY,     
	--	II.CODE_C ,
		ITEM_ID,
		III.C1 ,
		III.C3 ,
		CO."NAME",
		II."IDENTITY" ,
		II.INVOICE_NO,
		CO.COUNTRY_DB