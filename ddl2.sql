-- alter 
-- add a new column called email to the prsons table

alter table persons 
add email varchar(50) not null;

select * from persons;