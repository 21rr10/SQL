--retrieve the top 3 customers with the highestscores

use MyDatabase

select  top 3 *
from customers
order by score desc