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
