﻿





CREATE VIEW [FDV].[VW_D_Vas_TI] 
AS

SELECT	
		CODE_DESC AS Vas_TI_Code 
		,CASE WHEN SUBSTRING(CODE_DESC,1,3)='WVS' THEN 'WVS_LABELING' 
	      WHEN SUBSTRING(CODE_DESC,1,3)='FD1' THEN 'FD_LABELING' 
		  WHEN SUBSTRING(CODE_DESC,1,2)='M1' THEN 'MACHINE_1' 
		  WHEN SUBSTRING(CODE_DESC,1,2)='M2' THEN 'MACHINE_2' 
		  WHEN SUBSTRING(CODE_DESC,1,2)='M3' THEN 'MACHINE_3' 
		  WHEN SUBSTRING(CODE_DESC,1,2)='M4' THEN 'MACHINE_4'
		  WHEN SUBSTRING(CODE_DESC,1,2)='M5' THEN 'MACHINE_5'
		  WHEN SUBSTRING(CODE_DESC,1,2)='M6' THEN 'MACHINE_6'
		  WHEN SUBSTRING(CODE_DESC,1,2)='M7' THEN 'MACHINE_7'
		  WHEN SUBSTRING(CODE_DESC,1,2)='M8' THEN 'MACHINE_8'  
		  WHEN SUBSTRING(CODE_DESC,1,2)='KT' THEN 'KITTING'
		  WHEN SUBSTRING(CODE_DESC,1,2)='KK' THEN 'KLEINE_KITTING'     
		  WHEN SUBSTRING(CODE_DESC,1,2)='OP' THEN 'OMPAKKEN'   
		  WHEN SUBSTRING(CODE_DESC,1,2)='UP' THEN 'UITPAKKEN'   
		  WHEN SUBSTRING(CODE_DESC,1,5)='TPA_B' THEN 'TPA_BULK' 
		  WHEN SUBSTRING(CODE_DESC,1,5)='TPA_S' THEN 'TPA_SINGLE_PACK' 
		  ELSE UPPER(CODE_DESC)
		  END AS Vas_TI_Description
     
  FROM [MANH].[SYS_CODE]
  WHERE CODE_TYPE = 'VAT'
  AND ActInd = 'Y'
  UNION ALL
  SELECT '-1',NULL