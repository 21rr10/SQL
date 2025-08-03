-- combining data
--joins to combine the columns of the tables
--types-- inner full left and right and o combine them a key column is must
-- Basic joins [no join, left join, right join, inner join, full join

 --  No join -- return data from table without joining them

 select * from customers;
 select * from orders;

 --Inner join- only the matching rows from 2 tables;

 --Get all customers along with their orders but oly for those who have placed an order.
 Select c.id,
		c.first_name,
		o.order_date,
		o.sales
 from customers as c inner join orders as o
 on c.id=o.customer_id


 --left join
 -- all rows from left and matching from thr right
 -- Get all customers along with their orders, including those without orders.
 select c.id,
	c.first_name,
	o.order_date,
	o.sales
 from customers as c left join orders as o
 on c.id =o.customer_id

 --Right join
 -- all rows from right and matching from left table
 -- get alpl customers along with their orders including orders wihout mathcing customers

 select c.id,
	c.first_name,
	o.order_id,
	o.order_date,
	o.sales
from customers as c right join orders as o
on c.id=o.customer_id;


--Full join
--return all rows from both tables
-- Get all customers and all orders even if there is no match
 
select *
from customers as c full join orders as o
on c.id=o.customer_id


-- Left anti join
-- return rows from the left that has no match in the right
--get all customers hwo havent placed any orders
select * 
from customers as c left join orders as o
on c.id=o.customer_id
where o.customer_id is NULL

-- right anti join
-- return rows from the right table that has no match in left table
select * 
from customers right join orders
on id=customer_id
where id is null

select * 
from orders left join customers
on id=customer_id
where id is null




-- Full anti join
--return only the rows that do no macth in either tables
-- find customers without orders and orders without customers
select * 
from customers full join orders
on id =customer_id
where customer_id is null or id is null


--Get all customers along with thier orders but only for customers who have placed an order

select * from customers join orders
on id=customer_id

select * from customers full join orders
on id=customer_id
where id is not null and customer_id is not null


-- cross join
--combines every row from left with  every row from the right
-- generate all possible combinations of customers and orders
select * from customers cross join orders



--using salesdb retrieve a list of all orders, along with the related customer, prodeduct, and employee details














  


--sets to combine the rows of the tables
-- types- union, union all, except, intersect and to combine tables using set the tables must have the same no. of columns





