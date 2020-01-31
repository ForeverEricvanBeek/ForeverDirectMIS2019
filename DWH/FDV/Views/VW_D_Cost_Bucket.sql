

CREATE VIEW [FDV].[VW_D_Cost_Bucket]
AS

SELECT 		
		CONCAT(CB.COST_BUCKET_ID, CB.CONTRACT) AS [Bucket_Key]
	  ,	CB.COST_BUCKET_ID as [Cust_Bucked_ID]
      ,	CB.CONTRACT AS [Contract]
      , CB.SUNK_RELEVANT_COST AS [Sunk vs Relevant Cost] 
      ,	CB.FIXED_VARIABLE_COST AS[Fixed vs Variable Costs]
	  ,	CB.DIRECT_INDIRECT_COST AS [Direct vs Indirect Costs]       
      , CB.COST_BUCKET_PUBLIC_TYPE AS Cost_Bucket
      , CB.LAST_ACTIVITY_DATE AS Last_Acivity_Date     
  FROM [IFS].[COST_BUCKET] CB
  WHERE ActInd = 'Y'
	AND IsDeleted = 'N'
UNION ALL

SELECT '-1','-1','Unknown', NULL, NULL, NULL, NULL, NULL