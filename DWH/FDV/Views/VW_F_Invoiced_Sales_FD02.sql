













CREATE VIEW [FDV].[VW_F_Invoiced_Sales_FD02]
AS
SELECT  
		YEAR(I.INVOICE_DATE) AS   [Accounting Year],
		MONTH(I.INVOICE_DATE) AS   [Accounting Month], --- CUSTOMER INVOICES FROM ORDERS
		CONVERT(char(6), I.INVOICE_DATE, 112) AS [Year Month],
       I.CONTRACT AS [Company] ,
	   LEFT(I.CUSTOMER_NO, 4) AS [Operation Country],
	   I.CUSTOMER_NO AS [Facility ID],
	   I.COUNTRY_CODE AS [Country Code],
       CONVERT(INT, I.CATALOG_GROUP) AS [FAM_Prod_ID] ,
       I.PART_NO AS [Sales Item], 
       I.CUSTOMER_NAME AS [Customer Name],
       I.PRICE_LIST_NO AS [Price List ID] ,
       SUM(I.INVOICED_QTY) AS [Invoiced QTY],
       SUM(I.COST) AS [Cost],
       SUM(I.GROSS_AMOUNT) AS [Gross Sales] ,
       SUM(I.ORDER_DISCOUNT) AS [Sales Discount] ,
	   SUM(I.NET_AMOUNT) AS [Netto Amount],
       SUM(I.NET_CURR_AMOUNT) AS [Netto Currency Amount],
	   SUM(I.NET_CURR_AMOUNT) -  SUM(I.COST) AS [Contribution Margin],
	   COALESCE(SUM(I.NET_CURR_AMOUNT) -  SUM(I.COST) /   NULLIF(SUM(I.NET_CURR_AMOUNT), 0) ,0)  AS [Sales Margin],
	   CO.ORDER_ID AS [Order Type],
	   'Regular_Invoice' AS [Invoice Type]
	   
  FROM IFS.CUST_ORD_INVO_STAT I
	LEFT JOIN [IFS].[CUSTOMER_ORDER] CO
	ON I.ORDER_NO=CO.ORDER_NO
	AND CO.ActInd='Y' 
	AND CO.IsDeleted='N'
 WHERE 1=1 
      AND INVOICE_DATE >= DATEFROMPARTS ( DATEPART(yyyy, GETDATE()) - 2, 1, 1 )
	  AND I.IsDeleted='N'
	  AND I.ActInd = 'Y'

 GROUP BY 
		YEAR(I.INVOICE_DATE),
		MONTH(I.INVOICE_DATE) ,
		CONVERT(CHAR(6), I.INVOICE_DATE, 112),
       I.CONTRACT ,
	   I.COMPANY,
	   I.ITEM_ID,
       I.CATALOG_GROUP ,
       I.PART_NO,
	    I.CUSTOMER_NO,
       I.CUSTOMER_NAME,
       I.PRICE_LIST_NO,
	   I.COUNTRY_CODE,
	    CO.ORDER_ID


UNION ALL
--INSTANT INVOICES
SELECT	 
		YEAR(II.INVOICE_DATE) AS   [Accounting Year],
		MONTH(II.INVOICE_DATE) AS     [Accounting Month],
		CONVERT(char(6), II.INVOICE_DATE, 112) AS [Year Month],
		II.COMPANY AS [Company],
		LEFT(II."IDENTITY", 4) AS [Operation Country],
		II."IDENTITY" AS [Facility ID],
		CO.COUNTRY_DB AS [Country Code],
		'-1'  AS [FAM_Prod_ID],
		III.C1 AS  [SalesItem],	
		CO."NAME" AS [Customer Name],
		 '-1' AS [Price List ID],
		  SUM(III.N2) AS [Invoiced QTY],
       0 AS [Cost],
       SUM(III.NET_CURR_AMOUNT) AS [Gross Sales],
       0  AS [Sales Discount], 
        SUM(III.NET_CURR_AMOUNT) AS [Netto Amount],
	   SUM(III.NET_CURR_AMOUNT) AS [Netto Currency Amount],
	   SUM(III.NET_CURR_AMOUNT) AS [Contribution Margin],
	   coalesce(SUM(III.NET_CURR_AMOUNT)  /   NULLIF(SUM(III.NET_CURR_AMOUNT), 0) ,0)  AS [Sales Margin],
	   NULL AS [Order Type],
	   'Instant Invoice' AS [Invoice Type]
	  

  FROM IFS.INVOICE II
	INNER JOIN IFS.INVOICE_ITEM III
    ON II.COMPANY = III.COMPANY AND II.PARTY_TYPE_DB = III.PARTY_TYPE_DB 
		AND II.INVOICE_ID = III.INVOICE_ID
	INNER JOIN IFS.CUSTOMER_INFO CO
    ON II."IDENTITY" = CO.CUSTOMER_ID
 WHERE  II.PARTY_TYPE_DB = 'CUSTOMER' AND SERIES_ID = 'II'
	   AND II.INVOICE_DATE >= DATEFROMPARTS ( DATEPART(yyyy, GETDATE()) - 2, 1, 1 )
	   AND II.ActInd = 'Y'
	   AND III.ActInd = 'Y'
 GROUP BY 
		
		YEAR(II.INVOICE_DATE) ,
		MONTH(II.INVOICE_DATE) ,
		CONVERT(CHAR(6), II.INVOICE_DATE, 112),
		II.COMPANY,     
		III.C1 ,
		III.C3 ,
		CO."NAME",
		II."IDENTITY" ,	
		CO.COUNTRY_DB