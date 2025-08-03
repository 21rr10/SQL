-- DML Delete

--remove rows from the table
/* delete from table_name 
where <condition>
*/
-- if we do not write the ocndition then all the rows of the table get deleted

--Delete all customers with an ID gretaer than 5
select * from customers

delete from customers
where id>5;

--delete all data from persons table
-- use truncate table tablename
select * from persons

delete from persons