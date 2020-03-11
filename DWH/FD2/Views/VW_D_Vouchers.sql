


CREATE VIEW [FD2].[VW_D_Vouchers]
AS
SELECT 
            VR.VOUCHER_DATE									AS [Voucher_Date] , 
			ISNULL(CONCAT(VR.VOUCHER_NO, VR.ROW_NO) , '-1')	AS [Voucher_Line_ID],
			VR.ACCOUNTING_YEAR								AS [Accounting_Year], 
			VR.ACCOUNTING_PERIOD							AS [Accounting_Period], 
			VR.REFERENCE_SERIE								AS [Reference_Serie], 
			VR.CODE_J										AS [Consol_Account],
			VR.CODE_J_DESC									AS [Account_Description],
			VR.CODE_B										AS [Cost_Account_Code],
			ISNULL(VR.VOUCHER_NO, '-1')						AS [Voucher_ID],
			VR.ROW_NO										AS [Row_No],
			VR.VOUCHER_TYPE									AS [Voucher_Type], 
			VR.TEXT											AS [Voucher_Text],
			ISNULL(VR.ACCOUNT, '-1')						AS [Account], 
            ISNULL(VR.REFERENCE_NUMBER, '-1') 				AS [Reference_Number], -- Could be IFS Sales, Purchase and or Shop Number,
			VR.REFERENCE_SERIE				AS [Reference_Code],	
			VR.QUANTITY                     AS [Quantity],
			ISNULL(VR.PARTY_TYPE_ID, '-1')				AS [Facility_Code],
			VR.AMOUNT                       AS [Amount],
			VR.CURRENCY_CODE				AS [Currency],
			ISNULL(VR.TRANS_CODE, '-1')					AS [Trans_Code],
			VR.YEAR_PERIOD_KEY				AS [Year_Period],
			VR.CORRECTION					AS [Correction]      ,
			VR.CODE_C						AS [Product_Fam_Code],
			VR.CODE_C_DESC					AS [Product_Fam_Description],
			VR.CODE_B						AS [Sales_Code]	,
			VR.CODE_B_DESC					AS [Sales_Code_Description],	
			ISNULL(VR.COMPANY, '-1')        AS [Company],
			VR.DEBET_AMOUNT                 AS [Debit_Amount],
			VR.CREDIT_AMOUNT				AS [Credit_Amount]

FROM IFS.GEN_LED_VOUCHER GV
INNER JOIN IFS.GEN_LED_VOUCHER_ROW VR
ON  VR.ACCOUNTING_YEAR = GV.ACCOUNTING_YEAR
	AND VR.COMPANY = GV.COMPANY
	AND VR.VOUCHER_TYPE = GV.VOUCHER_TYPE
	AND VR.ACCOUNTING_YEAR = GV.ACCOUNTING_YEAR
	AND VR.VOUCHER_NO = GV.VOUCHER_NO
	AND VR.ActInd = 'Y'
WHERE GV.ACCOUNTING_YEAR >= DATEPART(YEAR,GETDATE())-1
AND GV.ActInd = 'Y'
AND VR.VOUCHER_TYPE	NOT IN ('MPL', 'F')

UNION ALL
SELECT 

NULL,
'-1', 
NULL, 
NULL, 
NULL, 
NULL, 
NULL, 
NULL, 
'-1', 
NULL, 
NULL, 
NULL, 
'-1', 
'-1', 
NULL, 
NULL, 
'-1', 
NULL, 
NULL, 
NULL,  
NULL, 
NULL, 
NULL, 
NULL, 
NULL, 
NULL, 
'-1',
NULL,
NULL