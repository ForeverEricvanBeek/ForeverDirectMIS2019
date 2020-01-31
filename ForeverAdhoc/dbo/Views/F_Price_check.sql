
 
 create view [dbo].[F_Price_check] as
 
 WITH CTE_8 as 
(SELECT 
      [Price_List_NO]
      ,IFS.[Part_NO] IFS_PART
	  ,HO.Part_NO HO_PART
	  ,HO.[Value] HO_PRICE
      ,[Sales_Price] IFS_PRICE
      FROM [$(ForeverData01)].[DM].[D_Price_List_SKU] IFS
      join [dbo].[D_Price_List_HO] HO
      on substring(IFS.Part_NO,1,8)=HO.Part_NO
      and IFS.[Price_List_NO]=HO.Price_List
	  and IFS.IsDeleted=0
     where RN=1)
    -- and IFS.Price_List_NO='FD11')
,CTE_7 as
(SELECT 
      [Price_List_NO]
      ,IFS.[Part_NO] IFS_PART
	  ,HO.Part_NO HO_PART
	   ,HO.[Value] HO_PRICE
      ,[Sales_Price] IFS_PRICE
      FROM [$(ForeverData01)].[DM].[D_Price_List_SKU] IFS
      join [dbo].[D_Price_List_HO] HO
      on substring(IFS.Part_NO,1,7)=HO.Part_NO
      and IFS.[Price_List_NO]=HO.Price_List
	  and IFS.IsDeleted=0
     where RN=1
	 and IFS.[Part_NO] not in (select IFS_PART from CTE_8))
    -- and IFS.Price_List_NO='FD11')
	 
,CTE_6 as
(SELECT 
      [Price_List_NO]
      ,IFS.[Part_NO] IFS_PART
	  ,HO.Part_NO HO_PART
	  ,HO.[Value] HO_PRICE
      ,[Sales_Price] IFS_PRICE
      FROM [$(ForeverData01)].[DM].[D_Price_List_SKU] IFS
      join [dbo].[D_Price_List_HO] HO
      on substring(IFS.Part_NO,1,6)=HO.Part_NO
      and IFS.[Price_List_NO]=HO.Price_List
	  and IFS.IsDeleted=0
     where RN=1
	 and (IFS.[Part_NO] not in (select IFS_PART from CTE_8)
	 and IFS.[Part_NO] not in (select IFS_PART from CTE_7)))
     --and IFS.Price_List_NO='FD11')
,CTE_5 as
(SELECT 
      [Price_List_NO]
      ,IFS.[Part_NO] IFS_PART
	  ,HO.Part_NO HO_PART
	   ,HO.[Value] HO_PRICE
      ,[Sales_Price] IFS_PRICE
      FROM [$(ForeverData01)].[DM].[D_Price_List_SKU] IFS
      join [dbo].[D_Price_List_HO] HO
      on substring(IFS.Part_NO,1,5)=HO.Part_NO
      and IFS.[Price_List_NO]=HO.Price_List
	  and IFS.IsDeleted=0
     where RN=1
	 and (IFS.[Part_NO] not in (select IFS_PART from CTE_8)
	 and IFS.[Part_NO] not in (select IFS_PART from CTE_7)
	 and IFS.[Part_NO] not in (select IFS_PART from CTE_6)))
     --and IFS.Price_List_NO='FD11')
,CTE_4 as
(SELECT 
      [Price_List_NO]
      ,IFS.[Part_NO] IFS_PART
	  ,HO.Part_NO HO_PART
	   ,HO.[Value] HO_PRICE
      ,[Sales_Price] IFS_PRICE
      FROM [$(ForeverData01)].[DM].[D_Price_List_SKU] IFS
      join [dbo].[D_Price_List_HO] HO
      on substring(IFS.Part_NO,1,4)=HO.Part_NO
      and IFS.[Price_List_NO]=HO.Price_List
	  and IFS.IsDeleted=0
     where RN=1
	 and (IFS.[Part_NO] not in (select IFS_PART from CTE_8)
	 and IFS.[Part_NO] not in (select IFS_PART from CTE_7)
	 and IFS.[Part_NO] not in (select IFS_PART from CTE_6)
	 and IFS.[Part_NO] not in (select IFS_PART from CTE_5)))
     --and IFS.Price_List_NO='FD11')
,CTE_3 as
(SELECT 
      [Price_List_NO]
      ,IFS.[Part_NO] IFS_PART
	  ,HO.Part_NO HO_PART
	   ,HO.[Value] HO_PRICE
      ,[Sales_Price] IFS_PRICE
      FROM [$(ForeverData01)].[DM].[D_Price_List_SKU] IFS
      join [dbo].[D_Price_List_HO] HO
      on substring(IFS.Part_NO,1,3)=HO.Part_NO
      and IFS.[Price_List_NO]=HO.Price_List
	  and IFS.IsDeleted=0
     where RN=1
	 and (IFS.[Part_NO] not in (select IFS_PART from CTE_8)
	 and IFS.[Part_NO] not in (select IFS_PART from CTE_7)
	 and IFS.[Part_NO] not in (select IFS_PART from CTE_6)
	 and IFS.[Part_NO] not in (select IFS_PART from CTE_5)
	 and IFS.[Part_NO] not in (select IFS_PART from CTE_4)))
     --and IFS.Price_List_NO='FD11')



	 select * from CTE_8
	 union
	 select * from CTE_7
	 union
	 select * from CTE_6
	 union
	 select * from CTE_5
	 union
	 select * from CTE_4
	 union
	 select * from CTE_3