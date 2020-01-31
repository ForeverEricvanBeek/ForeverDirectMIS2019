


 create view [RV].[Price_Check] as
 

WITH CTE_1 AS (
       SELECT
             BM.Sales_SKU_Code                              AS Sales_SKU_Code
			 , BM.Component_L1_SKU_Code						AS COMP_LEVEL_1
             , BM.QTY_Per_Assembley                         AS QTY_PER_ASSEMBLEY
             , BM.Phase_Out_Date                            AS Phase_Out_Date
       FROM          [$(ForeverData01)].DM.F_Bom BM
       INNER JOIN    [$(ForeverData01)].DM.D_SKU SK1
       ON                  SK1.SKU_Name = BM.Sales_SKU_Code
       AND                 SK1.Accounting_Group_Desc = N'Finished Goods'
       AND                 SK1.FAM_Prod_ID IN ('1','2','3','4','5','6','7','8')
       AND                 SK1.Contract = N'FD01'
       INNER JOIN    [$(ForeverData01)].DM.D_SKU SK2
       ON                  SK2.SKU_Name = BM.Purchase_SKU_Code
       AND                 SK2.Accounting_Group_Desc = N'Finished Goods'
       AND                 SK2.FAM_Prod_ID IN ('1','2','3','4','5','6','7','8')
       AND                 SK2.Contract = N'FD01'
)
, CTE_8 AS (
       SELECT 
             IFS.Price_List_NO                                                  AS PRICE_LIST
             , IFS.Part_NO                                                      AS IFS_PART
             , HO.Part_NO                                                       AS HO_PART
			 , 'NA'																AS COMP_LEVEL_1
             , HO.Value                                                         AS HO_PRICE
             , IFS.Sales_Price                                                  AS IFS_PRICE
             , SK.Accounting_Group_Desc											AS ACC_GROUP
             , SK.FAM_Prod_ID                                                   AS FAMILY_ID
             , P.Description                                                    AS DESCR
             , A.Phase_Out_Date                                                 AS PHASE_OUT
             , ISNULL(A.QTY_PER_ASSEMBLEY,1)									AS QTY_PER_ASSEMBLEY
             , ROUND(ISNULL(A.QTY_PER_ASSEMBLEY,1) * HO.Value,2)				AS MULTIPLIED_HO_PRICE
			 , 0																AS RN
             , 1                                                                AS QUERY
       FROM          [$(ForeverData01)].DM.D_Price_List_SKU IFS
       INNER JOIN    [$(ForeverAdhoc)].dbo.D_Price_List_HO HO
       ON              HO.Part_NO = CASE WHEN substring(IFS.Part_NO,1,4)='FDAA' THEN SUBSTRING(IFS.Part_NO,5,13) ELSE SUBSTRING(IFS.Part_NO,1,8) end
       AND                 HO.Price_List = IFS.Price_List_NO
       INNER JOIN    [$(ForeverData01)].DM.D_SKU SK
       ON                  SK.SKU_Name = IFS.Part_NO
       AND                 SK.Contract = N'FD01'
       INNER JOIN    [$(ForeverData01)].DM.D_Product_Family P
       ON                  P.FAM_Prod_ID = SK.FAM_Prod_ID
       AND                 P.FAM_Prod_ID IN ('1','2','3','4','5','6','7','8')
       LEFT JOIN     CTE_1 A
       ON                  A.Sales_SKU_Code = IFS.Part_NO
       WHERE         IFS.IsDeleted = 0
       AND                 IFS.RN = 1
       AND                 A.Phase_Out_Date IS NULL
)


