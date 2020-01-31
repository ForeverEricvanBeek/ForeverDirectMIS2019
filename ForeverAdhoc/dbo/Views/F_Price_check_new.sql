

 
 create view [dbo].[F_Price_check_new] as


 WITH CTE_8 as 
(SELECT 
      [Price_List_NO]
      ,IFS.[Part_NO] IFS_PART
	  ,HO.Part_NO HO_PART
	  ,HO.[Value] HO_PRICE
      ,[Sales_Price] IFS_PRICE
	  ,SK.Accounting_Group_Desc
	  ,SK.FAM_Prod_ID
	  ,ISNULL(A.QTY_Per_Assembley,1) QTY_Per_Assembley
	  ,ISNULL(A.QTY_Per_Assembley,1)*HO.[Value] MULTIPLIED_HO_PRICE
      FROM [$(ForeverData01)].[DM].[D_Price_List_SKU] IFS
      join [dbo].[D_Price_List_HO] HO
      on substring(IFS.Part_NO,1,8)=HO.Part_NO
      and IFS.[Price_List_NO]=HO.Price_List
	  and IFS.IsDeleted=0
	  and IFS.RN=1
	  join [$(ForeverData01)].[DM].[D_SKU] SK
	  ON
	  IFS.Part_NO = SK.SKU_Name
	  and SK.Contract = 'FD01'
	  LEFT JOIN (SELECT  BM.Sales_SKU_Code,BM.QTY_Per_Assembley   
			 FROM [$(ForeverData01)].[DM].[F_Bom] BM
			 JOIN [$(ForeverData01)].[DM].[D_SKU] SK1
			 ON
			 BM.Sales_SKU_Code = SK1.SKU_Name 
			 AND SK1.Accounting_Group_Desc = 'Finished Goods'
			 AND SK1.FAM_Prod_ID <> 9
			 AND SK1.Contract = 'FD01'
			 JOIN [$(ForeverData01)].[DM].[D_SKU] SK2
			 ON
			 SK2.SKU_Name = BM.Purchase_SKU_Code
			 AND SK2.Accounting_Group_Desc = 'Finished Goods'
			 AND SK2.FAM_Prod_ID <> 9
			 AND SK2.Contract = 'FD01')
			 A ON A.Sales_SKU_Code=IFS.Part_NO
             )
         --  where IFS.Price_List_NO='FD10')
,CTE_7 as
(SELECT 
      [Price_List_NO]
      ,IFS.[Part_NO] IFS_PART
	  ,HO.Part_NO HO_PART
	   ,HO.[Value] HO_PRICE
      ,[Sales_Price] IFS_PRICE
	  ,SK.Accounting_Group_Desc
	  ,SK.FAM_Prod_ID
	  ,ISNULL(A.QTY_Per_Assembley,1) QTY_Per_Assembley
	  ,ISNULL(A.QTY_Per_Assembley,1)*HO.[Value] MULTIPLIED_HO_PRICE
      FROM [$(ForeverData01)].[DM].[D_Price_List_SKU] IFS
      join [dbo].[D_Price_List_HO] HO
      on substring(IFS.Part_NO,1,7)=HO.Part_NO
      and IFS.[Price_List_NO]=HO.Price_List
	  and IFS.IsDeleted=0
	  and IFS.[Part_NO] not in (select IFS_PART from CTE_8)
      and RN=1
	  join [$(ForeverData01)].[DM].[D_SKU] SK
	  ON
	  IFS.Part_NO = SK.SKU_Name
	  and SK.Contract = 'FD01'
	  LEFT JOIN (SELECT  BM.Sales_SKU_Code,BM.QTY_Per_Assembley   
			 FROM [$(ForeverData01)].[DM].[F_Bom] BM
			 JOIN [$(ForeverData01)].[DM].[D_SKU] SK1
			 ON
			 BM.Sales_SKU_Code = SK1.SKU_Name 
			 AND SK1.Accounting_Group_Desc = 'Finished Goods'
			 AND SK1.FAM_Prod_ID <> 9
			 AND SK1.Contract = 'FD01'
			 JOIN [$(ForeverData01)].[DM].[D_SKU] SK2
			 ON
			 SK2.SKU_Name = BM.Purchase_SKU_Code
			 AND SK2.Accounting_Group_Desc = 'Finished Goods'
			 AND SK2.FAM_Prod_ID <> 9
			 AND SK2.Contract = 'FD01')
			 A ON A.Sales_SKU_Code=IFS.Part_NO
      
	   )
   -- where IFS.Price_List_NO='FD10')
	 
