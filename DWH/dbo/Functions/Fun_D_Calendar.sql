CREATE FUNCTION [dbo].[Fun_D_Calendar](@FromDate char(8), @Todate char(8))
RETURNS @retDate TABLE 
(
    -- Columns returned by the function

	    [DateKey] BIGINT NOT NULL
       , [FullDate] DATE NULL
       , [DateName] CHAR(11) NULL
       , [DayOfWeek] TINYINT NULL
       , [DayNameOfWeek] CHAR(10) NULL
       , [DayOfMonth] TINYINT NULL
       , [DayOfYear] SMALLINT NULL
       , [WeekdayWeekend] CHAR(7) NULL
       , [WeekOfYear] TINYINT NULL
	   , [ISOWeekOfYear] TINYINT NULL
       , [MonthName] CHAR(10) NULL
       , [MonthOfYear] TINYINT NULL
       , [IsLastDayOfMonth] CHAR(1) NULL
       , [Quarter] TINYINT NULL
       , [Year] SMALLINT NULL
       , [YearMonth] CHAR(7) NULL
       , [YearQtr] CHAR(7) NULL
	   , [IndWorkday] BIT NULL
)
AS 

BEGIN
/*---------------------------------------------------------------------------*/
/* Loads a Date Dimension                                                    */
/*---------------------------------------------------------------------------*/


DECLARE @BeginDate DATETIME
DECLARE @EndDate DATETIME
DECLARE @LastDayOfMon CHAR(1)

DECLARE @FiscalYearMonthsOffset INT   

DECLARE @DateCounter DATETIME    --Current date in loop
DECLARE @FiscalCounter DATETIME  --Fiscal Year Date in loop

SET @BeginDate = CONVERT(DATE, @FromDate, 112)
SET @EndDate = CONVERT(DATE, @Todate, 112)

-- Set this to the number of months to add to the current date to get
-- the beginning of the Fiscal year. For example, if the Fiscal year
-- begins July 1, put a 6 there.
-- Negative values are also allowed, thus if your 2010 Fiscal year
-- begins in July of 2009, put a -6.
SET @FiscalYearMonthsOffset = 6

-- Start the counter at the begin date
SET @DateCounter = @BeginDate

