-- remove the column
--remove the column phone from the persons table

alter table persons
drop column phone;

select * from persons