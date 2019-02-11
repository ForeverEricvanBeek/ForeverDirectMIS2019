﻿


create VIEW [FDV].[VW_F_Sales_Facilities]

AS

SELECT  
       VOU.ACCOUNTING_YEAR  , 
       VOU.YEAR_PERIOD_KEY  , 
       LEFT(INV.CUST_GRP, 4) CUST_CODE,
       INV.CUST_GRP,   
       INV.CUSTOMER_NAME,
       INV.COUNTRY_DESC,
       INV.COUNTRY_CODE, 
       INV.CATALOG_GROUP,
       INV.PRICE_LIST_NO,

       SUM(INV.INVOICED_QTY) AS INVOICED_QTY, 
       MAX(INV.BASE_SALE_UNIT_PRICE) BASE_SALE_UNIT_PRICE, 
       MAX(INV.SALE_UNIT_PRICE) SALE_UNIT_PRICE, 
       SUM (INV.NET_AMOUNT) NET_AMOUNT, 
       SUM (INV.NET_CURR_AMOUNT) NET_CURR_AMOUNT, 
       SUM (INV.GROSS_AMOUNT) GROSS_AMOUNT, 
       SUM (INV.GROSS_CURR_AMOUNT) GROSS_CURR_AMOUNT, 
       SUM (INV.COST) COST_AMOUNT, 
       SUM (INV.GROSS_AMOUNT-INV.COST) CONTRIBUTION_MARGIN  
          
   FROM IFS.CUST_ORD_INVO_STAT INV 
        LEFT OUTER JOIN IFS.GEN_LED_VOUCHER_ROW VOU 
		   ON VOU.REFERENCE_NUMBER=INV.INVOICE_NO 
				 AND VOU.COMPANY=INV.COMPANY 
   WHERE --YEAR (INV.INVOICE_DATE) >= '2017'
		 VOU.TRANS_CODE LIKE '%IP2%'  
		AND VOU.VOUCHER_TYPE='F' 
		AND VOU.ACCOUNTING_YEAR >= '2017'
		AND INV.ActInd = 'Y'
        AND VOU.ActInd = 'Y'
        --AND VOU.YEAR_PERIOD_KEY > '201809'
GROUP BY 
VOU.ACCOUNTING_YEAR  , 
       VOU.YEAR_PERIOD_KEY  , 
       INV.CUST_GRP,   
       INV.CUSTOMER_NAME,
       INV.COUNTRY_DESC,
       INV.COUNTRY_CODE, 
       INV.CATALOG_GROUP,
       INV.PRICE_LIST_NO

          
   union
   --get direct bookings
SELECT 
            
          VOU.ACCOUNTING_YEAR,  
          VOU.YEAR_PERIOD_KEY,
          LEFT(II."IDENTITY", 4)  CUST_CODE,
          II."IDENTITY" as CUST_GRP,
          II."IDENTITY" AS CUSTOMER_GROUP,
          VOU."TEXT",
          '' as COUNTRY_DESC,
          '' AS COUNTRY_CODE,
          '' as PRICE_LIST_NO,
		  SUM(III.N2) AS INVOICED_QTY, 
          0 AS BASE_SALE_UNIT_PRICE,
          0 AS SALE_UNIT_PRICE,    
          II.NET_CURR_AMOUNT AS NET_AMOUNT,
          II.NET_CURR_AMOUNT AS NET_CURR_AMOUNT,
          II.NET_CURR_AMOUNT AS GROSS_CURR_AMOUNT,
          II.NET_CURR_AMOUNT AS GROSS_CURR_AMOUNT,
          0 AS COST_AMOUNT,
          II.NET_CURR_AMOUNT AS CONTRIBUTION_MARGIN
   
   FROM IFS.INVOICE II
       INNER JOIN IFS.INVOICE_ITEM III 
			ON II.COMPANY = III.COMPANY  
                 AND II.PARTY_TYPE_DB = III.PARTY_TYPE_DB 
                 AND II.INVOICE_ID = III.INVOICE_ID    
                     
		LEFT OUTER JOIN IFS.GEN_LED_VOUCHER_ROW VOU 
			ON VOU.REFERENCE_NUMBER=II.INVOICE_NO 
                  AND VOU.COMPANY=II.COMPANY 
                  AND II.SERIES_ID=VOU.REFERENCE_SERIE 
	 WHERE II.COMPANY='3001' 
				AND II.PARTY_TYPE_DB='CUSTOMER'  
				AND SERIES_ID = 'II' 
				AND VOU.FUNCTION_GROUP='F' 
				AND VOU.ACCOUNTING_YEAR >= '2017'
				AND VOU.TRANS_CODE='IP2' 
				AND II.ActInd = 'Y'
				AND III.ActInd = 'Y'
				AND VOU.ActInd = 'Y' 
				--AND VOU.YEAR_PERIOD_KEY > '201809'
		GROUP BY 
					 VOU.ACCOUNTING_YEAR  , 
                     VOU.YEAR_PERIOD_KEY  ,
                     II."IDENTITY" ,
                     II.NET_CURR_AMOUNT,
                     VOU."TEXT",
                     II.CODE_C ,
                     II.NET_CURR_AMOUNT