-- aggregate data using group by for ex: combines rows with samevalues like total score by country
-- select from where group by order by
select country, sum(score) as [total score]
from customers
group by country
