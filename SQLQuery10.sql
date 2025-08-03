-- Nested orderby sorting where arrange using multiple columns
--country asc
select * 
from customers
order by
	country ASC,
	score DESC
	
