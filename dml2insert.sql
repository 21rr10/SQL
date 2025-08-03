-- second method of inserting daata into the table. first was manual entry where i used inserto into tablename() values()


--inserting data useing another table from source table to target table

--step 1 sql query toselect data from the source table
--step 2 take the result aand use the insert command to insert values into the target table

/*create table persons(id INT not null,
					person_name varchar(50) not null,
					birth_date date,
					phone varchar(15) not null,
					constraint pk_persons primary key(id))*/


insert into persons(id,person_name,birth_date,phone)

select 
	id,
	first_name,
	null,
	'unknown'
from customers
select * from persons