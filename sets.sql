-- SET
-- combine rows and number of columns in first query must be equal to number of columns in the second query 
-- as well as same data type

use SalesDB

-- Union - it returns all distinct rows from both queries and removes all the duplicates
-- combine the data from employees and customers into one table
select * from Sales.Customers
select * from Sales.Employees
select FirstName,LastName from Sales.Customers
Union 
select FirstName,LastName from Sales.Employees
order by FirstName



--Union ALL- returns all rows from bth the queries, including duplicates.
-- It is faster than union as there are no operations such as removing duplicates
-- combine the data from employees and customers into one table including duplicates
select FirstName,LastName from Sales.Customers
Union all
select FirstName,LastName from Sales.Employees
order by FirstName


--Except
--returns all distinct rows from the first query that is not found in the second query
--order of the queries affvects the final result

-- find the employees who are not custoers at the same time
select FirstName, LastName from Sales.Employees
except 
select FirstName, LastName from Sales.customers
order BY FirstName

--Intersect
--returns only the rows common in both the queries
Select FirstName, LastName from Sales.Customers
intersect
Select FirstName, LastName from Sales.Employees


--Uses cases for set operaotrs
--combine information before analyzing data


--except use cases
--delta detection
-- to identify the chnages or difference between 2 nranches of data
--data pipelines
--data completeness check
