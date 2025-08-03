--get the two most recent orders
use MyDatabase


select top 2 * from orders
order by order_date desc