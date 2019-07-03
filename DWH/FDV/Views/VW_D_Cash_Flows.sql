




CREATE VIEW [FDV].[VW_D_Cash_Flows]
AS


--1150 en 1250 grootboek sepa wordt in de mixed payments uitgefilterd d.m.v. filter 1150 1250
--Deze betalingen worden naderhand uit het sepa-bestand gehaald 
 select  cast(MP.LUMP_SUM_TRANS_DATE as date) as DateKey
         ,concat(MP.MIXED_PAYMENT_ID,MP.LUMP_SUM_TRANS_ID) as Cash_ID
        ,MP.COMPANY as Company
        ,isnull(MP.IDENTITY_NAME,'NA') as Identity_Name
		,isnull(MP.PARTY_TYPE_DB,'NA') as Party_Type_DB
		,isnull(MP.[IDENTITY],-1) as Identity_ID
		,Case 
	   when MP.[IDENTITY] in ('1001','1003','1005') then 'AVA' 
	   when MP.[IDENTITY] in ('3129') then 'AVE'
	   when MP.[IDENTITY] in ('FD0928') or [TEXT] like '%DUTIES%' and CURR_AMOUNT < 0  then 'Belasting Custom tax'
	   when MP.[IDENTITY] in ('1002') and MP.CURR_AMOUNT < 0   then 'NTR'
	   when MP.[IDENTITY] in ('3113') and MP.CURR_AMOUNT < 0 then 'Rent'
	   when MP.[IDENTITY] in ('FD0555')  and MP.CURR_AMOUNT < 0 then 'Temps'
	   when MP.[IDENTITY] in ('FD0961')  and MP.CURR_AMOUNT < 0 then 'Salaris'
	   when MP.[IDENTITY] in ('FD0011') and MP.[TEXT] like '%VPB%' and MP.CURR_AMOUNT < 0 then 'Belasting VPB'
	   when MP.[IDENTITY] is null and MP.CODE_A='1500' and MP.CURR_AMOUNT < 0  then 'Salaris'
       when MP.[IDENTITY] is null and MP.CODE_A='1502' and MP.CURR_AMOUNT < 0  then 'PersoneelsVereniging'
       when MP.[IDENTITY] is null and MP.CODE_A='1510' and MP.CURR_AMOUNT < 0  then 'Belasting Loonaangifte'
	   when MP.CODE_A='1610' and MP.CURR_AMOUNT < 0  then 'Belasting VPB'
	   when MP.[IDENTITY] is null and MP.CODE_A='4500' and MP.CURR_AMOUNT < 0  then 'Bankkosten'
	   when MP.CODE_A='7800' and MP.CURR_AMOUNT > 0 then 'Kortingen'
	   when MP.CODE_A='9110' and MP.CURR_AMOUNT > 0 then 'Koersverschillen'
       else 'Other' end as Categorie
	  ,ISNULL(MP.SHORT_NAME,'NA') as Short_Name
	  ,ISNULL(MP.CODE_A,9999) as Grootboek	
	  ,MP.CURR_AMOUNT as Amount
	  ,case when [CURR_AMOUNT] <0 
			or MP.[CODE_A] in ('7800','9110') 
			or MP.[IDENTITY] in ('1001','1003','1005','3129') 
			or MP.[PARTY_TYPE_DB]='SUPPLIER'
			then 'Uitgaven' 
			else 'Inkomsten' 
			end as Uit_In
	  ,MP.[TEXT]  Omschrijving
		,'MANUAL' as Pay_Flow 
        from
		[DWH].[IFS].[MIXED_PAYMENT_LUMP_SUM] MP
		where 1=1 
		and MP.ActInd='Y'
		and MP.IsDeleted ='N'
		--and MP.COMPANY='3001'
		and ISNULL(MP.CODE_A,9999) not in  ('1150','1250') --sepa uitfilteren
		and SHORT_NAME in ('ABNA','DB')
		and cast(MP.LUMP_SUM_TRANS_DATE as date) >'2018-01-01'
		--Onderstaand is om een foute salaris uitbetaling uit te sluiten
		and concat(MP.MIXED_PAYMENT_ID,MP.LUMP_SUM_TRANS_ID) not in (Select concat(MP1.MIXED_PAYMENT_ID,MP1.LUMP_SUM_TRANS_ID) from DWH.[IFS].[MIXED_PAYMENT_LUMP_SUM] MP1
																	where 1=1 
																	and MP1.CODE_A='1500'
																	and MP1.PARTY_TYPE_DB is not null
																	and MP1.ActInd='Y'
																	and MP1.IsDeleted ='N'
																	and MP1.COMPANY='3001')
 union all
 select cast(SP.PAYMENT_DATE as date) as DateKey
       ,concat(SP.ORDER_ID,SP.TRANSACTION_NO) as Cash_ID
       ,SP.COMPANY as Company
	   ,isnull(SP.SUPPLIER_NAME,'NA') as Identity_Name
	   ,SP.PARTY_TYPE as Party_Type_DB
	  ,SP.[IDENTITY] as Identity_ID
	  ,Case 
	   when SP.[IDENTITY] in ('1001','1003','1005') then 'AVA' 
	   when SP.[IDENTITY] in ('3129') then 'AVE'
	   when SP.[IDENTITY] in ('FD0928') or SP.[UNSTRUCT_INFO] like '%DUTIES%'  then 'Belasting Custom tax'
	   when SP.[IDENTITY] in ('1002')    then 'NTR'
	   when SP.[IDENTITY] in ('3113')  then 'Rent'
	   when SP.[IDENTITY] in ('FD0555')   then 'Temps'
	   when SP.[IDENTITY] in ('FD0961')   then 'Salaris'
	   when SP.[IDENTITY] in ('FD0011') and SP.[UNSTRUCT_INFO] like '%VPB%' then 'Belasting VPB'
       else 'Other' end as Categorie
	  ,'NA'  as Short_Name
	  ,'-1'  as Grootboek
	  ,SP.AMOUNT*-1 as Amount
	  ,'Uitgaven' as Uit_In
	  ,SP.UNSTRUCT_INFO as Omschrijving
	  ,'SEPA' as Pay_Flow
	  from
	  [DWH].[IFS].[SEPA_PAYMENT_TRANS] SP
	  where SP.ActInd='Y'
	  and SP.IsDeleted='N'
	  --and SP.COMPANY='3001'
	  and cast(SP.PAYMENT_DATE as date)>'2018-01-01'