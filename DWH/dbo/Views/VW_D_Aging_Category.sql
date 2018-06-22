CREATE VIEW dbo.VW_D_Aging_Category
AS
SELECT    Aging_Code
		, Lower_Bound
		, Upper_Bound
		, Months
		, Category_Code
		, Category_Description
FROM    dbo.Fun_D_Aging_Category() AS Fun_D_Aging_Category
UNION
SELECT	  -99999
		, -99999
		, -99999
		, null
		, 'Unknown'
		, 'Unknown'