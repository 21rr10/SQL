--case statements used for data transformations
--evaluates a list of conditions and returns a value when the
--conditions is met


/*
CASE 
	When condition 1
		then result1
	When condition 2
		then result2
	else result3
END

*/
Select [Sales Category], Sum(Sales) as Total
from(
	select OrderID,Sales,
	Case
		when Sales>=50 then 'high' 
		when Sales>20 and Sales<50 then 'medium' 
		else 'low'
	end
	as [Sales Category]
	from Sales.Orders)C

Group by [Sales Category]
order by [Total] desc



--we can create new columns based on existing data in the table
-- categorize the data based on conditions and data types of the output of the result must be matching

--we can also use case statemnets to map values
--mapping is transforming the values from one form to another


--retrieve employee details with gender displayed as full text

Select EmployeeID,FirstName,LastName,Gender,
case
	when Gender='M' then 'Male'
	when Gender='F' then 'Female'
end as Genders
from Sales.Employees

--retrueve customer details wioth abbreviated country code

select FirstName,Country,
case 
	when Country='Germany' then 'GER'
	when Country='USA' then 'USA'
end
as abbreviation
from Sales.Customers



select FirstName,Country,
case Country
	when 'Germany' then 'GER'
	when 'USA' then 'USA'
	else 'N/A'
end
as abbreviation
from Sales.Customers



Select CustomerID, Score,Avg(
case
	when Score is null then 0
	else Score
end ) over() AvgScore
from sales.Customers



Select AVG(
case
	when Score is null then 0
	else Score
end) as AvgScores
from sales.Customers

select * from Sales.Orders
--Conditional Aggregation apply aggregate functions only on subsets of data that fulfill certain conditions


--count how many times each customer has made an order with sales gretaer than 30

select CustomerID,
sum(case 
	when Sales>30 then 1
	else 0
end )as Frequency, count(*) as total_orders

from Sales.Orders
group by CustomerID

select CustomerID, count(*) as freq
from Sales.Orders
group by CustomerID
