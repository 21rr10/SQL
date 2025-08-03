--Update

select * from customers

/* update table_name
set column1=value1,column2=value2
where condition
*/

--change the score of customer 6 to 0
update customers 
set score=0
where id=6


--chnage the score of the customer with id 10 to 0 and update the country to UK
update customers
set score=0,country='UK'
where id=10
--update all customers with a null socre by setting their score to 0
update customers
set score=0
where score is NULL