--Null fucntions
--replace values
--Null replace it with 40--- null(isnull,coalesce)--> 40
--replace 40 with null ----  40(nullif)-> null


--check for presence of a null value (is null) [isnull] and [is null] ios different
--[is not null]



--replace values
--isnull(value,replacement_vallue) ex isnull(shippingaddr,'unknown')
--isnull(shippingadd, billingaddr)- if shiiping address is null then it will be replaced with billing add


--isnull
select 
ShipAddress, isnull(ShipAddress,'N/A')
from Sales.Orders 

select 
ShipAddress,BillAddress, isnull(BillAddress,ShipAddress)
from Sales.Orders 

--coalesce returns the first non null value from a list
select 
ShipAddress,BillAddress, coalesce(ShipAddress,BillAddress,'N/A')
from Sales.Orders


--handle null before doing data aggregation

--15,25,null 
--find the average scores of the customers

select FirstName, Score,
avg(coalesce(score,0)) over() Avgscore,
avg(score) over() Avgscore 
from Sales.Customers

--handling nulls before doing mathematical ops


--display full anme in a single field and add 10 bonus points to each customer score

select FirstName,LastName ,
coalesce(FirstName,'')+' '+coalesce(LastName,'') as fullName,
Score,
Coalesce(Score,0)+10 as scorebonus
from Sales.Customers


--Handling nulls before joins
--handling the nulls before sorting the data

--sort the socre in asc with null appearing last
select Score,
case when Score is null then 1 else 0 end flag

from Sales.Customers
order by case when Score is null then 1 else 0 end, Score Asc









--nullif 
Select Score, nullif(Score,350) from Sales.Customers
 --use case preventing division by 0

 --find the sales price for each order by dividing the sales by the quantity

 select Quantity,Sales, Sales/nullif(Quantity,0) as salesprice from Sales.Orders



 --is not null returns true if the values is not null


 select * from Sales.Orders where ShipAddress is null

 select * from Sales.Customers where score is not null


 --used with anti joins

 --list all details for customers who have not placed any orders
 use SalesDB
 select 
c.*, o.OrderID
from Sales.Customers as c left join Sales.Orders as o 
on c.CustomerID=o.CustomerID
where o.CustomerID is null


--Data p0licy

--dont use blank spaces can use empty strings and null. to remove blank spaces use trim()
--dont use empty strings.and blank spacesto remove empty string and replace them with null using  nullif(column , '')
--use a default value 'unknown' and avoid using null,empty string and blank spaces use coalesce(column,'unknown')