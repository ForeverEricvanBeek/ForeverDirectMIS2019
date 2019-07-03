







CREATE VIEW [FDV].[VW_D_FLP_Customers] as
SELECT CI.[CUSTOMER_ID] Customer_ID
      ,CI.[COUNTRY_DB] Country_Code
      ,CI.[NAME] Name
	  ,ISNULL(CP.PRICE_LIST_NO,'-1') as Price_List_NO_Actual
	  ,isnull(CP.Eff_Date,'1965-04-26') as Start_Date_Price_List
      ,CI.[PARTY] Party
     
      FROM [DWH].[IFS].[CUSTOMER_INFO] CI
	  left join [DWH].[IFS].[CUSTOMER_PRICELIST] CP
	  on CP.CUSTOMER_NO=CI.CUSTOMER_ID
	  and CP.ActInd='Y'
	  and CP.IsDeleted='N'
  where CI.ActInd='Y'
 --and len(CI.CUSTOMER_ID) < 11
 union all
 select '-1',null,null,'1965-04-26',null,'-1'