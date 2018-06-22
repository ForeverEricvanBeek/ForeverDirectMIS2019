
CREATE FUNCTION [dbo].[Fun_D_Aging_Category]()
RETURNS @retDate TABLE 
(
    -- Columns returned by the function

	     [Aging_Code] int
       , [Lower_Bound] int NOT NULL
       , [Upper_Bound] int NOT NULL
       , [Months] int NULL
       , [Category_Code] nvarchar(20) NULL
	   , [Category_Description] nvarchar(35) NULL
)
AS 

BEGIN
/*---------------------------------------------------------------------------*/
/* Loads the Aging Category Dimension                                        */
/*---------------------------------------------------------------------------*/


DECLARE @MonthNr int
DECLARE @EndMonth int


SET @MonthNr = 0
SET @EndMonth = 23

-- Set Expired Value
INSERT  INTO @retDate
					(
                      [Aging_Code]
                    , [Lower_Bound]
                    , [Upper_Bound]
                    , [Months]
                    , [Category_Code]
                    , [Category_Description]
                    )
            VALUES  (
					  -99998
					, -99998
					, 0
					, NULL
					, 'Expired'
					, 'Expired'
					)


WHILE @MonthNr <= @EndMonth
      BEGIN

            -- Set value for each month
            INSERT  INTO @retDate
					(
                      [Aging_Code]
                    , [Lower_Bound]
                    , [Upper_Bound]
                    , [Months]
                    , [Category_Code]
                    , [Category_Description]
                    )
            VALUES  (
                      @MonthNr  --Aging_Code
                    , @MonthNr -- Lower Boundery
                    , @MonthNr + 1 -- Upper Boundery
                    , @MonthNr --Months
                    , CASE WHEN @MonthNr+1 between 0 and 3 THEN '0 - 3'
							WHEN @MonthNr+1 between 4 and 6 THEN '4 - 6'
							WHEN @MonthNr+1 between 7 and 12 THEN '7 - 12'
							WHEN @MonthNr+1 between 13 and 24 THEN '13 - 24'
							END -- Category Code
                     , CASE WHEN @MonthNr+1 between 0 and 3 THEN '0 < 3 months'
							WHEN @MonthNr+1 between 4 and 6 THEN '4 < 6 months'
							WHEN @MonthNr+1 between 7 and 12 THEN '7 < 12 months'
							WHEN @MonthNr+1 between 13 and 24 THEN '13 < 24 months'
							END -- Category Description
                   )
           SET @MonthNr = @MonthNr +1
      END;

-- Set value for aging above category
INSERT  INTO @retDate
					(
                      [Aging_Code]
                    , [Lower_Bound]
                    , [Upper_Bound]
                    , [Months]
                    , [Category_Code]
                    , [Category_Description]
                    )
            VALUES  (
					  99999
					, @MonthNr
					, 99999
					, NULL
					, '> 24'
					, '> 24 months'
					)

	  return ;

END;