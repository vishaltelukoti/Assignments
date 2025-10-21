declare @year int=2017;

with calender as
(
	select cast(DATEFROMPARTS(@year,1,1) as DATE) as CalenderDate
	union all
	select dateadd(day,1,CalenderDate)
	from calender where year(dateadd(day,1,CalenderDate))=@year
)
select CalenderDate as 'Date',
datepart(DAYOFYEAR,CalenderDate) as 'DayOfYear',
datepart(week,CalenderDate) as 'Week',
datepart(weekday,CalenderDate) as 'DayOfWeek',
month(CalenderDate) as 'month',
day(CalenderDate) as 'DayOfMonth'
from calender option(maxrecursion 366);