,CTE_6 as
(SELECT 
      [Price_List_NO]
      ,IFS.[Part_NO] IFS_PART
	  ,HO.Part_NO HO_PART
	  ,HO.[Value] HO_PRICE
      ,[Sales_Price] IFS_PRICE
	  ,SK.Accounting_Group_Desc
	  ,SK.FAM_Prod_ID
	  ,ISNULL(A.QTY_Per_Assembley,1) QTY_Per_Assembley
	  ,ISNULL(A.QTY_Per_Assembley,1)*HO.[Value] MULTIPLIED_HO_PRICE
      FROM [$(ForeverData01)].[DM].[D_Price_List_SKU] IFS
      join [dbo].[D_Price_List_HO] HO
      on substring(IFS.Part_NO,1,6)=HO.Part_NO
      and IFS.[Price_List_NO]=HO.Price_List
	  and IFS.IsDeleted=0
	  and (IFS.[Part_NO] not in (select IFS_PART from CTE_8)
	  and IFS.[Part_NO] not in (select IFS_PART from CTE_7))
      and RN=1
	  join [$(ForeverData01)].[DM].[D_SKU] SK
	  ON
	  IFS.Part_NO = SK.SKU_Name
	  and SK.Contract = 'FD01'
	  LEFT JOIN (SELECT  BM.Sales_SKU_Code,BM.QTY_Per_Assembley   
			 FROM [$(ForeverData01)].[DM].[F_Bom] BM
			 JOIN [$(ForeverData01)].[DM].[D_SKU] SK1
			 ON
			 BM.Sales_SKU_Code = SK1.SKU_Name 
			 AND SK1.Accounting_Group_Desc = 'Finished Goods'
			 AND SK1.FAM_Prod_ID <> 9
			 AND SK1.Contract = 'FD01'
			 JOIN [$(ForeverData01)].[DM].[D_SKU] SK2
			 ON
			 SK2.SKU_Name = BM.Purchase_SKU_Code
			 AND SK2.Accounting_Group_Desc = 'Finished Goods'
			 AND SK2.FAM_Prod_ID <> 9
			 AND SK2.Contract = 'FD01')
			 A ON A.Sales_SKU_Code=IFS.Part_NO
      
	 )
    --where IFS.Price_List_NO='FD10')
,CTE_5 as
(SELECT 
      [Price_List_NO]
      ,IFS.[Part_NO] IFS_PART
	  ,HO.Part_NO HO_PART
	   ,HO.[Value] HO_PRICE
      ,[Sales_Price] IFS_PRICE
	  ,SK.Accounting_Group_Desc
	  ,SK.FAM_Prod_ID
	  ,ISNULL(A.QTY_Per_Assembley,1) QTY_Per_Assembley
	  ,ISNULL(A.QTY_Per_Assembley,1)*HO.[Value] MULTIPLIED_HO_PRICE
      FROM [$(ForeverData01)].[DM].[D_Price_List_SKU] IFS
      join [dbo].[D_Price_List_HO] HO
      on substring(IFS.Part_NO,1,5)=HO.Part_NO
      and IFS.[Price_List_NO]=HO.Price_List
	  and IFS.IsDeleted=0
	  and (IFS.[Part_NO] not in (select IFS_PART from CTE_8)
	  and IFS.[Part_NO] not in (select IFS_PART from CTE_7)
	  and IFS.[Part_NO] not in (select IFS_PART from CTE_6))
      and RN=1
	  join [$(ForeverData01)].[DM].[D_SKU] SK
	  ON
	  IFS.Part_NO = SK.SKU_Name
	  and SK.Contract = 'FD01'
	  LEFT JOIN (SELECT  BM.Sales_SKU_Code,BM.QTY_Per_Assembley   
			 FROM [$(ForeverData01)].[DM].[F_Bom] BM
			 JOIN [$(ForeverData01)].[DM].[D_SKU] SK1
			 ON
			 BM.Sales_SKU_Code = SK1.SKU_Name 
			 AND SK1.Accounting_Group_Desc = 'Finished Goods'
			 AND SK1.FAM_Prod_ID <> 9
			 AND SK1.Contract = 'FD01'
			 JOIN [$(ForeverData01)].[DM].[D_SKU] SK2
			 ON
			 SK2.SKU_Name = BM.Purchase_SKU_Code
			 AND SK2.Accounting_Group_Desc = 'Finished Goods'
			 AND SK2.FAM_Prod_ID <> 9
			 AND SK2.Contract = 'FD01')
			 A ON A.Sales_SKU_Code=IFS.Part_NO
      
	  )
    --where IFS.Price_List_NO='FD10')
