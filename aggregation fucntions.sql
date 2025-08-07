-- multiple rows input single output
-- count(*) count the rows

--sum()- summarize the values in all the rows of a column

--avg()


--max() find the hghest value in the table

--min() lowest value in the column


--total customers
select count(*) as totalCustomers from Sales.Customers

--total orders
select count(*) as totalorders,Sum(Sales) as total_sales, AVG(Sales) as Avg_Sales
from Sales.Orders

--total sales of all the orders, highest sales of all orders

select Sum(Sales) as total_sales, max(Sales) as MAx_Sales, min(Sales) as Lowest_sales
from Sales.Orders


-- find the highest socre among customers
select CustomerID, Score from Sales.Customers where Score=(

select MAX(Score) as max_Score from Sales.Customers)