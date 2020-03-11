




  create view [FDV].[D_Retail_BNL] 
  as
  SELECT --RF.[POS_NUM] POS_NUM_FULL
         RF.[POS_NUM] POS_NUM
          ,OD.Order_ID
	    ,OD.D_Order_Skey
		,OD.Order_Country_Code
	 
  FROM [ForeverData01].[DM].[D_Retail_BNL] RF
  join [ForeverData01].[DM].[D_Order] OD
  on
 RF.[POS_NUM]=substring(OD.Order_Pos_Number,3,12)
  and OD.IsDeleted='0'