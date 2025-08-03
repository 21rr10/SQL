--retrieve the lowest 2 customers based on the score
use MyDatabase

select top 2 * from customers
order by score asc
