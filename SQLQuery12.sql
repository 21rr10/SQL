-- aggregate function
-- find the total score and total number of customers for each country

use MyDatabase
select 
	country,
	count(id) as [total customers],
	sum(score) as [total score]
from customers
group by country