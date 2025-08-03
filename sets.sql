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