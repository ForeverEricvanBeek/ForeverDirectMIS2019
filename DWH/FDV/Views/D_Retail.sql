  create view FDV.D_Retail 
  as
  SELECT 1 as dummy/*RF.[POS_NUM]
       ,OD.Order_ID
	   ,OD.D_Order_Skey
	 
  FROM [$(ForeverData01)].[DM].[D_Retail] RF
  join [$(ForeverData01)].[DM].[D_Order] OD
  on
  RF.POS_NUM=OD.Order_Pos_Number
  and OD.IsDeleted='0'*/