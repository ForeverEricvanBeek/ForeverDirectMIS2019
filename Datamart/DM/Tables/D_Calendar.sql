CREATE TABLE [DM].[D_Calendar] (
    [DateKey]          BIGINT        NOT NULL,
    [FullDate]         DATE          NULL,
    [DateName]         CHAR (11)     NULL,
    [DayOfWeek]        TINYINT       NULL,
    [DayNameOfWeek]    CHAR (10)     NULL,
    [DayOfMonth]       TINYINT       NULL,
    [DayOfYear]        SMALLINT      NULL,
    [WeekdayWeekend]   CHAR (7)      NULL,
    [WeekOfYear]       TINYINT       NULL,
    [ISOWeekOfYear]    TINYINT       NULL,
    [MonthName]        CHAR (10)     NULL,
    [MonthOfYear]      TINYINT       NULL,
    [IsLastDayOfMonth] CHAR (1)      NULL,
    [Quarter]          TINYINT       NULL,
    [Year]             SMALLINT      NULL,
    [YearMonth]        CHAR (7)      NULL,
    [YearQtr]          CHAR (7)      NULL,
    [IndWorkday]       BIT           NULL,
    [CheckSum]         NVARCHAR (32) NULL,
    [CheckSumSCD1]     NVARCHAR (32) NULL,
    [CheckSumSCD2]     NVARCHAR (32) NULL,
    [IsActual]         INT           NULL,
    [IsInferred]       INT           NULL,
    [IsDeleted]        INT           NULL,
    [EffectiveDate]    DATE          NULL,
    [ExpiryDate]       DATE          NULL,
    [InsertDateTime]   DATETIME2 (7) NULL,
    [UpdateDateTime]   DATETIME2 (7) NULL,
    [BatchID]          BIGINT        NULL,
    [ProcessLogID]     BIGINT        NULL,
    CONSTRAINT [PK_D_Calendar] PRIMARY KEY CLUSTERED ([DateKey] ASC) WITH (FILLFACTOR = 80)
);




GO
CREATE NONCLUSTERED INDEX [NI_D_Calendar]
    ON [DM].[D_Calendar]([DateKey] ASC, [FullDate] ASC, [DayOfYear] ASC, [WeekOfYear] ASC, [MonthOfYear] ASC, [Year] ASC) WITH (FILLFACTOR = 80);


GO
CREATE NONCLUSTERED INDEX [NI_D_Calendar_FullDate]
    ON [DM].[D_Calendar]([FullDate] ASC, [IndWorkday] ASC, [IsActual] ASC)
    INCLUDE([DateKey]);

