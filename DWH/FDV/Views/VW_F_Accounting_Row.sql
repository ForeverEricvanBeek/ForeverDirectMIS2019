


CREATE VIEW [FDV].[VW_F_Accounting_Row]
AS

select 

		COMPANY as Company, 
		"IDENTITY" as Party_ID, 
		PARTY_TYPE as Party_Type, 
		INVOICE_ID as Invoice_ID, 
		ITEM_ID as Item_ID, 
		ROW_ID as Row_ID, 
		CURR_CODE as Currency_Code, 
		CURR_AMOUNT as Amount, 
		DOM_AMOUNT as Domenestic_Amount, 
		CURR_AMOUNT_CREDIT as Credit_Amount, 
		CURR_AMOUNT_DEBIT as Debit_Amount, 
		DOM_AMOUNT_CREDIT as Domenestic_Credit_Amount, 
		DOM_AMOUNT_DEBIT as Domenestic_Debit_Amount, 
		CODE_A as Account_ID, 
		CODE_J as Code_J, 
		VOUCHER_TYPE as Voucher_Type, 
		VOUCHER_NO as Voucher_No, 
		ACCOUNTING_YEAR as Accounting_Year, 
		ACCOUNTING_PERIOD as Accounting_Period, 
		YEAR_PERIOD_KEY as Year_Period, 
		VOUCHER_DATE as Voucher_Date, 
		QUANTITY as Quantity, 
		POSTING_TYPE as Posting_Type, 
		OPTIONAL_CODE as BTW_Code, 
		VOUCHER_COMPANY as Voucher_Company, 
		REFERENCE as Booking_Reference
from IFS.INV_ACCOUNTING_ROW
WHERE ActInd = 'Y'
	and IsDeleted = 'N'


UNION
SELECT      '-1', '-1' , 'Unkown' , -1 , -1, -1, 'Unknown' ,  NULL, NULL, NULL, NULL, NULL, NULL  , '-1' , '-1', 'Unknown' , -1 , 1965 , 99 , 196599 , '1965-04-26' , NULL, '-1' , '-1', '-1' ,  'Unknown'