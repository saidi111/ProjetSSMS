--cleaned table--
SELECT 
  [DateKey], 
  [FullDateAlternateKey] as Date 
  --    ,[DayNumberOfWeek] 
  , 
  [EnglishDayNameOfWeek] as Day 
  --     ,[SpanishDayNameOfWeek]
  --      ,[FrenchDayNameOfWeek]
  -- ,[DayNumberOfMonth]
  --   ,[DayNumberOfYear]
  , 
  [WeekNumberOfYear] as Weeknr, 
  [EnglishMonthName] as Month, 
  LEFT([EnglishMonthName], 3) as MonthShort 
  --    ,[SpanishMonthName]
  --   ,[FrenchMonthName]
  , 
  [MonthNumberOfYear] as MonthNo, 
  [CalendarQuarter] as Quarter, 
  [CalendarYear] as Year 
  --    ,[CalendarSemester]
  --   ,[FiscalQuarter]
  --  ,[FiscalYear]
  -- ,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
9