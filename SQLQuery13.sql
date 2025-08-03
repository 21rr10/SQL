-- having clause for filtering data
-- select, from, where, group by, having ,order by
-- find the total score and total number of customers for each country with score >800
-- if you want to filter the data before the aggregation use WHERE 
--if you want to filter the data after the aggregation use HAVING

use MyDatabase


select 
	country,
	count(id) as [total customers],
	sum(score) as [total score]
from customers
group by country
having sum(score)>800
