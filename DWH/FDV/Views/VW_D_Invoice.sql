

CREATE VIEW [FDV].[VW_D_Invoice]
AS

Select    COMPANY AS Company
		, "IDENTITY" as Supplier_ID
		, INVOICE_ID as Invoice_ID
		, SERIES_ID as Series_ID
		, INVOICE_NO as Invoice_Number
		, INVOICE_DATE as Invoice_Date
		, ARRIVAL_DATE as Arrival_Date
		, DELIVERY_DATE as Delivery_Date
		, DUE_DATE as Due_Date		
		, PAY_TERM_BASE_DATE as Pay_Term_Base_Date
		, PAY_TERM_ID as Pay_Term
		, PL_PAY_DATE as PL_Pay_Date
		, VOUCHER_NO_REF As Voucher_ID
		, VOUCHER_TYPE_REF as Voucher_Type	
		, ACCOUNTING_YEAR_REF as Accounting_Year
		, PO_REF_NUMBER AS PO_Ref_Number
		, NET_CURR_AMOUNT as Amount
		, NET_DOM_AMOUNT as Domenestic_Amount
		, VAT_CURR_AMOUNT as VAT_Amount
		, VAT_DOM_AMOUNT as VAT_Domenestic_Amount
		, INVOICE_TYPE as Invoice_Type
		, NCF_REFERENCE as NCF_Reference
		, OBJSTATE as Invoice_Status
from IFS.INVOICE
WHERE ActInd = 'Y'
	--AND PARTY_TYPE_DB = 'SUPPLIER'
	AND year(INVOICE_DATE) > year(getdate())-3
	

UNION ALL

SELECT        '-1', '-1', -1 , '-1', '-1'  ,  '1965-04-26', '1965-04-26' , '1965-04-26' , '1965-04-26' , '1965-04-26', -1, '1965-04-26' , -1, 'Unknown', 1965, '-1' ,  NULL,NULL,NULL,NULL, 'Unknown', '-1' ,'Unknown'