use MyDatabase
-- find the avergae score for each country considering only customers with a score !=0 
--and return only countries with avg socre > 430

select 
	country,
	AVG(score) as [Average score]
from customers
where score !=0
group by country
having AVG(score)>430