, CTE_7 AS (
       SELECT 
             IFS.Price_List_NO                                                  AS PRICE_LIST
             , IFS.Part_NO                                                      AS IFS_PART
             , HO.Part_NO                                                       AS HO_PART
			 , 'NA'																AS COMP_LEVEL_1
             , HO.Value                                                         AS HO_PRICE
             , IFS.Sales_Price                                                  AS IFS_PRICE
             , SK.Accounting_Group_Desc											AS ACC_GROUP
             , SK.FAM_Prod_ID                                                   AS FAMILY_ID
             , P.Description                                                    AS DESCR
             , A.Phase_Out_Date                                                 AS PHASE_OUT
             , ISNULL(A.QTY_PER_ASSEMBLEY,1)									AS QTY_PER_ASSEMBLEY
             , ROUND(ISNULL(A.QTY_PER_ASSEMBLEY,1) * HO.Value,2)				AS MULTIPLIED_HO_PRICE
			 , 0																AS RN
             , 2                                                                AS QUERY
       FROM          [$(ForeverData01)].DM.D_Price_List_SKU IFS
       INNER JOIN    [$(ForeverAdhoc)].dbo.D_Price_List_HO HO
	   ON				   HO.Part_NO = CASE WHEN substring(IFS.Part_NO,1,4)='FDAA' THEN SUBSTRING(IFS.Part_NO,5,12) ELSE SUBSTRING(IFS.Part_NO,1,7) end
       AND                 HO.Price_List = IFS.Price_List_NO
       INNER JOIN    [$(ForeverData01)].DM.D_SKU SK
       ON                  SK.SKU_Name = IFS.Part_NO
       AND                 SK.Contract = N'FD01'
       INNER JOIN    [$(ForeverData01)].DM.D_Product_Family P
       ON                  P.FAM_Prod_ID = SK.FAM_Prod_ID
       AND                 P.FAM_Prod_ID IN ('1','2','3','4','5','6','7','8')
       LEFT JOIN     CTE_1 A 
       ON                  A.Sales_SKU_Code = IFS.Part_NO
       WHERE         IFS.IsDeleted = 0
       AND                 IFS.RN = 1
       AND                 A.Phase_Out_Date IS NULL
)
       
, CTE_6 AS (
       SELECT 
             IFS.Price_List_NO                                                  AS Price_List_NO
             , IFS.Part_NO                                                      AS IFS_PART
             , HO.Part_NO                                                       AS HO_PART
			 , 'NA'															    AS COMP_LEVEL_1
             , HO.Value                                                         AS HO_PRICE
             , IFS.Sales_Price                                                  AS IFS_PRICE
             , SK.Accounting_Group_Desc											AS ACC_GROUP
             , SK.FAM_Prod_ID                                                   AS FAMILY_ID
             , P.Description                                                    AS DESCR
             , A.Phase_Out_Date                                                 AS PHASE_OUT
             , ISNULL(A.QTY_PER_ASSEMBLEY,1)									AS QTY_PER_ASSEMBLEY
             , ROUND(ISNULL(A.QTY_PER_ASSEMBLEY,1) * HO.Value,2)				AS MULTIPLIED_HO_PRICE
			 , 0																AS RN
             , 3                                                                AS QUERY
       FROM          [$(ForeverData01)].DM.D_Price_List_SKU IFS
       INNER JOIN    [$(ForeverAdhoc)].dbo.D_Price_List_HO HO
	   ON				   HO.Part_NO = CASE WHEN substring(IFS.Part_NO,1,4)='FDAA' THEN SUBSTRING(IFS.Part_NO,5,11) ELSE SUBSTRING(IFS.Part_NO,1,6) end
       AND                 HO.Price_List = IFS.Price_List_NO 
       INNER JOIN    [$(ForeverData01)].DM.D_SKU SK
       ON                  SK.SKU_Name = IFS.Part_NO
       AND                 SK.Contract = N'FD01'
       INNER JOIN    [$(ForeverData01)].DM.D_Product_Family P
       ON                  P.FAM_Prod_ID = SK.FAM_Prod_ID
       AND                 P.FAM_Prod_ID IN ('1','2','3','4','5','6','7','8')
       LEFT JOIN     CTE_1 A 
       ON                  A.Sales_SKU_Code = IFS.Part_NO
       WHERE         IFS.IsDeleted = 0
       AND                 IFS.RN = 1
       AND                 A.Phase_Out_Date IS NULL
)

