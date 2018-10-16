﻿



CREATE VIEW [FDV].[VW_D_Product_Family] AS

SELECT [PART_PRODUCT_FAMILY]				AS FAM_Prod_ID
      ,[DESCRIPTION]						AS Description
  FROM [IFS].[INVENTORY_PRODUCT_FAMILY]
 -- WHERE C_TO_CMS='TRUE'
 where ActInd='Y'
  UNION all
  SELECT '-1','UNKNOWN'