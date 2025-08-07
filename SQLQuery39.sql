--date and time fucntions calculaitons
-- dateadd and datediff

--dateadd add or sub an interval

--dateadd(part,interval,date)
--dateadd(year,2,OrderDate)

use SalesDB

select OrderDate, DATEADD(year,2,OrderDate) as After2years,
				  DATEADD(month,12,OrderDate) as Aftermonth,
				  DATEADD(DAY,2,OrderDate) as Afterday
from Sales.Orders


--datediff find diff between two dates

select OrderDate,ShipDate, datediff(year,OrderDate,ShipDate) as years ,
datediff(month,OrderDate,ShipDate) mths,
datediff(day,OrderDate,ShipDate) dayss
from Sales.Orders

select * from Sales.Employees

select BirthDate , DATEDIFF(YEAR,BirthDate,GETDATE()) as age from Sales.Employees


--average shipping duratios in days for each month
select 
 Month(OrderDate)as OrderDate,
AVG(DATEDIFF(day,OrderDate,ShipDate)) as duration
from Sales.Orders
group by month(OrderDate)

--number of days between each order and previous order
 




 --IsDate() valid date ornot


 select isdate('12-02-2025')