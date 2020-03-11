

  create view [FDV].[D_Retail] 
  as
  SELECT RF.[POS_NUM]
        ,OD.Order_ID
	    ,OD.D_Order_Skey
		,OD.Order_Country_Code
	 
  FROM [ForeverData01].[DM].[D_Retailt] RF
  join [ForeverData01].[DM].[D_Order] OD
  on
  RF.POS_NUM=OD.Order_Pos_Number
  and OD.IsDeleted='0'