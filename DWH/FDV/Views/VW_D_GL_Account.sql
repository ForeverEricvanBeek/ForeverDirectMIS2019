



CREATE VIEW [FDV].[VW_D_GL_Account]
AS

SELECT	

	    ISNULL(CONCAT(COMPANY, ACCOUNT), '-1') AS [Account_Key],
		ISNULL(COMPANY,  '-1')			AS [Company], 
		ACCOUNT			AS [GL_Account_ID],
		DESCRIPTION		AS [Account Desc],
		VALID_FROM		AS [Valid From Date],
		VALID_UNTIL		AS [Valid_Until_Date],
		ACCNT_GROUP		AS [Account Group],
		ACCNT_TYPE		AS [Account Type],
		rtrim(ltrim(LOGICAL_ACCOUNT_TYPE)) as [Logical Account Type],
		LEDG_FLAG_DB	AS [Legder Acount Flag] 
FROM IFS.ACCOUNT
where ActInd = 'Y'