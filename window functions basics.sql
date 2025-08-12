--window functions or analytical fucnitons

--total sales for eahc product using group by
use SalesDB

select CustomerID, SUM(Sales) as [total sales]
from Sales.Orders
group by CustomerID

select * from Sales.Products
select * from Sales.Orders

select p.ProductID,p.Product,SUM(o.Sales) as [total sales]
from Sales.Products as p inner join Sales.Orders as o
on p.ProductID = o.ProductID
group by p.ProductID,p.Product


--group by returns single row for each group(changes the granularity)
--window returns a result ofr each row( does not chnage the granularity)


--windows
 --find the total sales across all the orders
 select SUM(Sales) as total_sales 
 from Sales.Orders


 --additionally provide details such as orders id and order date
 select 
	SUM(Sales) 
 from Sales.Orders


 select OrderID, OrderDate,
 SUM(Sales)  over(partition by ProductID) as totalSalesByproduct
 from Sales.Orders

 --window function syntax  windo w function  over (partition , order,frame)
   select OrderID, OrderDate,
 SUM(Sales)  over() as totalSalesByproduct
 from Sales.Orders


  select OrderID, OrderDate,
 SUM(Sales)  over(partition by ProductID) as totalSalesByproduct
 from Sales.Orders


 select ProductID,OrderID, OrderStatus,Sales,Sum(Sales) over() as totalSales,
 SUM(Sales)  over(partition by ProductID,OrderStatus) as totalSalesByproductandStatus
 from Sales.Orders


 --orderby sort data within the window
 Select  OrderID,OrderDate, month(OrderDate) as [month],ProductID ,Sales,
 Rank() over(Partition by Month(OrderDate) Order by Sales DESC) as MOnthlySales
 from Sales.Orders



 
  Select  OrderID,OrderDate, month(OrderDate) as [month],ProductID ,Sales,
 Rank() over( Order by Sales DESC) as MOnthlySales
 from Sales.Orders

  
  ---frame clause 
  --AVG(Sales) over(partition by category order by category ROWS UNBOUNDED PRECEDING)
  --FRMAE CLAUSE INCLUDES ROWS UNBOUNDED PRECEDING