WHILE @DateCounter <= @EndDate
      BEGIN
            -- Calculate the current Fiscal date as an offset of
            -- the current date in the loop
            SET @FiscalCounter = DATEADD(m, @FiscalYearMonthsOffset, @DateCounter)

            -- Set value for IsLastDayOfMonth
            IF MONTH(@DateCounter) = MONTH(DATEADD(d, 1, @DateCounter))
               SET @LastDayOfMon = 'N'
            ELSE
               SET @LastDayOfMon = 'Y'  


			
            -- add a record into the date dimension table for this date
            INSERT  INTO @retDate
					(
                      [DateKey]
                    , [FullDate]
                    , [DateName]
                    , [DayOfWeek]
                    , [DayNameOfWeek]
                    , [DayOfMonth]
                    , [DayOfYear]
                    , [WeekdayWeekend]
                    , [WeekOfYear]
					, [ISOWeekOfYear]
                    , [MonthName]
                    , [MonthOfYear]
                    , [IsLastDayOfMonth]
                    , [Quarter]
                    , [Year]
                    , [YearMonth]
                    , [YearQtr]
					, [IndWorkday]
                    )
            VALUES  (
                      ( YEAR(@DateCounter) * 10000 ) + ( MONTH(@DateCounter)
                                                         * 100 )
                      + DAY(@DateCounter)  --DateKey
                    , @DateCounter -- FullDate
                    , RIGHT('00' + RTRIM(CAST(DATEPART(dd, @DateCounter) AS CHAR(2))), 2)+ '-'
					  + RIGHT('00' + RTRIM(CAST(DATEPART(mm, @DateCounter) AS CHAR(2))), 2) + '-'
					  + CAST(YEAR(@DateCounter) AS CHAR(4)) --DateName
                    , DATEPART(dw, @DateCounter) --DayOfWeek
                    , DATENAME(dw, @DateCounter) --DayNameOfWeek
                    , DATENAME(dd, @DateCounter) --DayOfMonth
                    , DATENAME(dy, @DateCounter) --DayOfYear
                    , CASE DATENAME(dw, @DateCounter)
                        WHEN 'Saturday' THEN 'Weekend'
                        WHEN 'Sunday' THEN 'Weekend'
                        ELSE 'Weekday'
                      END --WeekdayWeekend
                    , DATENAME(ww, @DateCounter) --WeekOfYear
					, DATENAME(ISO_WEEK, @DateCounter) -- ISOWeekOfYear
                    , DATENAME(mm, @DateCounter) --MonthName
                    , MONTH(@DateCounter) --MonthOfYear
                    , @LastDayOfMon --IsLastDayOfMonth
                    , DATENAME(qq, @DateCounter) --CalendarQuarter
                    , YEAR(@DateCounter) --CalendarYear
                    , CAST(YEAR(@DateCounter) AS CHAR(4)) + '-'
                      + RIGHT('00' + RTRIM(CAST(DATEPART(mm, @DateCounter) AS CHAR(2))), 2) --CalendarYearMonth
                    , CAST(YEAR(@DateCounter) AS CHAR(4)) + 'Q' + DATENAME(qq, @DateCounter) --CalendarYearQtr
					,CASE WHEN DATENAME(dw, @DateCounter) in ('Saturday','Sunday')
                        THEN 0 
						 ELSE ISNULL((Select 0 from WEB.Holiday WHERE date_key=( YEAR(@DateCounter) * 10000 ) + ( MONTH(@DateCounter)* 100 )+ DAY(@DateCounter) AND ActInd='Y'),1)
						END 

                    )

				
			IF DATENAME(dd, @DateCounter) = 1

			 INSERT  INTO @retDate
					(
                      [DateKey]
                    , [FullDate]
                    , [DateName]
                    , [DayOfWeek]
                    , [DayNameOfWeek]
                    , [DayOfMonth]
                    , [DayOfYear]
                    , [WeekdayWeekend]
                    , [WeekOfYear]
					, [ISOWeekOfYear]
                    , [MonthName]
                    , [MonthOfYear]
                    , [IsLastDayOfMonth]
                    , [Quarter]
                    , [Year]
                    , [YearMonth]
                    , [YearQtr]
					, [IndWorkday]

                    )
            VALUES  (
                      ( YEAR(@DateCounter) * 10000 ) + ( MONTH(@DateCounter)
                                                         * 100 )
                        --DateKey
                    , NULL -- FullDate
                    , NULL --DateName
                    , NULL --DayOfWeek
                    , NULL --DayNameOfWeek
                    , NULL --DayOfMonth
                    , NULL --DayOfYear
                    , NULL --WeekdayWeekend
                    , NULL --WeekOfYear
					, NULL --ISOWeekOfYear
                    , DATENAME(mm, @DateCounter) --MonthName
                    , MONTH(@DateCounter) --MonthOfYear
                    , NULL --IsLastDayOfMonth
                    , DATENAME(qq, @DateCounter) --CalendarQuarter
                    , YEAR(@DateCounter) --CalendarYear
                    , CAST(YEAR(@DateCounter) AS CHAR(4)) + '-'
                      + RIGHT('00' + RTRIM(CAST(DATEPART(mm, @DateCounter) AS CHAR(2))), 2) --CalendarYearMonth
                    , CAST(YEAR(@DateCounter) AS CHAR(4)) + 'Q' + DATENAME(qq, @DateCounter) --CalendarYearQtr
					, NULL
                    )
            -- Increment the date counter for next pass thru the loop
            SET @DateCounter = DATEADD(d, 1, @DateCounter)
      END;
	  return ;


END;