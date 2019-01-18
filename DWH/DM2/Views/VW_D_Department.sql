
CREATE VIEW [DM2].[VW_D_Department]
AS
SELECT
		cs.department_id				AS Department_ID
		, cs.department_code			AS Department_Code
		, cs.department_description	AS Department_Description
FROM	ATIMO.costcenters as cs
WHERE cs.ActInd = 'Y'
UNION ALL
SELECT		 '-1'
			,'Unknown'
			, null