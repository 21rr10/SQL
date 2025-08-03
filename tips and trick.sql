-- Multi Query
/* select * from customers;


 select * from orders; */

 --We can use our own values
 /*
 select 123 as blahh;
 select 'hello' as sr; */

 --can use own columns for various purposes
 /* select *, 'student' as customer_type from customers
 */
 -- execute  a part of the query highlights the part of the query to executre
 select  * from customers
 where country = 'Germany'
