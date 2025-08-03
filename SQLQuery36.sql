use SalesDB


--using salesdb retrieve a list of all orders, along with the related customer, prodeduct, and employee details
select * from Sales.Orders


select 
	o.OrderID,
	o.sales,
	c.FirstName,
	c.LastName,
	p.Product as productname,
	p.Price,
	e.FirstName as sales_firstname,
	e.LastName as sales_lastname
from Sales.Orders as o 
left join Sales.Customers as c
on o.CustomerID=c.CustomerID

left join Sales.Products as p
on o.ProductID=p.ProductID

left join Sales.Employees as e
on o.SalesPersonID=e.EmployeeID