, CTE_5 AS (
       SELECT 
             IFS.Price_List_NO                                                  AS Price_List_NO
             , IFS.Part_NO                                                      AS IFS_PART
             , HO.Part_NO                                                       AS HO_PART
			 , 'NA'																AS COMP_LEVEL_1
             , HO.Value                                                         AS HO_PRICE
             , IFS.Sales_Price                                                  AS IFS_PRICE
             , SK.Accounting_Group_Desc											AS ACC_GROUP
             , SK.FAM_Prod_ID                                                   AS FAMILY_ID
             , P.Description                                                    AS DESCR
             , A.Phase_Out_Date                                                 AS PHASE_OUT
             , ISNULL(A.QTY_PER_ASSEMBLEY,1)									AS QTY_PER_ASSEMBLEY
             , ROUND(ISNULL(A.QTY_PER_ASSEMBLEY,1),2) * HO.Value				AS MULTIPLIED_HO_PRICE
			 , 0																AS RN
             , 4                                                                AS QUERY
       FROM          [$(ForeverData01)].DM.D_Price_List_SKU IFS
       INNER JOIN    [$(ForeverAdhoc)].dbo.D_Price_List_HO HO
	   ON				   HO.Part_NO = CASE WHEN substring(IFS.Part_NO,1,4)='FDAA' THEN SUBSTRING(IFS.Part_NO,5,10) ELSE SUBSTRING(IFS.Part_NO,1,5) end
       AND                 HO.Price_List = IFS.Price_List_NO
       INNER JOIN    [$(ForeverData01)].DM.D_SKU SK
       ON                  SK.SKU_Name = IFS.Part_NO
       AND                 SK.Contract = N'FD01'
       INNER JOIN    [$(ForeverData01)].DM.D_Product_Family P
       ON                  P.FAM_Prod_ID = SK.FAM_Prod_ID
       AND                 P.FAM_Prod_ID IN ('1','2','3','4','5','6','7','8')
       LEFT JOIN     CTE_1 A 
       ON                  A.Sales_SKU_Code = IFS.Part_NO
       WHERE         IFS.IsDeleted = 0
       AND                 IFS.RN = 1
       AND                 A.Phase_Out_Date IS NULL
)

, CTE_4 AS (
       SELECT 
             Price_List_NO                                              AS Price_List_NO
             , IFS.Part_NO                                              AS IFS_PART
             , HO.Part_NO                                               AS HO_PART
			 , 'NA'														AS COMP_LEVEL_1
             , HO.Value                                                 AS HO_PRICE
             , IFS.Sales_Price                                          AS IFS_PRICE
             , SK.Accounting_Group_Desc                                 AS ACC_GROUP
             , SK.FAM_Prod_ID                                           AS FAMILY_ID
             , P.Description                                            AS DESCR
             , A.Phase_Out_Date                                         AS PHASE_OUT
             , ISNULL(A.QTY_PER_ASSEMBLEY,1)                            AS QTY_PER_ASSEMBLEY
             , ROUND(ISNULL(A.QTY_PER_ASSEMBLEY,1),2) * HO.Value		AS MULTIPLIED_HO_PRICE
			 , 0														AS RN
             , 5                                                        AS QUERY
       FROM          [$(ForeverData01)].DM.D_Price_List_SKU IFS
       INNER JOIN    [$(ForeverAdhoc)].dbo.D_Price_List_HO HO
	   ON				   HO.Part_NO = CASE WHEN substring(IFS.Part_NO,1,4)='FDAA' THEN SUBSTRING(IFS.Part_NO,5,9) ELSE SUBSTRING(IFS.Part_NO,1,4) end
       
       AND                 HO.Price_List = IFS.Price_List_NO
       INNER JOIN    [$(ForeverData01)].DM.D_SKU SK
       ON                  SK.SKU_Name = IFS.Part_NO
       AND                 SK.Contract = N'FD01'
       INNER JOIN    [$(ForeverData01)].DM.D_Product_Family P
       ON                  P.FAM_Prod_ID = SK.FAM_Prod_ID
       AND                 P.FAM_Prod_ID IN ('1','2','3','4','5','6','7','8')
       LEFT JOIN     CTE_1 A 
       ON                  A.Sales_SKU_Code = IFS.Part_NO
    WHERE           IFS.IsDeleted = 0
       AND                 IFS.RN = 1
       AND                 A.Phase_Out_Date IS NULL
)

