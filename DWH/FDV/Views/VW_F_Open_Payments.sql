



/****** Script for SelectTopNRows command from SSMS  ******/

CREATE VIEW [FDV].[VW_F_Open_Payments]
AS
SELECT [COMPANY] as Company
      ,BD.[PARTY_TYPE] as Party_Type
      ,[IDENTITY] as Facility_Code
	  ,CI.COUNTRY_DB as Country_Code
	  ,BD.INVOICE_ID as Invoice_ID
	  ,BD.VOUCHER_NO_REF as Voucher_NO_REF
      ,BD.[NAME] as Name
      ,[INVOICE_DATE] as Invoice_Date
      ,[DUE_DATE] as Due_Date
	  ,case when DUE_DATE > getdate() then [OPEN_AMOUNT] else '0' end as Not_Due
	  ,case when dateadd(day,30,DUE_DATE) > getdate() and DUE_DATE < getdate() then [OPEN_AMOUNT] else '0' end as Due_30
	  ,case when dateadd(day,60,DUE_DATE) > getdate() and DUE_DATE < getdate() and dateadd(day,30,DUE_DATE) < getdate() then [OPEN_AMOUNT] else '0' end as Due_60
	  ,case when dateadd(day,90,DUE_DATE) > getdate() and DUE_DATE < getdate() and dateadd(day,60,DUE_DATE) < getdate() then [OPEN_AMOUNT] else '0' end as Due_90
	  ,case when dateadd(day,90,DUE_DATE) < getdate() then [OPEN_AMOUNT] else '0' end as Due_More_90
	  --,case when DUE_DATE > getdate() then [OPEN_AMOUNT] else '0' end +
	  ,case when dateadd(day,30,DUE_DATE) > getdate() and DUE_DATE < getdate() then [OPEN_AMOUNT] else '0' end  +
	  case when dateadd(day,60,DUE_DATE) > getdate() and DUE_DATE < getdate() and dateadd(day,30,DUE_DATE) < getdate() then [OPEN_AMOUNT] else '0' end + 
	  case when dateadd(day,90,DUE_DATE) > getdate() and DUE_DATE < getdate() and dateadd(day,60,DUE_DATE) < getdate() then [OPEN_AMOUNT] else '0' end +
	  case when dateadd(day,90,DUE_DATE) < getdate() then [OPEN_AMOUNT] else '0' end as Total_Over_Due
	  ,OPEN_AMOUNT as Balance
      ,[OBJSTATE] as OBJ_State
      
  FROM [DWH].[IFS].[BAD_DEBT_QRY] BD
	    JOIN [DWH].[IFS].[CUSTOMER_INFO] CI
		on BD.[IDENTITY] = CI.CUSTOMER_ID
		
  where  1=1
  and BD.ActInd='Y'
  and CI.ActInd='Y'
  and BD.IsDeleted='N'
  and CI.IsDeleted='N'
  and BD.CANCELLED='FALSE'

  union all
  
 SELECT LI.[COMPANY] as Company
      ,LI.[PARTY_TYPE] as Party_Type
	  ,LI.[IDENTITY] as Facility_Code
	  ,'-1' as Country_Code
	  ,'-1' as Invoice_ID
	  ,'-1' as Voucher_NO_REF
      ,'-1' as Name
	  ,LI.Eff_Date as Invoice_Date
	  ,LI.Eff_Date  as Due_Date
	  ,case when LI.Eff_Date > getdate () then (LI.FULL_CURR_AMOUNT-LI.CLEARED_CURR_AMOUNT) else '0' end as Not_Due
	  ,case when dateadd(day,30,LI.Eff_Date) > getdate() and LI.Eff_Date < getdate() then (LI.FULL_CURR_AMOUNT-LI.CLEARED_CURR_AMOUNT) else '0' end as  Due_30
	  ,case when dateadd(day,60,LI.Eff_Date) > getdate() and LI.Eff_Date < getdate() and dateadd(day,30,LI.Eff_Date) < getdate () then (LI.FULL_CURR_AMOUNT-LI.CLEARED_CURR_AMOUNT) else '0' end as Due_60
	  ,case when dateadd(day,90,LI.Eff_Date) > getdate() and LI.Eff_Date < getdate() and dateadd(day,60,LI.Eff_Date) < getdate () then (LI.FULL_CURR_AMOUNT-LI.CLEARED_CURR_AMOUNT) else '0' end as Due_90
	  ,case when dateadd(day,90,LI.Eff_Date) < getdate() then  (LI.FULL_CURR_AMOUNT-LI.CLEARED_CURR_AMOUNT) else '0' end as Due_More_90
	  ,case when dateadd(day,30,LI.Eff_Date) > getdate() and LI.Eff_Date < getdate() then (LI.FULL_CURR_AMOUNT-LI.CLEARED_CURR_AMOUNT) else '0' end +
	   case when dateadd(day,60,LI.Eff_Date) > getdate() and LI.Eff_Date < getdate() and dateadd(day,30,LI.Eff_Date) < getdate () then (LI.FULL_CURR_AMOUNT-LI.CLEARED_CURR_AMOUNT) else '0' end +
	   case when dateadd(day,90,LI.Eff_Date) > getdate() and LI.Eff_Date < getdate() and dateadd(day,60,LI.Eff_Date) < getdate () then (LI.FULL_CURR_AMOUNT-LI.CLEARED_CURR_AMOUNT) else '0' end +
	   case when dateadd(day,90,LI.Eff_Date) < getdate() then  (LI.FULL_CURR_AMOUNT-LI.CLEARED_CURR_AMOUNT) else '0' end as Total_Over_Due
	  ,LI.FULL_CURR_AMOUNT-LI.CLEARED_CURR_AMOUNT as Balance
	  ,LI.[OBJSTATE] as OBJ_State
  FROM [DWH].[IFS].[LEDGER_ITEM] LI
  where FULL_CURR_AMOUNT <> CLEARED_CURR_AMOUNT
  and LI.ActInd='Y'
  and LI.IsDeleted='N'
  and LI.LEDGER_ITEM_SERIES_ID='CUPOA'
  and LI.[OBJSTATE]<>'Cancelled'