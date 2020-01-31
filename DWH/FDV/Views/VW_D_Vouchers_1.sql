







CREATE VIEW [FDV].[VW_D_Vouchers_1]
AS
SELECT 
            VR.VOUCHER_DATE									AS [Voucher Date] , 

			ISNULL(CONCAT(VR.VOUCHER_NO, VR.ROW_NO), '-1')	AS [Voucher_Line_ID],
			VR.ACCOUNTING_YEAR								AS [Accounting Year], 
			VR.ACCOUNTING_PERIOD							AS [Accounting Period], 
			VR.REFERENCE_SERIE								AS [Reference Serie], 
			VR.CODE_J								AS [Consol Account],
			VR.CODE_J_DESC									AS [Account Description],
			ISNULL(VR.VOUCHER_NO, '-1')						AS [Voucher_ID],
			VR.ROW_NO										AS [Row No],
			VR.VOUCHER_TYPE									 AS [Voucher Type], 
			VR.TEXT											 AS [Voucher Text],
			ISNULL(VR.ACCOUNT, '-1')						 AS [Account], 
            ISNULL(VR.REFERENCE_NUMBER, '-1') 					AS [Reference Number], -- Could be IFS Sales, Purchase and or Shop Number,
			VR.REFERENCE_SERIE				AS [Reference Code],	
			VR.QUANTITY                     AS [Quantity],
			ISNULL(VR.PARTY_TYPE_ID, '-1')				AS [Facility Code],
			VR.AMOUNT                       AS [Amount],
			VR.CURRENCY_CODE				AS [Currency],
			ISNULL(VR.TRANS_CODE, '-1')					AS [Trans Code],
			VR.YEAR_PERIOD_KEY				AS [Year Period],
			VR.CORRECTION					AS [Correction]      ,
			VR.CODE_C						AS [Product Fam Code],
			VR.CODE_C_DESC					AS [Product Fam Description],
			VR.CODE_B						AS [Sales Code]	,
			VR.CODE_B_DESC					AS [Sales Code Description],	
			ISNULL(VR.COMPANY, '-1')         AS [Company],
			VR.DEBET_AMOUNT                 AS [Debit Amount],
			VR.CREDIT_AMOUNT				AS [Cedit Amount]

FROM IFS.GEN_LED_VOUCHER GV
INNER JOIN IFS.GEN_LED_VOUCHER_ROW VR
    ON VR.COMPANY = GV.COMPANY
       AND VR.VOUCHER_TYPE = GV.VOUCHER_TYPE
       AND VR.ACCOUNTING_YEAR = GV.ACCOUNTING_YEAR
       AND VR.VOUCHER_NO = GV.VOUCHER_NO
       AND GV.ActInd = 'Y'
WHERE VR.ActInd = 'Y'
       AND GV.VOUCHER_DATE >= DATEFROMPARTS ( DATEPART(yyyy, GETDATE()) - 1, 1, 1 )