,CTE_3 AS (
       SELECT 
             IFS.Price_List_NO                                                  AS Price_List_NO
             , IFS.Part_NO                                                      AS IFS_PART
             , HO.Part_NO                                                       AS HO_PART
			 , 'NA'																AS COMP_LEVEL_1
             , HO.Value                                                         AS HO_PRICE
             , IFS.Sales_Price                                                  AS IFS_PRICE
             , SK.Accounting_Group_Desc											AS ACC_GROUP
             , SK.FAM_Prod_ID                                                   AS FAMILY_ID
             , P.Description                                                    AS DESCR
             , A.Phase_Out_Date                                                 AS PHASE_OUT
             , ISNULL(A.QTY_PER_ASSEMBLEY,1)									AS QTY_PER_ASSEMBLEY
             , ROUND(ISNULL(A.QTY_PER_ASSEMBLEY,1) * HO.Value,2)				AS MULTIPLIED_HO_PRICE
			 , 0																AS RN
             , 6                                                                AS QUERY
       FROM          [$(ForeverData01)].DM.D_Price_List_SKU IFS
       INNER JOIN    [$(ForeverAdhoc)].dbo.D_Price_List_HO HO
	   ON				   HO.Part_NO = CASE WHEN substring(IFS.Part_NO,1,4)='FDAA' THEN SUBSTRING(IFS.Part_NO,5,8) ELSE SUBSTRING(IFS.Part_NO,1,3) end
       AND                 HO.Price_List = IFS.Price_List_NO
       INNER JOIN    [$(ForeverData01)].DM.D_SKU SK
       ON                  SK.SKU_Name = IFS.Part_NO
       AND                 SK.Contract = N'FD01'
       INNER JOIN    [$(ForeverData01)].DM.D_Product_Family P
       ON                  P.FAM_Prod_ID = SK.FAM_Prod_ID
       AND                 P.FAM_Prod_ID IN ('1','2','3','4','5','6','7','8')
       LEFT JOIN     CTE_1 A 
       ON                  A.Sales_SKU_Code=IFS.Part_NO
    WHERE           IFS.IsDeleted = 0
       AND                 IFS.RN = 1
       AND                 A.Phase_Out_Date IS NULL
)
,CTE_2 AS (
SELECT 
             IFS.Price_List_NO                                                  AS Price_List_NO
             , IFS.Part_NO                                                      AS IFS_PART
             , HO.Part_NO	                                                    AS HO_PART
			 , A.Component_L1_SKU_Code											AS COMP_LEVEL_1
             , HO.Value                                                         AS HO_PRICE
             , IFS.Sales_Price                                                  AS IFS_PRICE
             , SK.Accounting_Group_Desc											AS ACC_GROUP
             , SK.FAM_Prod_ID                                                   AS FAMILY_ID
             , P.Description                                                    AS DESCR
             , A.Phase_Out_Date                                                 AS PHASE_OUT
             , ISNULL(A.QTY_PER_ASSEMBLEY,1)									AS QTY_PER_ASSEMBLEY
             , ROUND(ISNULL(A.QTY_PER_ASSEMBLEY,1),2) * HO.Value 				AS MULTIPLIED_HO_PRICE
			 , ROW_NUMBER() OVER (PARTITION BY IFS.Part_NO,IFS.Price_List_NO   ORDER BY IFS.Part_NO) AS RN	
             , 7                                                                AS QUERY
       FROM          [$(ForeverData01)].DM.D_Price_List_SKU IFS
       
       INNER JOIN    [$(ForeverData01)].DM.D_SKU SK
       ON                  SK.SKU_Name = IFS.Part_NO
       AND                 SK.Contract = N'FD01'
       INNER JOIN    [$(ForeverData01)].DM.D_Product_Family P
       ON                  P.FAM_Prod_ID = SK.FAM_Prod_ID
       AND                 P.FAM_Prod_ID IN ('1','2','3','4','5','6','7','8')
       LEFT JOIN      (SELECT
             BM.Sales_SKU_Code                              AS Sales_SKU_Code
			 , BM.Component_L1_SKU_Code						AS Component_L1_SKU_Code
             , BM.QTY_Per_Assembley                         AS QTY_PER_ASSEMBLEY
             , BM.Phase_Out_Date                            AS Phase_Out_Date
       FROM          [$(ForeverData01)].DM.F_Bom BM
       INNER JOIN    [$(ForeverData01)].DM.D_SKU SK1
       ON                  SK1.SKU_Name = BM.Sales_SKU_Code
       AND                 SK1.Accounting_Group_Desc = N'Finished Goods'
       AND                 SK1.FAM_Prod_ID IN ('1','2','3','4','5','6','7','8')
       AND                 SK1.Contract = N'FD01'
       INNER JOIN    [$(ForeverData01)].DM.D_SKU SK2
       ON                  SK2.SKU_Name = BM.Purchase_SKU_Code
       AND                 SK2.Accounting_Group_Desc = N'Finished Goods'
       AND                 SK2.FAM_Prod_ID IN ('1','2','3','4','5','6','7','8')
       AND                 SK2.Contract = N'FD01') A 
       ON                  A.Sales_SKU_Code=IFS.Part_NO
	   INNER JOIN    [$(ForeverAdhoc)].dbo.D_Price_List_HO HO
	   ON				   substring(HO.Part_NO,1,3) = substring(A.Component_L1_SKU_Code,1,3)--(--CASE WHEN substring(IFS.Part_NO,1,4)='FDAA' THEN SUBSTRING(IFS.Part_NO,5,8) ELSE SUBSTRING(IFS.Part_NO,1,3) end
       AND                 HO.Price_List = IFS.Price_List_NO
       WHERE               IFS.IsDeleted = 0
       AND                 IFS.RN = 1
       AND                 A.Phase_Out_Date IS NULL
	 
	  )

, CTE_00 AS (
       SELECT 
             A.PRICE_LIST
             , A.IFS_PART
             , MIN(A.QUERY) QUERY
       FROM (
             SELECT * FROM CTE_8
             UNION ALL
             SELECT * FROM CTE_7
             UNION ALL
             SELECT * FROM CTE_6
             UNION ALL
             SELECT * FROM CTE_5
             UNION ALL
             SELECT * FROM CTE_4
             UNION ALL
             SELECT * FROM CTE_3
			 UNION ALL
			 SELECT * FROM CTE_2
			 WHERE RN=1
       ) A
       GROUP BY
             A.PRICE_LIST
             , A.IFS_PART
)


SELECT X.PRICE_LIST
       ,X.IFS_PART
	   ,X.HO_PART
	   ,X.COMP_LEVEL_1
	   ,X.ACC_GROUP
	   ,X.FAMILY_ID
	   ,X.DESCR
	   ,X.PHASE_OUT
	   ,X.QTY_PER_ASSEMBLEY
	   ,X.HO_PRICE
	   ,CAST(X.MULTIPLIED_HO_PRICE AS DECIMAL (8,2)) AS MULTIPLIED_HO_PRICE
	   ,X.IFS_PRICE 
	   ,CASE WHEN X.MULTIPLIED_HO_PRICE=X.IFS_PRICE THEN 0 ELSE 1 END AS DIFF
	   ,X.QUERY
	   FROM (
       SELECT * FROM CTE_8
       UNION ALL
       SELECT * FROM CTE_7
       UNION ALL
       SELECT * FROM CTE_6
       UNION ALL
       SELECT * FROM CTE_5
       UNION ALL
       SELECT * FROM CTE_4
       UNION ALL
       SELECT * FROM CTE_3
	   UNION ALL
	   SELECT * FROM CTE_2
	   WHERE RN=1
) X
INNER JOIN   CTE_00 Z
ON                  Z.PRICE_LIST = X.PRICE_LIST
AND                 Z.IFS_PART = X.IFS_PART
AND                 Z.QUERY = X.QUERY