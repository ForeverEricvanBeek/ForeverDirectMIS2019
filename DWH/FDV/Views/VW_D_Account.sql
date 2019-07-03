



CREATE VIEW [FDV].[VW_D_Account]
AS

SELECT	COMPANY AS Company, 
		ACCOUNT AS Account_ID,
		DESCRIPTION as Account_Desc,
		VALID_FROM as Valid_From_Date,
		VALID_UNTIL as Valid_Until_Date,
		ACCNT_GROUP as Account_Group,
		ACCNT_TYPE as Account_Type,
		rtrim(ltrim(LOGICAL_ACCOUNT_TYPE)) as Logical_Account_Type,
		LEDG_FLAG_DB as Legder_Acount_Flag
FROM IFS.ACCOUNT
where ActInd = 'Y'


UNION
SELECT      '-1', -1 , 'Unkown' , '1965-04-26' , '1965-04-26' , -1 , 'Uknown', 'Unknown', 'U'