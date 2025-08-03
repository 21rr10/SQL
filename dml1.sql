-- DML data manipulation language

-- modify data in the db

--add data --? INSERT

--1.   Mnaual entry using sql script

/*   insert into table_name( column1, column2)
values(val1,val2)    
*/

use MyDatabase

select  * from customers

/* insert into customers(id, first_name, score)
values(6, 'ANNA',NULL),
	   (7,'SAM',100);
	   */
/* 
insert into customers 
values (9,'Ritesh','India',800)
*/

insert into customers(id,first_name)
values(10, 'Sahra')