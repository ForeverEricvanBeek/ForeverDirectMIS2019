



CREATE VIEW [FDV].[VW_D_Cash_Flow]
AS
--1150 en 1250 grootboek sepa wordt in de mixed payments uitgefilterd d.m.v. filter 1150 1250
--Deze betalingen worden naderhand uit het sepa-bestand gehaald 
 select  cast(MP.LUMP_SUM_TRANS_DATE as date) as DateKey
        ,MP.COMPANY
        ,MP.IDENTITY_NAME
		,MP.PARTY_TYPE_DB
		,MP.[IDENTITY]
		,MP.SHORT_NAME
		,ISNULL(MP.CODE_A,9999) as GROOT_BOEK
		,MP.CURR_AMOUNT
		,MP.[TEXT] 
		,'MANUAL' as PAY_FLOW 
        from
		[IFS].[MIXED_PAYMENT_LUMP_SUM] MP
		where 1=1 
		and MP.ActInd='Y'
		and MP.IsDeleted ='N'
		and MP.COMPANY='3001'
		and ISNULL(MP.CODE_A,9999) not in  ('1150','1250')
		and SHORT_NAME in ('ABNA','DB')
		and cast(MP.LUMP_SUM_TRANS_DATE as date) >'2018-01-01'
		--Onderstaand is om een foute salaris uitbetaling uit te sluiten
		and concat(MP.MIXED_PAYMENT_ID,MP.LUMP_SUM_TRANS_ID) not in (Select concat(MP1.MIXED_PAYMENT_ID,MP1.LUMP_SUM_TRANS_ID) from [IFS].[MIXED_PAYMENT_LUMP_SUM] MP1
																	where 1=1 
																	and MP1.CODE_A='1500'
																	and MP1.PARTY_TYPE_DB is not null
																	and MP1.ActInd='Y'
																	and MP1.IsDeleted ='N'
																	and MP1.COMPANY='3001')

 union all
 select cast(SP.PAYMENT_DATE as date) as DateKey
       ,SP.COMPANY
	   ,SP.SUPPLIER_NAME
	   ,SP.PARTY_TYPE
	  ,SP.[IDENTITY]
	  ,'NA' as SHORT_NAME
	  ,''  as GROOT_BOEK
	  ,SP.AMOUNT*-1 as AMOUNT
	  ,SP.UNSTRUCT_INFO
	  ,'SEPA' as PAY_FLOW
	  from
	  [IFS].[SEPA_PAYMENT_TRANS] SP
	  where SP.ActInd='Y'
	  and SP.IsDeleted='N'
	  and SP.COMPANY='3001'
	  and cast(SP.PAYMENT_DATE as date)>'2018-01-01'