,CTE_4 as
(SELECT 
      [Price_List_NO]
      ,IFS.[Part_NO] IFS_PART
	  ,HO.Part_NO HO_PART
	   ,HO.[Value] HO_PRICE
      ,[Sales_Price] IFS_PRICE
	  ,SK.Accounting_Group_Desc
	  ,SK.FAM_Prod_ID
	  ,ISNULL(A.QTY_Per_Assembley,1) QTY_Per_Assembley
	  ,ISNULL(A.QTY_Per_Assembley,1)*HO.[Value] MULTIPLIED_HO_PRICE
      FROM [$(ForeverData01)].[DM].[D_Price_List_SKU] IFS
      join [dbo].[D_Price_List_HO] HO
      on substring(IFS.Part_NO,1,4)=HO.Part_NO
      and IFS.[Price_List_NO]=HO.Price_List
	  and IFS.IsDeleted=0
	  and (IFS.[Part_NO] not in (select IFS_PART from CTE_8)
	  and IFS.[Part_NO] not in (select IFS_PART from CTE_7)
	  and IFS.[Part_NO] not in (select IFS_PART from CTE_6)
	  and IFS.[Part_NO] not in (select IFS_PART from CTE_5))
      and RN=1
	  join [$(ForeverData01)].[DM].[D_SKU] SK
	  ON
	  IFS.Part_NO = SK.SKU_Name
	  and SK.Contract = 'FD01'
	  LEFT JOIN (SELECT  BM.Sales_SKU_Code,BM.QTY_Per_Assembley   
			 FROM [$(ForeverData01)].[DM].[F_Bom] BM
			 JOIN [$(ForeverData01)].[DM].[D_SKU] SK1
			 ON
			 BM.Sales_SKU_Code = SK1.SKU_Name 
			 AND SK1.Accounting_Group_Desc = 'Finished Goods'
			 AND SK1.FAM_Prod_ID <> 9
			 AND SK1.Contract = 'FD01'
			 JOIN [$(ForeverData01)].[DM].[D_SKU] SK2
			 ON
			 SK2.SKU_Name = BM.Purchase_SKU_Code
			 AND SK2.Accounting_Group_Desc = 'Finished Goods'
			 AND SK2.FAM_Prod_ID <> 9
			 AND SK2.Contract = 'FD01')
			 A ON A.Sales_SKU_Code=IFS.Part_NO
      
	  )
    --where IFS.Price_List_NO='FD10')
,CTE_3 as
(SELECT 
      [Price_List_NO]
      ,IFS.[Part_NO] IFS_PART
	  ,HO.Part_NO HO_PART
	   ,HO.[Value] HO_PRICE
      ,[Sales_Price] IFS_PRICE
	  ,SK.Accounting_Group_Desc
	  ,SK.FAM_Prod_ID
	  ,ISNULL(A.QTY_Per_Assembley,1) QTY_Per_Assembley
	  ,ISNULL(A.QTY_Per_Assembley,1)*HO.[Value] MULTIPLIED_HO_PRICE
      FROM [$(ForeverData01)].[DM].[D_Price_List_SKU] IFS
      join [dbo].[D_Price_List_HO] HO
      on substring(IFS.Part_NO,1,3)=HO.Part_NO
      and IFS.[Price_List_NO]=HO.Price_List
	  and IFS.IsDeleted=0
	  and (IFS.[Part_NO] not in (select IFS_PART from CTE_8)
	  and IFS.[Part_NO] not in (select IFS_PART from CTE_7)
	  and IFS.[Part_NO] not in (select IFS_PART from CTE_6)
	  and IFS.[Part_NO] not in (select IFS_PART from CTE_5)
	  and IFS.[Part_NO] not in (select IFS_PART from CTE_4))
      and RN=1
	  join [$(ForeverData01)].[DM].[D_SKU] SK
	  ON
	  IFS.Part_NO = SK.SKU_Name
	  and SK.Contract = 'FD01'
	  LEFT JOIN (SELECT  BM.Sales_SKU_Code,BM.QTY_Per_Assembley   
			 FROM [$(ForeverData01)].[DM].[F_Bom] BM
			 JOIN [$(ForeverData01)].[DM].[D_SKU] SK1
			 ON
			 BM.Sales_SKU_Code = SK1.SKU_Name 
			 AND SK1.Accounting_Group_Desc = 'Finished Goods'
			 AND SK1.FAM_Prod_ID <> 9
			 AND SK1.Contract = 'FD01'
			 JOIN [$(ForeverData01)].[DM].[D_SKU] SK2
			 ON
			 SK2.SKU_Name = BM.Purchase_SKU_Code
			 AND SK2.Accounting_Group_Desc = 'Finished Goods'
			 AND SK2.FAM_Prod_ID <> 9
			 AND SK2.Contract = 'FD01')
			 A ON A.Sales_SKU_Code=IFS.Part_NO
      
	   )
    --where IFS.Price_List_NO='FD10')



	 select * from CTE_8
	 union all
	 select * from CTE_7
	 union all
	 select * from CTE_6
	 union all
	 select * from CTE_5
	 union all
	 select * from CTE_4
	 union all
	 select * from CTE_3