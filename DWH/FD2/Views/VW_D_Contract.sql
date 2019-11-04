



CREATE VIEW [FD2].[VW_D_Contract]
AS
SELECT  
	CONTRACT			AS Contract_Contract
	, COMPANY			AS Contract_Company
	, DESCRIPTION		AS Contract_Description
FROM			IFS.SITE S
WHERE			S.ActInd='Y'

UNION ALL

SELECT '-1',NULL,NULL