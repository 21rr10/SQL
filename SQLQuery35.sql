 select * from customers;
 select * from orders;

select c.id,
	c.first_name,
	o.order_id,
	o.order_date,
	o.sales
from orders as o left join customers as c
on c.id=o.customer_id;
